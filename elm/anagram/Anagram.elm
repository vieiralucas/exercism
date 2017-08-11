module Anagram exposing (detect)


sortString : String -> String
sortString s =
    String.toList s |> List.sort |> String.fromList


areAnagrams : String -> String -> Bool
areAnagrams a b =
    let
        aLower =
            String.toLower a

        bLower =
            String.toLower b
    in
        aLower /= bLower && sortString aLower == sortString bLower


detect : String -> List String -> List String
detect s candidates =
    List.filter (areAnagrams s) candidates
