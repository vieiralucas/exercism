module Raindrops exposing (raindrops)


raindrops : Int -> String
raindrops n =
    case ( n % 3 == 0, n % 5 == 0, n % 7 == 0 ) of
        ( True, False, False ) ->
            "Pling"

        ( False, True, False ) ->
            "Plang"

        ( False, False, True ) ->
            "Plong"

        ( True, True, False ) ->
            "PlingPlang"

        ( True, False, True ) ->
            "PlingPlong"

        ( False, True, True ) ->
            "PlangPlong"

        ( True, True, True ) ->
            "PlingPlangPlong"

        ( False, False, False ) ->
            toString n
