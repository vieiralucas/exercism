module DifferenceOfSquares exposing (..)


square : Int -> Int
square n =
    n * n


squareOfSum : Int -> Int
squareOfSum n =
    List.range 0 n
        |> List.sum
        |> square


sumOfSquares : Int -> Int
sumOfSquares n =
    List.range 0 n
        |> List.map square
        |> List.sum


difference : Int -> Int
difference n =
    squareOfSum n - sumOfSquares n
