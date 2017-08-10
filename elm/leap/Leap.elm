module Leap exposing (isLeapYear)


isLeapYear : Int -> Bool
isLeapYear year =
    if year % 100 == 0 then
        (year // 100) % 4 == 0
    else
        year % 4 == 0
