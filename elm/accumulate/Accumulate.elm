module Accumulate exposing (..)


accumulate : (a -> b) -> List a -> List b
accumulate mapper list =
    case list of
        [] ->
            []

        [ a ] ->
            (mapper a) :: []

        a :: rest ->
            (mapper a) :: accumulate mapper rest
