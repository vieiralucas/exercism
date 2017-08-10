module Pangram exposing (isPangram)

import Set exposing (..)
import Char exposing (..)


isPangram : String -> Bool
isPangram str =
    str
        |> String.toLower
        |> String.toList
        |> Set.fromList
        -- removes non ASCII chars
        |> Set.filter Char.isLower
        |> Set.size
        |> \n -> n == 26
