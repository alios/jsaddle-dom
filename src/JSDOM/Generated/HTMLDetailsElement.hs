{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
module JSDOM.Generated.HTMLDetailsElement
       (setOpen, getOpen, HTMLDetailsElement(..), gTypeHTMLDetailsElement)
       where
import Prelude ((.), (==), (>>=), return, IO, Int, Float, Double, Bool(..), Maybe, maybe, fromIntegral, round, realToFrac, fmap, Show, Read, Eq, Ord, Maybe(..))
import Data.Typeable (Typeable)
import Language.Javascript.JSaddle (JSM(..), JSVal(..), JSString, strictEqual, toJSVal, valToStr, valToNumber, valToBool, js, jss, jsf, jsg, function, new, array)
import Data.Int (Int64)
import Data.Word (Word, Word64)
import JSDOM.Types
import Control.Applicative ((<$>))
import Control.Monad (void)
import Control.Lens.Operators ((^.))
import JSDOM.EventTargetClosures (EventName, unsafeEventName)
import JSDOM.Enums

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLDetailsElement.open Mozilla HTMLDetailsElement.open documentation> 
setOpen :: (MonadDOM m) => HTMLDetailsElement -> Bool -> m ()
setOpen self val = liftDOM (self ^. jss "open" (toJSVal val))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLDetailsElement.open Mozilla HTMLDetailsElement.open documentation> 
getOpen :: (MonadDOM m) => HTMLDetailsElement -> m Bool
getOpen self = liftDOM ((self ^. js "open") >>= valToBool)