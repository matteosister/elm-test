module ABNotSandboxed exposing (main)

import Browser
import Browser.Navigation
import Html exposing (Html, button, div, input, hr, text)
import Html.Events exposing (onClick, onInput)
import Url

type Msg
    = Increase
    | Decrease
    | ChangeIncreaseAmount String
    | ChangeTextField String
    | Emptiness


type alias Model =
    { 
        counterValue : Int,
        increaseAmount: Int,
        textFieldContent: String
     }


init : flags -> Url.Url -> Browser.Navigation.Key -> ( Model, Cmd Msg )
init _ _ _ = (initialModel 0, Cmd.none)

initialModel : Int -> Model
initialModel value =
    Model value 0 ""

main : Program () Model Msg
main =
    Browser.application
    { init = init
    , onUrlChange = onUrlChange
    , onUrlRequest = onUrlRequest
    , subscriptions = subscriptions
    , update = update
    , view = view
    }

onUrlChange : Url.Url -> Msg
onUrlChange = always Emptiness

onUrlRequest : Browser.UrlRequest -> Msg
onUrlRequest = always Emptiness

subscriptions : Model -> Sub Msg
subscriptions = always Sub.none


update : Msg -> Model ->  ( Model, Cmd Msg )
update msg model = ( sandboxedUpdate msg model, Cmd.none )

sandboxedUpdate : Msg -> Model -> Model
sandboxedUpdate msg model =
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

        Emptiness -> model


view : Model -> Browser.Document Msg
view model =  {title="Title", body = [sandboxedView model]}

sandboxedView : Model -> Html Msg
sandboxedView model =
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
