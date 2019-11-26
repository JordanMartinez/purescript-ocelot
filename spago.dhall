{-
Welcome to a Spago project!
You can edit this file as you like.
-}
{ name = "ocelot"
, dependencies =
    [ "aff-promise"
    , "affjax"
    , "argonaut"
    , "bigints"
    , "console"
    , "debug"
    , "effect"
    , "email-validate"
    , "formatters"
    , "fuzzy"
    , "halogen"
    , "halogen-select"
    , "halogen-storybook"
    , "html-parser-halogen"
    , "js-timers"
    , "numbers"
    , "polyform"
    , "psci-support"
    , "read"
    , "remotedata"
    , "routing"
    , "test-unit"
    , "variant"
    ]
, packages = ./packages.dhall
, sources = [ "src/**/*.purs", "test/**/*.purs", "ui-guide/**/*.purs" ]
}