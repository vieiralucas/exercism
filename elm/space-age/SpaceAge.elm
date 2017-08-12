module SpaceAge exposing (Planet(..), ageOn)


type Planet
    = Mercury
    | Venus
    | Earth
    | Mars
    | Jupiter
    | Saturn
    | Uranus
    | Neptune


orbitalPeriod : Planet -> Float
orbitalPeriod planet =
    case planet of
        Earth ->
            31557600

        Mercury ->
            (orbitalPeriod Earth) * 0.2408467

        Venus ->
            (orbitalPeriod Earth) * 0.61519726

        Mars ->
            (orbitalPeriod Earth) * 1.8808158

        Jupiter ->
            (orbitalPeriod Earth) * 11.862615

        Saturn ->
            (orbitalPeriod Earth) * 29.447498

        Uranus ->
            (orbitalPeriod Earth) * 84.016846

        Neptune ->
            (orbitalPeriod Earth) * 164.79132


ageOn : Planet -> Float -> Float
ageOn planet age =
    age / orbitalPeriod planet
