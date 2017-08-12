module Strain exposing (..)


keep : (a -> Bool) -> List a -> List a
keep fn list =
    case list of
        [] ->
            list

        n :: rest ->
            if fn n then
                n :: keep fn rest
            else
                keep fn rest


inverse : (a -> Bool) -> a -> Bool
inverse fn n =
    not (fn n)


discard : (a -> Bool) -> List a -> List a
discard fn list =
    keep (inverse fn) list
