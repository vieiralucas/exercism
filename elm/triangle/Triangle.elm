module Triangle exposing (..)


version : Int
version =
    2


type Triangle
    = Equilateral
    | Isosceles
    | Scalene


violatesInequality : comparable -> comparable -> comparable -> Bool
violatesInequality a b c =
    a + b < c || a + c < b || b + c < a


triangleKind : number -> number -> number -> Result String Triangle
triangleKind a b c =
    if (0 >= a || 0 >= b || 0 >= c) then
        Err "Invalid lengths"
    else if violatesInequality a b c then
        Err "Violates inequality"
    else
        case ( a == b, a == c, b == c ) of
            ( True, True, True ) ->
                Ok Equilateral

            ( False, False, True ) ->
                Ok Isosceles

            ( False, True, _ ) ->
                Ok Isosceles

            ( True, _, _ ) ->
                Ok Isosceles

            _ ->
                Ok Scalene
