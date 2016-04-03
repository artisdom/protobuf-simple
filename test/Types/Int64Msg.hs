-- Generated by protobuf-simple. DO NOT EDIT!
module Types.Int64Msg where

import Control.Applicative ((<$>))
import Prelude ()
import qualified Data.ProtoBufInt as PB

newtype Int64Msg = Int64Msg
  { value :: PB.Int64
  } deriving (PB.Show, PB.Eq, PB.Ord)

instance PB.Default Int64Msg where
  defaultVal = Int64Msg
    { value = PB.defaultVal
    }

instance PB.Mergeable Int64Msg where
  merge a b = Int64Msg
    { value = PB.merge (value a) (value b)
    }

instance PB.Required Int64Msg where
  reqTags _ = PB.fromList [PB.WireTag 1 PB.VarInt]

instance PB.WireMessage Int64Msg where
  fieldToValue (PB.WireTag 1 PB.VarInt) self = (\v -> self{value = PB.merge (value self) v}) <$> PB.getInt64
  fieldToValue tag self = PB.getUnknown tag self

  messageToFields self = do
    PB.putInt64 (PB.WireTag 1 PB.VarInt) (value self)

