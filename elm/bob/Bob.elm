module Bob exposing (hey)


type Input
    = Statement
    | Shout
    | Question
    | Silence


classify : String -> Input
classify s =
    let
        upper =
            String.toUpper s

        lower =
            String.toLower s

        byLastChar i =
            case (String.reverse i |> String.toList |> List.head) of
                Just '?' ->
                    Question

                _ ->
                    Statement
    in
        if (String.trim s |> String.isEmpty) then
            Silence
        else if (upper == s) && (lower == s) then
            byLastChar s
        else if (String.toUpper s) == s then
            Shout
        else
            byLastChar s


hey : String -> String
hey s =
    case (classify s) of
        Statement ->
            "Whatever."

        Shout ->
            "Whoa, chill out!"

        Question ->
            "Sure."

        Silence ->
            "Fine. Be that way!"
