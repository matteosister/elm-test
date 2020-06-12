module CAHttpGet exposing (main)


import Html
import Html.Events exposing (onClick, onInput)
import Http
import Browser
import Browser.Navigation
import Url

type alias Flags = ()

type alias Model = {
  response : String
  , error : String
  }

type Msg = Emptiness | GetData | GotResponse (Result Http.Error String)

init : flags -> Url.Url -> Browser.Navigation.Key -> ( Model, Cmd Msg )
init _ _ _ = (Model "" "", Cmd.none)

doHttpRequest : Cmd Msg
doHttpRequest = Http.get {url="https://www.qwant.com/", expect = Http.expectString GotResponse}

update : Msg -> Model -> ( Model, Cmd Msg )
update msg model = case msg of
    GetData -> (model, doHttpRequest)
        
    GotResponse response -> case response of
        Ok responseStr -> ({model|response=responseStr}, Cmd.none)
            
    
        Err httpError -> ({model|error= Debug.toString httpError}, Cmd.none)

    Emptiness -> (model, Cmd.none)
        

view : Model -> Browser.Document Msg
view model = {title="CAHttpGet", body = [
  Html.text "Hello world", 
  Html.button[onClick GetData][Html.text "Fetch data"],
  Html.div[][Html.text model.response],
  Html.div[][Html.text model.error]
  ]}

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