-- Generated by protobuf-simple. DO NOT EDIT!
module Types.StringOptMsg where

import Control.Applicative ((<$>))
import Prelude ()
import qualified Data.ProtoBufInt as PB

newtype StringOptMsg = StringOptMsg
  { value :: PB.Maybe PB.Text
  } deriving (PB.Show, PB.Eq, PB.Ord)

instance PB.Default StringOptMsg where
  defaultVal = StringOptMsg
    { value = PB.defaultVal
    }

instance PB.Mergeable StringOptMsg where
  merge a b = StringOptMsg
    { value = PB.merge (value a) (value b)
    }

instance PB.Required StringOptMsg where
  reqTags _ = PB.fromList []

instance PB.WireMessage StringOptMsg where
  fieldToValue (PB.WireTag 1 PB.LenDelim) self = (\v -> self{value = PB.merge (value self) v}) <$> PB.getStringOpt
  fieldToValue tag self = PB.getUnknown tag self

  messageToFields self = do
    PB.putStringOpt (PB.WireTag 1 PB.LenDelim) (value self)


