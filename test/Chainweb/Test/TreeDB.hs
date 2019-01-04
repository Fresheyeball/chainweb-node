{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE ScopedTypeVariables #-}
{-# LANGUAGE TypeFamilies #-}

-- |
-- Module: Chainweb.Test.TreeDB
-- Copyright: Copyright © 2018 Kadena LLC.
-- License: MIT
-- Maintainer: Colin Woodbury <colin@kadena.io>
-- Stability: experimental
--
-- Test the invariants of the `TreeDb` typeclass.
--
module Chainweb.Test.TreeDB ( treeDbInvariants, RunStyle(..) ) where

import Control.Exception (SomeException(..), try)
import Control.Lens (over, to, view)

import Data.Bool (bool)
import Data.Foldable (foldlM)
import Data.Generics.Wrapped (_Unwrapped)
import Data.List (sort, sortOn)
import Data.Maybe (isJust)
import qualified Data.Set as S
import Data.Tree (Tree(..))

import Numeric.Natural (Natural)

import Streaming (Of(..), Stream)
import qualified Streaming.Prelude as P

import Test.Tasty
import Test.Tasty.QuickCheck

-- internal modules

import Chainweb.BlockHeader
import Chainweb.Test.Utils
import Chainweb.TreeDB
import Chainweb.Utils (len)


-- | Used with `schedule` to define how these properties should be tested.
--
data RunStyle = Sequential | Parallel

-- | PR #157 introduces property-based testing of `TreeDb` invariants. These
-- properties create a new DB from scratch upon each run. One `TreeDb` instance,
-- `RemoteDb` requires spawning a full Warp `Application` for this to occur.
--
-- Unfortunately, the rapid spawning, requesting, and closing of these servers
-- seems to occasionally create issues with dangling sockets in the underlying
-- system. This can hang the tests, so `schedule` here allows us to optionally
-- thread all these properties sequentially, so that they won't be ran in
-- parallel as is usual for Tasty-based tests.
--
schedule :: RunStyle -> String -> TestTree -> TestTree
schedule Parallel _ = id
schedule Sequential patt = after AllFinish patt

treeDbInvariants
    :: (TreeDb db, DbEntry db ~ BlockHeader)
    -- | Given a generic entry, should yield a database for testing, and then
    -- safely close it after use.
    => (DbEntry db -> (db -> IO Bool) -> IO Bool)
    -> RunStyle
    -> TestTree
treeDbInvariants f rs = testGroup "TreeDb Invariants"
    [ testGroup "Properties"
        [ testGroup "Shape"
            [ testProperty "Conversion to and from Tree" $ treeIso_prop f
            , schedule rs "Conversion to and from Tree" $
                  testProperty "Root node is its own parent" $ rootParent_prop f
            ]
        , testGroup "Basic Streaming"
              [ testGroup "Self-reported Stream Length"
                    [ schedule rs "Root node is its own parent" $ testProperty "keys"
                          $ streamCount_prop f (\db -> keys db Nothing Nothing Nothing Nothing)
                    , schedule rs "keys" $ testProperty "entries"
                          $ streamCount_prop f (\db -> entries db Nothing Nothing Nothing Nothing)
                    , schedule rs "entries" $ testProperty "leafEntries"
                          $ streamCount_prop f (\db -> leafEntries db Nothing Nothing Nothing Nothing)
                    , schedule rs "leafEntries" $ testProperty "leafKeys"
                          $ streamCount_prop f (\db -> leafKeys db Nothing Nothing Nothing Nothing)
                    , schedule rs "leafKeys" $ testProperty "branchKeys"
                          $ streamCount_prop f (\db -> branchKeys db Nothing Nothing Nothing Nothing mempty mempty)
                    , schedule rs "branchKeys" $ testProperty "branchEntries"
                          $ streamCount_prop f (\db -> branchEntries db Nothing Nothing Nothing Nothing mempty mempty)
                    ]
              , testGroup "Misc."
                    [ schedule rs "branchEntries" $
                          testProperty "All leaves are properly fetched" $ leafFetch_prop f
                    ]
              ]
        , testGroup "Behaviour"
            [ schedule rs "All leaves are properly fetched" $
                  testProperty "Reinsertion is a no-op" $ reinsertion_prop f
            , schedule rs "Reinsertion is a no-op" $
                  testProperty "Cannot manipulate old nodes" $ handOfGod_prop f
            , schedule rs "Cannot manipulate old nodes" $
                  testProperty "Leaves are streamed in ascending order" $ leafOrder_prop f
            , schedule rs "Leaves are streamed in ascending order" $
                  testProperty "Entries are streamed in ascending order" $ entryOrder_prop f
            , schedule rs "Entries are streamed in ascending order" $
                  testProperty "maxRank reports correct height" $ maxRank_prop f
            ]
        ]
    ]

-- | Insert the contents of any `Foldable` into a `TreeDb` "in place".
--
fromFoldable :: (TreeDb db, Foldable f) => db -> f (DbEntry db) -> IO ()
fromFoldable db = insertStream db . P.each

-- | Sugar for producing a populated `TreeDb` from a `Tree`.
--
withTreeDb :: TreeDb db => (DbEntry db -> (db -> IO a) -> r) -> Tree (DbEntry db) -> (db -> IO a) -> r
withTreeDb f t g = f (rootLabel t) $ \db -> fromFoldable db t *> g db

-- | Property: There must exist an isomorphism between any `Tree BlockHeader`
-- and a `TreeDb`.
--
treeIso_prop
    :: (TreeDb db, DbEntry db ~ BlockHeader)
    => (BlockHeader -> (db -> IO Bool) -> IO Bool) -> SparseTree -> Property
treeIso_prop f (SparseTree t) = ioProperty . withTreeDb f t $ \db -> do
    t' <- toTree db
    pure $ normalizeTree t == normalizeTree t'

-- | Property: Reinserting any amount of `BlockHeader`s that already exist in
-- the `TreeDb` must have no effect (no overwrites, no exceptions, etc.)
--
-- In particular, the persistence function `restore` assumes this property to be
-- true, and likewise `persist` will also write the genesis block to file,
-- assuming `restore` will ignore it upon read.
--
reinsertion_prop
    :: (TreeDb db, DbEntry db ~ BlockHeader)
    => (BlockHeader -> (db -> IO Bool) -> IO Bool) -> SparseTree -> Property
reinsertion_prop f (SparseTree t) = ioProperty . withTreeDb f t $ \db -> do
    fromFoldable db t
    l <- P.length_ $ entries db Nothing Nothing Nothing Nothing
    pure $ l == length t

-- | Property: It must be impossible to fetch an existing header, alter its
-- contents, and reinsert it into the Tree.
--
-- Even if no exception is thrown due to validation failure, the "rewritten"
-- block should not have actually changed.
--
handOfGod_prop
    :: (TreeDb db, DbEntry db ~ BlockHeader)
    => (BlockHeader -> (db -> IO Bool) -> IO Bool) -> SparseTree -> Property
handOfGod_prop f (SparseTree t) = ioProperty . withTreeDb f t $ \db -> do
    h <- maxHeader db
    try (insert db (over (blockNonce . _Unwrapped) succ h)) >>= \case
        Left (_ :: SomeException) -> pure True
        Right _ -> do
            h' <- maxHeader db
            pure $ h == h'

-- | Property: The root node's parent must always be itself.
--
rootParent_prop
    :: (TreeDb db, DbEntry db ~ BlockHeader)
    => (BlockHeader -> (db -> IO Bool) -> IO Bool) -> SparseTree -> Property
rootParent_prop f (SparseTree t) = ioProperty . withTreeDb f t $ \db -> do
    r <- root db
    pure $ _blockParent r == _blockHash r

-- | Property: A `Stream` should properly self-report the amount of items that
-- were streamed at the end.
--
streamCount_prop
    :: (TreeDb db, DbEntry db ~ BlockHeader)
    => (BlockHeader -> (db -> IO Bool) -> IO Bool)
    -> (db -> Stream (Of a) IO (Natural, Eos))
    -> SparseTree
    -> Property
streamCount_prop f g (SparseTree t) = ioProperty . withTreeDb f t $ \db -> do
    (ls :> (n, _)) <- P.toList $ g db
    pure $ len ls == n

-- | Property: A `TreeDb` must be able to yield all of its leaves properly.
--
leafFetch_prop
    :: (TreeDb db, DbEntry db ~ BlockHeader)
    => (BlockHeader -> (db -> IO Bool) -> IO Bool) -> SparseTree -> Property
leafFetch_prop f (SparseTree t) = ioProperty . withTreeDb f t $ \db -> do
    ls <- P.toList_ $ leafEntries db Nothing Nothing Nothing Nothing
    pure $ sort ls == sort (treeLeaves t)

-- | Property: `leafEntries` streams leaves in ascending order of `BlockHeight`.
--
leafOrder_prop
    :: (TreeDb db, DbEntry db ~ BlockHeader)
    => (BlockHeader -> (db -> IO Bool) -> IO Bool) -> SparseTree -> Property
leafOrder_prop f (SparseTree t) = ioProperty . withTreeDb f t $ \db -> do
    ls <- P.toList_ $ leafEntries db Nothing Nothing Nothing Nothing
    pure $ ls == sortOn _blockHeight ls

-- | Property: `maxRank` correctly reports the `BlockHeight` of the highest node
-- in the Tree.
--
maxRank_prop
    :: (TreeDb db, DbEntry db ~ BlockHeader)
    => (BlockHeader -> (db -> IO Bool) -> IO Bool) -> SparseTree -> Property
maxRank_prop f (SparseTree t) = ioProperty . withTreeDb f t $ \db -> do
    r <- maxRank db
    let h = view (_Unwrapped . to fromIntegral) . maximum . map _blockHeight $ treeLeaves t
    pure $ r == h

-- | Property: No child is streamed before its parent.
--
entryOrder_prop
    :: (TreeDb db, DbEntry db ~ BlockHeader)
    => (BlockHeader -> (db -> IO Bool) -> IO Bool) -> SparseTree -> Property
entryOrder_prop f (SparseTree t) = ioProperty . withTreeDb f t $ \db -> do
    hs <- P.toList_ $ entries db Nothing Nothing Nothing Nothing
    pure . isJust $ foldlM g S.empty hs
  where
    g acc h = let acc' = S.insert (_blockHash h) acc
              in bool Nothing (Just acc') $ S.member (_blockParent h) acc'
