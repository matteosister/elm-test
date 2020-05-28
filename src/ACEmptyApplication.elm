module ACEmptyApplication exposing (main)

import Html
import Browser
import Browser.Navigation
import Url

type alias Flags = ()

type alias Model = {}

type Msg = Emptiness 

init : flags -> Url.Url -> Browser.Navigation.Key -> ( Model, Cmd Msg )
init _ _ _ = (Model, Cmd.none)

update : Msg -> Model -> ( Model, Cmd Msg )
update _ model = (model, Cmd.none)

view : Model -> Browser.Document Msg
view _ = {title="prova", body = [Html.text "Hello world"]}

onUrlChange : Url.Url -> Msg
onUrlChange = always Emptiness

onUrlRequest : Browser.UrlRequest -> Msg
onUrlRequest = always Emptiness

subscriptions : Model -> Sub Msg
subscriptions = always Sub.none

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