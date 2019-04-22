{-# LANGUAGE QuasiQuotes #-}

-- This module is auto-generated. DO NOT EDIT IT MANUALLY.

module Chainweb.BlockHeader.Genesis.Testnet01Payload ( payloadBlock ) where

import Data.Text.Encoding (encodeUtf8)
import Data.Yaml (decodeThrow)

import NeatInterpolation (text)

import Chainweb.Payload (PayloadWithOutputs)
import Chainweb.Utils (fromJuste)

payloadBlock :: PayloadWithOutputs
payloadBlock = fromJuste $ decodeThrow $ encodeUtf8 [text|
transactions:
- - eyJoYXNoIjoiMjVmMWI4ZTU1ODc0ZjIzNTBmMmZkNTViMGJhMzNiNGMyM2JjZWZiYmQ5MzBhYmI1MmQ1YmE2MGEzMDZmZjlmM2VjZWIxYjA0MGY4MDg3ZWNmNmIwNTk2NDFkZWMwMDIwZjMyYTdhNjBlMGUwMDQ0OWQzYzBlYmU4ZjRkMGE0ZjgiLCJzaWdzIjpbXSwiY21kIjoie1wicGF5bG9hZFwiOntcImV4ZWNcIjp7XCJkYXRhXCI6bnVsbCxcImNvZGVcIjpcIihtb2R1bGUgY29pbiBHT1ZFUk5BTkNFXFxuXFxuICBcXFwiJ2NvaW4nIHJlcHJlc2VudHMgdGhlIEthZGVuYSBDb2luIENvbnRyYWN0LlxcXCJcXG5cXG5cXG4gIDsgKGltcGxlbWVudHMgY29pbi1zaWcpXFxuICA7IChpbXBsZW1lbnRzIHNwdi1zaWcpXFxuXFxuICA7IC0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tXFxuICA7IFNjaGVtYXMgYW5kIFRhYmxlc1xcbiAgOyAtLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLVxcblxcbiAgKGRlZnNjaGVtYSBjb2luLXNjaGVtYVxcbiAgICBiYWxhbmNlOmRlY2ltYWxcXG4gICAgZ3VhcmQ6Z3VhcmRcXG4gICAgKVxcbiAgKGRlZnRhYmxlIGNvaW4tdGFibGU6e2NvaW4tc2NoZW1hfSlcXG5cXG4gIChkZWZzY2hlbWEgY3JlYXRlcy1zY2hlbWFcXG4gICAgZXhpc3RzOnN0cmluZ1xcbiAgICApXFxuICAoZGVmdGFibGUgY3JlYXRlcy10YWJsZTp7Y3JlYXRlcy1zY2hlbWF9KVxcblxcbiAgOyAtLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLVxcbiAgOyBDYXBhYmlsaXRpZXNcXG4gIDsgLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS1cXG5cXG4gIChkZWZjYXAgR09WRVJOQU5DRSAoKSAoZW5mb3JjZSBmYWxzZSBcXFwidXBncmFkZSBkaXNhYmxlZFxcXCIpKVxcblxcbiAgKGRlZmNhcCBUUkFOU0ZFUiAoKVxcbiAgICBcXFwiQXV0b25vbW91cyBjYXBhYmlsaXR5IHRvIHByb3RlY3QgZGViaXQgYW5kIGNyZWRpdCBhY3Rpb25zXFxcIlxcbiAgICB0cnVlKVxcblxcbiAgKGRlZmNhcCBDT0lOQkFTRSAoKVxcbiAgICBcXFwiTWFnaWMgY2FwYWJpbGl0eSB0byBwcm90ZWN0IG1pbmVyIHJld2FyZFxcXCJcXG4gICAgdHJ1ZSlcXG5cXG4gIChkZWZjYXAgRlVORF9UWCAoKVxcbiAgICBcXFwiTWFnaWMgY2FwYWJpbGl0eSB0byBleGVjdXRlIGdhcyBwdXJjaGFzZXMgYW5kIHJlZGVtcHRpb25zXFxcIlxcbiAgICB0cnVlKVxcblxcbiAgKGRlZmNhcCBBQ0NPVU5UX0dVQVJEIChhY2NvdW50KVxcbiAgICBcXFwiTG9va3VwIGFuZCBlbmZvcmNlIGd1YXJkcyBhc3NvY2lhdGVkIHdpdGggYW4gYWNjb3VudFxcXCJcXG4gICAgKHdpdGgtcmVhZCBjb2luLXRhYmxlIGFjY291bnQgeyBcXFwiZ3VhcmRcXFwiIDo9IGcgfVxcbiAgICAgIChlbmZvcmNlLWd1YXJkIGcpKSlcXG5cXG4gIChkZWZjYXAgR09WRVJOQU5DRSAoKVxcbiAgICAoZW5mb3JjZSBmYWxzZSBcXFwiRW5mb3JjZSBub24tdXBncmFkZWFiaWxpdHkgZXhjZXB0IGluIHRoZSBjYXNlIG9mIGEgaGFyZCBmb3JrXFxcIikpXFxuXFxuICA7IC0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tXFxuICA7IENvaW4gQ29udHJhY3RcXG4gIDsgLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS1cXG5cXG4gIChkZWZ1biBidXktZ2FzOnN0cmluZyAoc2VuZGVyOnN0cmluZyB0b3RhbDpkZWNpbWFsKVxcbiAgICBAZG9jIFxcXCJUaGlzIGZ1bmN0aW9uIGRlc2NyaWJlcyB0aGUgbWFpbiAnZ2FzIGJ1eScgb3BlcmF0aW9uLiBBdCB0aGlzIHBvaW50IFxcXFxcXG4gICAgXFxcXE1JTkVSIGhhcyBiZWVuIGNob3NlbiBmcm9tIHRoZSBwb29sLCBhbmQgd2lsbCBiZSB2YWxpZGF0ZWQuIFRoZSBTRU5ERVIgICBcXFxcXFxuICAgIFxcXFxvZiB0aGlzIHRyYW5zYWN0aW9uIGhhcyBzcGVjaWZpZWQgYSBnYXMgbGltaXQgTElNSVQgKG1heGltdW0gZ2FzKSBmb3IgICAgXFxcXFxcbiAgICBcXFxcdGhlIHRyYW5zYWN0aW9uLCBhbmQgdGhlIHByaWNlIGlzIHRoZSBzcG90IHByaWNlIG9mIGdhcyBhdCB0aGF0IHRpbWUuICAgIFxcXFxcXG4gICAgXFxcXFRoZSBnYXMgYnV5IHdpbGwgYmUgZXhlY3V0ZWQgcHJpb3IgdG8gZXhlY3V0aW5nIFNFTkRFUidzIGNvZGUuXFxcIlxcblxcbiAgICBAbW9kZWwgWyhwcm9wZXJ0eSAoPiB0b3RhbCAwLjApKV1cXG5cXG4gICAgKHJlcXVpcmUtY2FwYWJpbGl0eSAoRlVORF9UWCkpXFxuICAgICh3aXRoLWNhcGFiaWxpdHkgKFRSQU5TRkVSKVxcbiAgICAgICAoZGViaXQgc2VuZGVyIHRvdGFsKSlcXG4gICAgKVxcblxcbiAgKGRlZnVuIHJlZGVlbS1nYXM6c3RyaW5nIChtaW5lcjpzdHJpbmcgbWluZXItZ3VhcmQ6Z3VhcmQgc2VuZGVyOnN0cmluZyB0b3RhbDpkZWNpbWFsKVxcbiAgICBAZG9jIFxcXCJUaGlzIGZ1bmN0aW9uIGRlc2NyaWJlcyB0aGUgbWFpbiAncmVkZWVtIGdhcycgb3BlcmF0aW9uLiBBdCB0aGlzICAgIFxcXFxcXG4gICAgXFxcXHBvaW50LCB0aGUgU0VOREVSJ3MgdHJhbnNhY3Rpb24gaGFzIGJlZW4gZXhlY3V0ZWQsIGFuZCB0aGUgZ2FzIHRoYXQgICAgICBcXFxcXFxuICAgIFxcXFx3YXMgY2hhcmdlZCBoYXMgYmVlbiBjYWxjdWxhdGVkLiBNSU5FUiB3aWxsIGJlIGNyZWRpdGVkIHRoZSBnYXMgY29zdCwgICAgXFxcXFxcbiAgICBcXFxcYW5kIFNFTkRFUiB3aWxsIHJlY2VpdmUgdGhlIHJlbWFpbmRlciB1cCB0byB0aGUgbGltaXRcXFwiXFxuXFxuICAgIEBtb2RlbCBbKHByb3BlcnR5ICg-IHRvdGFsIDAuMCkpXVxcblxcbiAgICAocmVxdWlyZS1jYXBhYmlsaXR5IChGVU5EX1RYKSlcXG4gICAgKHdpdGgtY2FwYWJpbGl0eSAoVFJBTlNGRVIpXFxuICAgICAgKGxldCogKChmZWUgKHJlYWQtZGVjaW1hbCBcXFwiZmVlXFxcIikpXFxuICAgICAgICAgICAgIChyZWZ1bmQgKC0gdG90YWwgZmVlKSkpXFxuICAgICAgICAoZW5mb3JjZSAoPj0gcmVmdW5kIDAuMCkgXFxcImZlZSBtdXN0IGJlIGxlc3MgdGhhbiBvciBlcXVhbCB0byB0b3RhbFxcXCIpXFxuXFxuXFxuICAgICAgICA7IGRpcmVjdGx5IHVwZGF0ZSBpbnN0ZWFkIG9mIGNyZWRpdFxcbiAgICAgICAgKGlmICg-IHJlZnVuZCAwLjApXFxuICAgICAgICAgICh3aXRoLXJlYWQgY29pbi10YWJsZSBzZW5kZXJcXG4gICAgICAgICAgICB7IFxcXCJiYWxhbmNlXFxcIiA6PSBiYWxhbmNlIH1cXG4gICAgICAgICAgICAodXBkYXRlIGNvaW4tdGFibGUgc2VuZGVyXFxuICAgICAgICAgICAgICB7IFxcXCJiYWxhbmNlXFxcIjogKCsgYmFsYW5jZSByZWZ1bmQpIH0pXFxuICAgICAgICAgICAgKVxcbiAgICAgICAgICBcXFwibm9vcFxcXCIpXFxuICAgICAgICAoY3JlZGl0IG1pbmVyIG1pbmVyLWd1YXJkIGZlZSlcXG4gICAgICAgICkpXFxuICAgIClcXG5cXG4gIChkZWZ1biBjcmVhdGUtYWNjb3VudDpzdHJpbmcgKGFjY291bnQ6c3RyaW5nIGd1YXJkOmd1YXJkKVxcbiAgICBAZG9jIFxcXCJDcmVhdGUgYW4gYWNjb3VudCBmb3IgQUNDT1VOVCwgd2l0aCBBQ0NPVU5UIGFzIGEgZnVuY3Rpb24gb2YgR1VBUkRcXFwiXFxuICAgIChpbnNlcnQgY29pbi10YWJsZSBhY2NvdW50XFxuICAgICAgeyBcXFwiYmFsYW5jZVxcXCIgOiAwLjBcXG4gICAgICAsIFxcXCJndWFyZFxcXCIgICA6IGd1YXJkXFxuICAgICAgfSlcXG4gICAgKVxcblxcbiAgKGRlZnVuIGFjY291bnQtYmFsYW5jZTpkZWNpbWFsIChhY2NvdW50OnN0cmluZylcXG4gICAgQGRvYyBcXFwiUXVlcnkgYWNjb3VudCBiYWxhbmNlIGZvciBBQ0NPVU5UXFxcIlxcbiAgICAod2l0aC1jYXBhYmlsaXR5IChBQ0NPVU5UX0dVQVJEIGFjY291bnQpXFxuICAgICAgKHdpdGgtcmVhZCBjb2luLXRhYmxlIGFjY291bnRcXG4gICAgICAgIHsgXFxcImJhbGFuY2VcXFwiIDo9IGJhbGFuY2UgfVxcbiAgICAgICAgYmFsYW5jZVxcbiAgICAgICAgKSlcXG4gICAgKVxcblxcbiAgKGRlZnVuIHRyYW5zZmVyOnN0cmluZyAoc2VuZGVyOnN0cmluZyByZWNlaXZlcjpzdHJpbmcgcmVjZWl2ZXItZ3VhcmQ6Z3VhcmQgYW1vdW50OmRlY2ltYWwpXFxuICAgIEBkb2MgXFxcIlRyYW5zZmVyIGJldHdlZW4gYWNjb3VudHMgU0VOREVSIGFuZCBSRUNFSVZFUiBvbiB0aGUgc2FtZSBjaGFpbi4gICAgXFxcXFxcbiAgICBcXFxcVGhpcyBmYWlscyBpZiBib3RoIGFjY291bnRzIGRvIG5vdCBleGlzdC4gQ3JlYXRlLW9uLXRyYW5zZmVyIGNhbiBiZSAgICAgIFxcXFxcXG4gICAgXFxcXGhhbmRsZWQgYnkgc2VuZGluZyBpbiBhIGNyZWF0ZSBjb21tYW5kIGluIHRoZSBzYW1lIHR4LlxcXCJcXG5cXG4gICAgQG1vZGVsIFsocHJvcGVydHkgKD4gYW1vdW50IDAuMCkpXVxcblxcbiAgICAod2l0aC1jYXBhYmlsaXR5IChUUkFOU0ZFUilcXG4gICAgICAoZGViaXQgc2VuZGVyIGFtb3VudClcXG4gICAgICAoY3JlZGl0IHJlY2VpdmVyIHJlY2VpdmVyLWd1YXJkIGFtb3VudCkpXFxuICAgIClcXG5cXG4gIChkZWZ1biBjb2luYmFzZTpzdHJpbmcgKGFkZHJlc3M6c3RyaW5nIGFkZHJlc3MtZ3VhcmQ6Z3VhcmQgYW1vdW50OmRlY2ltYWwpXFxuICAgIEBkb2MgXFxcIk1pbnQgc29tZSBudW1iZXIgb2YgdG9rZW5zIGFuZCBhbGxvY2F0ZSB0aGVtIHRvIHNvbWUgYWRkcmVzc1xcXCJcXG4gICAgKHJlcXVpcmUtY2FwYWJpbGl0eSAoQ09JTkJBU0UpKVxcbiAgICAod2l0aC1jYXBhYmlsaXR5IChUUkFOU0ZFUilcXG4gICAgIChjcmVkaXQgYWRkcmVzcyBhZGRyZXNzLWd1YXJkIGFtb3VudCkpKVxcblxcbiAgKGRlZnBhY3QgZnVuZC10eCAoc2VuZGVyIG1pbmVyIG1pbmVyLWd1YXJkIHRvdGFsKVxcbiAgICBAZG9jIFxcXCInZnVuZC10eCcgaXMgYSBzcGVjaWFsIHBhY3QgdG8gZnVuZCBhIHRyYW5zYWN0aW9uIGluIHR3byBzdGVwcywgICAgIFxcXFxcXG4gICAgXFxcXHdpdGggdGhlIGFjdHVhbCB0cmFuc2FjdGlvbiB0cmFuc3BpcmluZyBpbiB0aGUgbWlkZGxlOiAgICAgICAgICAgICAgICAgICBcXFxcXFxuICAgIFxcXFwgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgXFxcXFxcbiAgICBcXFxcICAxKSBBIGJ1eWluZyBwaGFzZSwgZGViaXRpbmcgdGhlIHNlbmRlciBmb3IgdG90YWwgZ2FzIGFuZCBmZWUsIHlpZWxkaW5nIFxcXFxcXG4gICAgXFxcXCAgICAgVFhfTUFYX0NIQVJHRS4gICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICBcXFxcXFxuICAgIFxcXFwgIDIpIEEgc2V0dGxlbWVudCBwaGFzZSwgcmVzdW1pbmcgVFhfTUFYX0NIQVJHRSwgYW5kIGFsbG9jYXRpbmcgdG8gdGhlICAgXFxcXFxcbiAgICBcXFxcICAgICBjb2luYmFzZSBhY2NvdW50IGZvciB1c2VkIGdhcyBhbmQgZmVlLCBhbmQgc2VuZGVyIGFjY291bnQgZm9yIGJhbC0gIFxcXFxcXG4gICAgXFxcXCAgICAgYW5jZSAodW51c2VkIGdhcywgaWYgYW55KS5cXFwiXFxuXFxuICAgIChzdGVwIChidXktZ2FzIHNlbmRlciB0b3RhbCkpXFxuICAgIChzdGVwIChyZWRlZW0tZ2FzIG1pbmVyIG1pbmVyLWd1YXJkIHNlbmRlciB0b3RhbCkpXFxuICAgIClcXG5cXG4gIDsgLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS1cXG4gIDsgSGVscGVyc1xcbiAgOyAtLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLVxcblxcbiAgKGRlZnVuIGRlYml0OnN0cmluZyAoYWNjb3VudDpzdHJpbmcgYW1vdW50OmRlY2ltYWwpXFxuICAgIEBkb2MgXFxcIkRlYml0IEFNT1VOVCBmcm9tIEFDQ09VTlQgYmFsYW5jZSByZWNvcmRpbmcgREFURSBhbmQgREFUQVxcXCJcXG5cXG4gICAgQG1vZGVsIFsocHJvcGVydHkgKD4gYW1vdW50IDAuMCkpXVxcblxcbiAgICAocmVxdWlyZS1jYXBhYmlsaXR5IChUUkFOU0ZFUikpXFxuICAgICh3aXRoLWNhcGFiaWxpdHkgKEFDQ09VTlRfR1VBUkQgYWNjb3VudClcXG4gICAgICAod2l0aC1yZWFkIGNvaW4tdGFibGUgYWNjb3VudFxcbiAgICAgICAgeyBcXFwiYmFsYW5jZVxcXCIgOj0gYmFsYW5jZSB9XFxuXFxuICAgICAgICAoZW5mb3JjZSAoPD0gYW1vdW50IGJhbGFuY2UpIFxcXCJJbnN1ZmZpY2llbnQgZnVuZHNcXFwiKVxcbiAgICAgICAgKHVwZGF0ZSBjb2luLXRhYmxlIGFjY291bnRcXG4gICAgICAgICAgeyBcXFwiYmFsYW5jZVxcXCIgOiAoLSBiYWxhbmNlIGFtb3VudCkgfVxcbiAgICAgICAgICApKSlcXG4gICAgKVxcblxcblxcbiAgKGRlZnVuIGNyZWRpdDpzdHJpbmcgKGFjY291bnQ6c3RyaW5nIGd1YXJkOmd1YXJkIGFtb3VudDpkZWNpbWFsKVxcbiAgICBAZG9jIFxcXCJDcmVkaXQgQU1PVU5UIHRvIEFDQ09VTlQgYmFsYW5jZSByZWNvcmRpbmcgREFURSBhbmQgREFUQVxcXCJcXG5cXG4gICAgQG1vZGVsIFsocHJvcGVydHkgKD4gYW1vdW50IDAuMCkpXVxcblxcbiAgICAocmVxdWlyZS1jYXBhYmlsaXR5IChUUkFOU0ZFUikpXFxuICAgICAgKHdpdGgtZGVmYXVsdC1yZWFkIGNvaW4tdGFibGUgYWNjb3VudFxcbiAgICAgICAgeyBcXFwiYmFsYW5jZVxcXCIgOiAwLjAsIFxcXCJndWFyZFxcXCIgOiBndWFyZCB9XFxuICAgICAgICB7IFxcXCJiYWxhbmNlXFxcIiA6PSBiYWxhbmNlLCBcXFwiZ3VhcmRcXFwiIDo9IHJldGcgfVxcbiAgICAgICAgICA7IHdlIGRvbid0IHdhbnQgdG8gb3ZlcndyaXRlIGFuIGV4aXN0aW5nIGd1YXJkIHdpdGggdGhlIHVzZXItc3VwcGxpZWQgb25lXFxuICAgICAgICAoZW5mb3JjZSAoPSByZXRnIGd1YXJkKSBcXFwiYWNjb3VudCBndWFyZHMgZG8gbm90IG1hdGNoXFxcIilcXG5cXG4gICAgICAgICh3cml0ZSBjb2luLXRhYmxlIGFjY291bnRcXG4gICAgICAgICAgeyBcXFwiYmFsYW5jZVxcXCIgOiAoKyBiYWxhbmNlIGFtb3VudClcXG4gICAgICAgICAgLCBcXFwiZ3VhcmRcXFwiICAgOiByZXRnXFxuICAgICAgICAgIH0pKVxcbiAgICAgIClcXG5cXG4gIChkZWZ1biBkZWxldGUtY29pbiAoZGVsZXRlLWFjY291bnQgY3JlYXRlLWNoYWluLWlkIGNyZWF0ZS1hY2NvdW50IGNyZWF0ZS1hY2NvdW50LWd1YXJkIHF1YW50aXR5KVxcbiAgICAod2l0aC1jYXBhYmlsaXR5IChUUkFOU0ZFUilcXG4gICAgICAoZGViaXQgZGVsZXRlLWFjY291bnQgcXVhbnRpdHkpXFxuICAgICAgeyBcXFwiY3JlYXRlLWNoYWluLWlkXFxcIjogY3JlYXRlLWNoYWluLWlkXFxuICAgICAgLCBcXFwiY3JlYXRlLWFjY291bnRcXFwiOiBjcmVhdGUtYWNjb3VudFxcbiAgICAgICwgXFxcImNyZWF0ZS1hY2NvdW50LWd1YXJkXFxcIjogY3JlYXRlLWFjY291bnQtZ3VhcmRcXG4gICAgICAsIFxcXCJxdWFudGl0eVxcXCI6IHF1YW50aXR5XFxuICAgICAgLCBcXFwiZGVsZXRlLWNoYWluLWlkXFxcIjogKGF0IFxcXCJjaGFpbi1pZFxcXCIgKGNoYWluLWRhdGEpKVxcbiAgICAgICwgXFxcImRlbGV0ZS1hY2NvdW50XFxcIjogZGVsZXRlLWFjY291bnRcXG4gICAgICAsIFxcXCJkZWxldGUtdHgtaGFzaFxcXCI6ICh0eC1oYXNoKVxcbiAgICAgIH0pKVxcblxcbiAgKGRlZnVuIGNyZWF0ZS1jb2luIChwcm9vZilcXG4gICAgKGxldCAoKG91dHB1dHMgKGF0IFxcXCJvdXRwdXRzXFxcIiAodmVyaWZ5LXNwdiBcXFwiVFhPVVRcXFwiIHByb29mKSkpKVxcbiAgICAgIChlbmZvcmNlICg9IDEgKGxlbmd0aCBvdXRwdXRzKSkgXFxcIm9ubHkgb25lIHR4IGluIG91dHB1dHNcXFwiKVxcbiAgICAgIChiaW5kIChhdCAwIG91dHB1dHMpXFxuICAgICAgICB7IFxcXCJjcmVhdGUtY2hhaW4taWRcXFwiOj0gY3JlYXRlLWNoYWluLWlkXFxuICAgICAgICAsIFxcXCJjcmVhdGUtYWNjb3VudFxcXCIgOj0gY3JlYXRlLWFjY291bnRcXG4gICAgICAgICwgXFxcImNyZWF0ZS1hY2NvdW50LWd1YXJkXFxcIiA6PSBjcmVhdGUtYWNjb3VudC1ndWFyZFxcbiAgICAgICAgLCBcXFwicXVhbnRpdHlcXFwiIDo9IHF1YW50aXR5XFxuICAgICAgICAsIFxcXCJkZWxldGUtdHgtaGFzaFxcXCIgOj0gZGVsZXRlLXR4LWhhc2hcXG4gICAgICAgICwgXFxcImRlbGV0ZS1jaGFpbi1pZFxcXCIgOj0gZGVsZXRlLWNoYWluLWlkXFxuICAgICAgICB9XFxuICAgICAgICAoZW5mb3JjZSAoPSAoYXQgXFxcImNoYWluLWlkXFxcIiAoY2hhaW4tZGF0YSkpIGNyZWF0ZS1jaGFpbi1pZCBcXFwiZW5mb3JjZSBjb3JyZWN0IGNyZWF0ZSBjaGFpbiBJRFxcXCIpKVxcbiAgICAgICAgKGxldCAoKGNyZWF0ZS1pZCAoZm9ybWF0IFxcXCIlOiVcXFwiIFtkZWxldGUtdHgtaGFzaCBkZWxldGUtY2hhaW4taWRdKSkpXFxuICAgICAgICAgICh3aXRoLWRlZmF1bHQtcmVhZCBjcmVhdGUtaWQgY3JlYXRlcy10YWJsZVxcbiAgICAgICAgICAgIHsgXFxcImV4aXN0c1xcXCI6IGZhbHNlIH1cXG4gICAgICAgICAgICB7IFxcXCJleGlzdHNcXFwiOj0gZXhpc3RzIH1cXG4gICAgICAgICAgICAoZW5mb3JjZSAobm90IGV4aXN0cykgKGZvcm1hdCBcXFwiZW5mb3JjZSB1bmlxdWUgdXNhZ2Ugb2YgJVxcXCIgW2NyZWF0ZS1pZF0pKVxcbiAgICAgICAgICAgIChpbnNlcnQgY3JlYXRlcy10YWJsZSBjcmVhdGUtaWQgeyBcXFwiZXhpc3RzXFxcIjogdHJ1ZSB9KVxcbiAgICAgICAgICAgICh3aXRoLWNhcGFiaWxpdHkgKFRSQU5TRkVSKVxcbiAgICAgICAgICAgICAgKGNyZWRpdCBjcmVhdGUtYWNjb3VudCBjcmVhdGUtYWNjb3VudC1ndWFyZCBxdWFudGl0eSkpKVxcbiAgICAgICAgICApKSlcXG4gICAgKVxcblxcblxcbilcXG5cXG4oY3JlYXRlLXRhYmxlIGNvaW4tdGFibGUpXFxuKGNyZWF0ZS10YWJsZSBjcmVhdGVzLXRhYmxlKVxcblwifX0sXCJtZXRhXCI6e1wiZ2FzTGltaXRcIjowLFwiY2hhaW5JZFwiOlwiXCIsXCJnYXNQcmljZVwiOjAsXCJzZW5kZXJcIjpcIlwifSxcIm5vbmNlXCI6XCJcXFwiZ2VuZXNpcy0wMVxcXCJcIn0ifQ
  - eyJobFR4TG9ncyI6IjllMGJhMGY0YzAxNTFkMTg5YzgxNTExNWE3NjgxMTg1MjJkY2Y0MDliNWNkN2VjMzlmMTk0Y2ZmZGRhZjlkMWUxOTAxNTA2ZDk4OTE0ZWIwN2FjNzIzNGU1MjM4YmJiM2I2NmYyMDIyOGNkZTRhODA2ODk5ZTM0NzcwNzMxOGNmIiwiaGxDb21tYW5kUmVzdWx0Ijp7InN0YXR1cyI6InN1Y2Nlc3MiLCJkYXRhIjoiVGFibGVDcmVhdGVkIn19
- - eyJoYXNoIjoiM2FkNjc1Njc3OTUzNjM0NmI3YTg5NDJkYWE2MTI5ZTA3Yjc1YWY2YjJhNWNjNjhhODAzYjA2NGM4N2Q3NTMzMTMzNTZhMWFlMjcyNWU2ODdjN2YyODU5ZDIxNmYwMmFkZDJmMmVhOGEzNDRiZGIzYzE4MTU2Y2I4YWEzYWZjZjIiLCJzaWdzIjpbXSwiY21kIjoie1wicGF5bG9hZFwiOntcImV4ZWNcIjp7XCJkYXRhXCI6e1wic2VuZGVyMDdcIjpbXCI0YzMxZGM5ZWU3ZjI0MTc3Zjc4YjZmNTE4MDEyYTIwODMyNmUyYWYxZjM3YmIwYTI0MDViNTA1NmQwY2FkNjI4XCJdLFwic2VuZGVyMDFcIjpbXCI2YmUyZjQ4NWE3YWY3NWZlZGI0YjdmMTUzYTkwM2Y3ZTYwMDBjYTRhYTUwMTE3OWM5MWEyNDUwYjc3N2JkMmE3XCJdLFwic2VuZGVyMDZcIjpbXCI1ZmZjMWY3ZmVmN2E0NDczODYyNTc2MmY3NWE0MjI5NDU0OTUxZTAzZjJhZmM2ZjgxMzA5YzBjMWJkZjllZTZmXCJdLFwic2VuZGVyMDBcIjpbXCIzNjg4MjBmODBjMzI0YmJjN2MyYjA2MTA2ODhhN2RhNDNlMzlmOTFkMTE4NzMyNjcxY2Q5Yzc1MDBmZjQzY2NhXCJdLFwic2VuZGVyMDVcIjpbXCJmMDlkOGY2Mzk0YWVhNDI1ZmU2NzgzZDg4Y2Q4MTM2M2Q4MDE3ZjE2YWZkMzcxMWM1NzViZTBmNWNkNWM5YmI5XCJdLFwic2VuZGVyMDRcIjpbXCIyZDcwYWE0ZjY5N2MzYTNiOGRkNmQ5Nzc0NWFjMDc0ZWRjZmQwZWI2NWMzNzc3NGNkZTI1MTM1NDgzYmVhNzFlXCJdLFwibXVsdGktMDItMDMtMDQtYW55XCI6e1wicHJlZFwiOlwia2V5cy1hbnlcIixcImtleXNcIjpbXCIzYTlkZDUzMmQ3M2RhY2UxOTVkYmI2NGQxZGJhNjU3MmZiNzgzZDBmZGQzMjQ2ODVlMzJmYmRhMmY4OWY5OWE2XCIsXCI0M2YyYWRiMWRlMTkyMDAwY2IzNzc3YmFjYzdmOTgzYjY2MTRmZDljMTcxNWNkNDRjZDQ4NGI2ZDNhMGQzNGM4XCIsXCIyZDcwYWE0ZjY5N2MzYTNiOGRkNmQ5Nzc0NWFjMDc0ZWRjZmQwZWI2NWMzNzc3NGNkZTI1MTM1NDgzYmVhNzFlXCJdfSxcInNlbmRlcjA5XCI6W1wiYzU5ZDk4NDBiMGI2NjA5MDgzNjU0NmI3ZWI0YTczNjA2MjU3NTI3ZWM4YzJiNDgyMzAwZmQyMjkyNjRiMDdlNlwiXSxcInNlbmRlcjAzXCI6W1wiNDNmMmFkYjFkZTE5MjAwMGNiMzc3N2JhY2M3Zjk4M2I2NjE0ZmQ5YzE3MTVjZDQ0Y2Q0ODRiNmQzYTBkMzRjOFwiXSxcIm11bHRpLTAwLTAxXCI6W1wiMzY4ODIwZjgwYzMyNGJiYzdjMmIwNjEwNjg4YTdkYTQzZTM5ZjkxZDExODczMjY3MWNkOWM3NTAwZmY0M2NjYVwiLFwiNmJlMmY0ODVhN2FmNzVmZWRiNGI3ZjE1M2E5MDNmN2U2MDAwY2E0YWE1MDExNzljOTFhMjQ1MGI3NzdiZDJhN1wiXSxcInNlbmRlcjA4XCI6W1wiNjNiMmViYTRlZDcwZDQ2MTJkM2U3YmM5MGRiMmZiZjRjNzZmN2IwNzQzNjNlODZkNzNmMGJjNjE3ZjhlOGI4MVwiXSxcInNlbmRlcjAyXCI6W1wiM2E5ZGQ1MzJkNzNkYWNlMTk1ZGJiNjRkMWRiYTY1NzJmYjc4M2QwZmRkMzI0Njg1ZTMyZmJkYTJmODlmOTlhNlwiXX0sXCJjb2RlXCI6XCIoY29pbi5jb2luYmFzZSBcXFwic2VuZGVyMDBcXFwiIChyZWFkLWtleXNldCBcXFwic2VuZGVyMDBcXFwiKSAxMDAwLjApXFxuKGNvaW4uY29pbmJhc2UgXFxcInNlbmRlcjAxXFxcIiAocmVhZC1rZXlzZXQgXFxcInNlbmRlcjAxXFxcIikgMTAxMC4wKVxcbihjb2luLmNvaW5iYXNlIFxcXCJzZW5kZXIwMlxcXCIgKHJlYWQta2V5c2V0IFxcXCJzZW5kZXIwMlxcXCIpIDEwMjAuMClcXG4oY29pbi5jb2luYmFzZSBcXFwic2VuZGVyMDNcXFwiIChyZWFkLWtleXNldCBcXFwic2VuZGVyMDNcXFwiKSAxMDMwLjApXFxuKGNvaW4uY29pbmJhc2UgXFxcInNlbmRlcjA0XFxcIiAocmVhZC1rZXlzZXQgXFxcInNlbmRlcjA0XFxcIikgMTA0MC4wKVxcbihjb2luLmNvaW5iYXNlIFxcXCJzZW5kZXIwNVxcXCIgKHJlYWQta2V5c2V0IFxcXCJzZW5kZXIwNVxcXCIpIDEwNTAuMClcXG4oY29pbi5jb2luYmFzZSBcXFwic2VuZGVyMDZcXFwiIChyZWFkLWtleXNldCBcXFwic2VuZGVyMDZcXFwiKSAxMDYwLjApXFxuKGNvaW4uY29pbmJhc2UgXFxcInNlbmRlcjA3XFxcIiAocmVhZC1rZXlzZXQgXFxcInNlbmRlcjA3XFxcIikgMTA3MC4wKVxcbihjb2luLmNvaW5iYXNlIFxcXCJzZW5kZXIwOFxcXCIgKHJlYWQta2V5c2V0IFxcXCJzZW5kZXIwOFxcXCIpIDEwODAuMClcXG4oY29pbi5jb2luYmFzZSBcXFwic2VuZGVyMDlcXFwiIChyZWFkLWtleXNldCBcXFwic2VuZGVyMDlcXFwiKSAxMDkwLjApXFxuKGNvaW4uY29pbmJhc2UgXFxcIm11bHRpLTAwLTAxXFxcIiAocmVhZC1rZXlzZXQgXFxcIm11bHRpLTAwLTAxXFxcIikgMTAwMS4wKVxcbihjb2luLmNvaW5iYXNlIFxcXCJtdWx0aS0wMi0wMy0wNC1hbnlcXFwiIChyZWFkLWtleXNldCBcXFwibXVsdGktMDItMDMtMDQtYW55XFxcIikgMTIzNC4wKVwifX0sXCJtZXRhXCI6e1wiZ2FzTGltaXRcIjowLFwiY2hhaW5JZFwiOlwiXCIsXCJnYXNQcmljZVwiOjAsXCJzZW5kZXJcIjpcIlwifSxcIm5vbmNlXCI6XCJcXFwidGVzdG5ldDAwLWdyYW50c1xcXCJcIn0ifQ
  - eyJobFR4TG9ncyI6Ijc5Y2NhN2QyMmRhZjNkYjI4MzY5ZDY0NjY3NWRhMjY5ZjMyNjY1MzUzYzhlYjEwZTMyZGNlMGY1YTgyNGI2YTZjMGM2ZTA0ODE3ZDFhYjYwMDY3YTdhZTU4MWRmNDdlZDJkZjIzZGJhOTMxZDU5MWYwNWY0ZTk0MWQ2YWZjYjNiIiwiaGxDb21tYW5kUmVzdWx0Ijp7InN0YXR1cyI6InN1Y2Nlc3MiLCJkYXRhIjoiV3JpdGUgc3VjY2VlZGVkIn19
minerData: eyJtIjoiTm9NaW5lciIsImtzIjpbXSwia3AiOiI8In0
transactionsHash: 0EYo9Or4PEzseVtUORuqzLtNv1lXYnAQE9UPB5--xBE
outputsHash: wjfdyJr3sEBP1UsqKYcKMDl9MZPOVe24--EMpwZKr6U
payloadHash: 61j8anj3geGTgnWGPfnxN8X5lpwphWMTWFc_sdTfZlw
coinbase: eyJmbENvbW1hbmRSZXN1bHQiOnsic3RhdHVzIjoic3VjY2VzcyIsImRhdGEiOiJOT19DT0lOQkFTRSJ9LCJmbFR4TG9ncyI6W119

|]
