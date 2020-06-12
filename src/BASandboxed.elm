module BASandboxed exposing (main)

import Browser exposing (sandbox)
import Html exposing (Html, button, div, input, hr, text)
import Html.Events exposing (onClick, onInput)



-- implementare Decrease
-- implementare Increase di step maggiori
-- aggiungere campo nuovo al model e modificarlo tramite un input text


type Msg
    = Increase
    | Decrease
    | ChangeIncreaseAmount String
    | ChangeTextField String


type alias Model =
    { 
        counterValue : Int,
        increaseAmount: Int,
        textFieldContent: String
     }


initialModel : Int -> Model
initialModel value =
    Model value 0 ""

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
            { model | counterValue = model.counterValue + model.increaseAmount }

        Decrease ->
            { model | counterValue = model.counterValue - 1 }

        ChangeIncreaseAmount amount -> 
            case String.toInt amount of
                Just i -> { model | increaseAmount = i }
                Nothing -> model

        ChangeTextField value ->
            {model | textFieldContent = value}

view : Model -> Html Msg
view model =
    div []
        [ div [] [text (String.fromInt model.counterValue)]
        , div [] [
            input [onInput ChangeIncreaseAmount][], 
            button [ onClick Increase ] [ text "increase" ]]
        , div [] [button [ onClick Decrease ] [ text "decrease" ]]
        , hr[][]
        , div [] [
            text model.textFieldContent]
        , div [] [
            input [onInput ChangeTextField][]
        ]
        ]
