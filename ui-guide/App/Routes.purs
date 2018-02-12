module UIGuide.App.Routes
  ( routes )
where

import Prelude

import Data.StrMap as SM
import UIGuide.App (proxy)
import Data.Tuple (Tuple(..))

import UIGuide.Components.TextFields as TextFields

routes = SM.fromFoldable
  [ Tuple "Text Fields" $ proxy $ TextFields.component
  , Tuple "Other Text Fields" $ proxy $ TextFields.component
  , Tuple "More Text Fields" $ proxy $ TextFields.component
  ]
