{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# OPTIONS_GHC -fno-warn-missing-fields #-}
{-# OPTIONS_GHC -fno-warn-missing-signatures #-}
{-# OPTIONS_GHC -fno-warn-name-shadowing #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-----------------------------------------------------------------
-- Autogenerated by Thrift Compiler (0.9.3)                      --
--                                                             --
-- DO NOT EDIT UNLESS YOU ARE SURE YOU KNOW WHAT YOU ARE DOING --
-----------------------------------------------------------------

module ITim_Iface where
import Prelude (($), (.), (>>=), (==), (++))
import qualified Prelude as P
import qualified Control.Exception as X
import qualified Control.Monad as M ( liftM, ap, when )
import Data.Functor ( (<$>) )
import qualified Data.ByteString.Lazy as LBS
import qualified Data.Hashable as H
import qualified Data.Int as I
import qualified Data.Maybe as M (catMaybes)
import qualified Data.Text.Lazy.Encoding as E ( decodeUtf8, encodeUtf8 )
import qualified Data.Text.Lazy as LT
import qualified GHC.Generics as G (Generic)
import qualified Data.Typeable as TY ( Typeable )
import qualified Data.HashMap.Strict as Map
import qualified Data.HashSet as Set
import qualified Data.Vector as Vector
import qualified Test.QuickCheck.Arbitrary as QC ( Arbitrary(..) )
import qualified Test.QuickCheck as QC ( elements )

import qualified Thrift as T
import qualified Thrift.Types as T
import qualified Thrift.Arbitraries as T


import Tim_Types

class ITim_Iface a where
  timStream :: a -> TimParam -> P.IO ()
  timStarttls :: a -> P.IO ()
  timLogin :: a -> Tid -> LT.Text -> P.IO ()
  timAck :: a -> TimAckBean -> P.IO ()
  timPresence :: a -> TimPBean -> P.IO ()
  timMessage :: a -> TimMBean -> P.IO ()
  timPing :: a -> LT.Text -> P.IO ()
  timError :: a -> TimError -> P.IO ()
  timLogout :: a -> P.IO ()
  timRegist :: a -> Tid -> LT.Text -> P.IO ()
  timRoser :: a -> TimRoster -> P.IO ()
  timMessageList :: a -> TimMBeanList -> P.IO ()
  timPresenceList :: a -> TimPBeanList -> P.IO ()
  timMessageIq :: a -> TimMessageIq -> LT.Text -> P.IO ()
  timMessageResult :: a -> TimMBean -> P.IO ()
  timProperty :: a -> TimPropertyBean -> P.IO ()
  timRemoteUserAuth :: a -> Tid -> LT.Text -> TimAuth -> P.IO TimRemoteUserBean
  timRemoteUserGet :: a -> Tid -> TimAuth -> P.IO TimRemoteUserBean
  timRemoteUserEdit :: a -> Tid -> TimUserBean -> TimAuth -> P.IO TimRemoteUserBean
  timResponsePresence :: a -> TimPBean -> TimAuth -> P.IO TimResponseBean
  timResponseMessage :: a -> TimMBean -> TimAuth -> P.IO TimResponseBean
  timResponseMessageIq :: a -> TimMessageIq -> LT.Text -> TimAuth -> P.IO TimMBeanList
  timResponsePresenceList :: a -> TimPBeanList -> TimAuth -> P.IO TimResponseBean
  timResponseMessageList :: a -> TimMBeanList -> TimAuth -> P.IO TimResponseBean
