module Main exposing (..)

import Browser exposing (sandbox)
import Html exposing (Html, button, div)
import Html.Events exposing (onClick)



-- implementare Decrease
-- implementare Increase di step maggiori
-- aggiungere campo nuovo al model e modificarlo tramite un input text


type Msg
    = Increase
    | Decrease


type alias Model =
    { counterValue : Int }


initialModel : Int -> Model
initialModel value =
    Model value


main : Program () Model Msg
main =
    sandbox
        { init = initialModel 0
        , view = view
        , update = update
        }


update : Msg -> Model -> Model
update msg model =
    case msg of
        Increase ->
            { model | counterValue = model.counterValue + 1 }

        Decrease ->
            { model | counterValue = model.counterValue - 1 }


view : Model -> Html Msg
view model =
    div []
        [ Html.text (String.fromInt model.counterValue)
        , button [ onClick Increase ] [ Html.text "increase" ]
        ]
