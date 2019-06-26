{-# LANGUAGE ExplicitForAll #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE MultiWayIf #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE TypeFamilies #-}

-- |
-- Module: Chainweb.Test.PactInProcApi
-- Copyright: Copyright © 2019 Kadena LLC.
-- License: See LICENSE file
-- Maintainer: Mark Nichols <mark@kadena.io>
-- Stability: experimental
--
-- Unit test for Pact execution via (inprocess) API  in Chainweb
--
module Chainweb.Test.Pact.PactInProcApi
( tests
) where

import Control.Concurrent.Async
import Control.Concurrent.MVar.Strict
import Control.Concurrent.STM
import Control.Exception
-- import Control.Monad.IO.Class

import Data.Aeson (object, (.=))
import qualified Data.ByteString.Lazy as BL
import qualified Data.Text as T
import qualified Data.Text.IO as T
import qualified Data.Vector as V
import qualified Data.Yaml as Y

import System.IO.Extra
import System.LogLevel

import Test.Tasty
import Test.Tasty.HUnit

-- internal modules

import Chainweb.BlockHeader
import Chainweb.BlockHeader.Genesis
import Chainweb.ChainId
import Chainweb.Logger
import qualified Chainweb.Pact.PactService as PS
import Chainweb.Pact.Service.BlockValidation
import Chainweb.Pact.Service.PactQueue (sendCloseMsg)
import Chainweb.Pact.Service.Types
import Chainweb.Pact.Types
import Chainweb.Payload.PayloadStore.InMemory
import Chainweb.Test.Pact.Utils
import Chainweb.Test.Utils
import Chainweb.Transaction
import Chainweb.Version (ChainwebVersion(..), someChainId)

testVersion :: ChainwebVersion
testVersion = Testnet00


tests :: ScheduledTest
tests = testGroupSch "Chainweb.Test.Pact.PactInProcApi"
    [ withPact testMemPoolAccess $ \reqQIO ->
        newBlockTest "new-block-0" reqQIO
    , withPact testEmptyMemPool $ \reqQIO ->
        newBlockTest "empty-block-tests" reqQIO
    ]

withPact
    :: MemPoolAccess
    -> (IO (TQueue RequestMsg) -> TestTree)
    -> TestTree
withPact mempool f = withResource startPact stopPact $ f . fmap snd
  where
    startPact = do
        mv <- newEmptyMVar
        reqQ <- atomically newTQueue
        pdb <- newPayloadDb
        a <- async (PS.initPactService testVersion cid logger reqQ mempool mv pdb)
        return (a, reqQ)

    stopPact (a, reqQ) = do
        sendCloseMsg reqQ
        cancel a

    logger = genericLogger Warn T.putStrLn
    cid = someChainId testVersion

newBlockTest :: String -> IO (TQueue RequestMsg) -> TestTree
newBlockTest label reqIO = golden label $ do
    reqQ <- reqIO
    let genesisHeader = genesisBlockHeader testVersion cid
    respVar <- newBlock noMiner genesisHeader reqQ
    goldenBytes "new-block" =<< takeMVar respVar
  where
    cid = someChainId testVersion

_localTest :: IO (TQueue RequestMsg) -> ScheduledTest
_localTest reqIO = goldenSch "local" $ do
    reqQ <- reqIO
    locVar0c <- _testLocal >>= \t -> local t reqQ
    goldenBytes "local" =<< takeMVar locVar0c

goldenBytes :: Y.ToJSON a => Exception e => String -> Either e a -> IO BL.ByteString
goldenBytes label (Left e) = assertFailure $ label ++ ": " ++ show e
goldenBytes label (Right a) = return $ BL.fromStrict $ Y.encode $ object
    [ "test-group" .= label
    , "results" .= a
    ]

_getBlockHeaders :: ChainId -> Int -> [BlockHeader]
_getBlockHeaders cid n = gbh0 : take (n - 1) (testBlockHeaders gbh0)
  where
    gbh0 = genesisBlockHeader testVersion cid

testMemPoolAccess :: MemPoolAccess
testMemPoolAccess  = MemPoolAccess
    { mpaGetBlock = getTestBlock
    , mpaSetLastHeader = \_ -> return ()
    , mpaProcessFork = \_ -> return ()
    }
  where
    getTestBlock _bHeight _bHash _bHeader = do
        moduleStr <- readFile' $ testPactFilesDir ++ "test1.pact"
        d <- adminData
        let txs = V.fromList
              [ PactTransaction (T.pack moduleStr) d
              , PactTransaction "(create-table test1.accounts)" d
              , PactTransaction "(test1.create-global-accounts)" d
              , PactTransaction "(test1.transfer \"Acct1\" \"Acct2\" 1.00)" d
              ]
        goldenTestTransactions txs


testEmptyMemPool :: MemPoolAccess
testEmptyMemPool = MemPoolAccess
    { mpaGetBlock = \_ _ _ -> goldenTestTransactions V.empty
    , mpaSetLastHeader = \_ -> return ()
    , mpaProcessFork = \_ -> return ()
    }

_testLocal :: IO ChainwebTransaction
_testLocal = do
    d <- adminData
    fmap (head . V.toList)
      $ goldenTestTransactions
      $ V.fromList [ PactTransaction "(test1.read-account \"Acct1\")" d ]
{-
cmdBlocks :: Vector (Vector String)
cmdBlocks =  V.fromList
    [ V.fromList
          [ "(test1.transfer \"Acct1\" \"Acct2\" 5.00)"
          , "(test1.transfer \"Acct1\" \"Acct2\" 6.00)" ]
    , V.fromList
          [ "(test1.transfer \"Acct1\" \"Acct2\" 10.00)"
          , "(test1.transfer \"Acct1\" \"Acct2\" 11.00)" ]
    ]
-}
