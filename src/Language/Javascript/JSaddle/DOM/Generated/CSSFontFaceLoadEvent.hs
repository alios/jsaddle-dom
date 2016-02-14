{-# LANGUAGE PatternSynonyms #-}
module Language.Javascript.JSaddle.DOM.Generated.CSSFontFaceLoadEvent
       (getFontface, getError, CSSFontFaceLoadEvent,
        castToCSSFontFaceLoadEvent, gTypeCSSFontFaceLoadEvent)
       where
import Prelude ((.), (==), (>>=), return, IO, Int, Float, Double, Bool(..), Maybe, maybe, fromIntegral, round, realToFrac, fmap, Show, Read, Eq, Ord, Maybe(..))
import Data.Typeable (Typeable)
import Language.Javascript.JSaddle (JSM(..), JSVal(..), JSString, strictEqual, toJSVal, valToStr, valToNumber, valToBool, js, jss, jsf, jsg, function, new, array)
import Data.Int (Int64)
import Data.Word (Word, Word64)
import Language.Javascript.JSaddle.DOM.Types
import Control.Applicative ((<$>))
import Control.Monad (void)
import Control.Lens.Operators ((^.))
import Language.Javascript.JSaddle.DOM.EventTargetClosures (EventName, unsafeEventName)
import Language.Javascript.JSaddle.DOM.Enums

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CSSFontFaceLoadEvent.fontface Mozilla CSSFontFaceLoadEvent.fontface documentation> 
getFontface ::
            (MonadDOM m) => CSSFontFaceLoadEvent -> m (Maybe CSSFontFaceRule)
getFontface self = liftDOM ((self ^. js "fontface") >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CSSFontFaceLoadEvent.error Mozilla CSSFontFaceLoadEvent.error documentation> 
getError ::
         (MonadDOM m) => CSSFontFaceLoadEvent -> m (Maybe DOMError)
getError self = liftDOM ((self ^. js "error") >>= fromJSVal)