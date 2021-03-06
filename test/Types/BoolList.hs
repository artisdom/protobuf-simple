-- Generated by protobuf-simple. DO NOT EDIT!
module Types.BoolList where

import Control.Applicative ((<$>))
import Prelude ()
import qualified Data.ProtoBufInt as PB

newtype BoolList = BoolList
  { value :: PB.Seq PB.Bool
  } deriving (PB.Show, PB.Eq, PB.Ord)

instance PB.Default BoolList where
  defaultVal = BoolList
    { value = PB.defaultVal
    }

instance PB.Mergeable BoolList where
  merge a b = BoolList
    { value = PB.merge (value a) (value b)
    }

instance PB.Required BoolList where
  reqTags _ = PB.fromList []

instance PB.WireMessage BoolList where
  fieldToValue (PB.WireTag 1 PB.VarInt) self = (\v -> self{value = PB.append (value self) v}) <$> PB.getBool
  fieldToValue tag self = PB.getUnknown tag self

  messageToFields self = do
    PB.putBoolList (PB.WireTag 1 PB.VarInt) (value self)


