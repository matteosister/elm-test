module DASimpleGQL exposing (main)

import Html exposing (Html, button, div, input, hr, text)
import Html.Events exposing (onClick, onInput)
import Browser
import Browser.Navigation
import Url
import Http


import Graphql.Document as Document
import Graphql.Http
import Graphql.Operation exposing (RootQuery)
import Graphql.OptionalArgument exposing (OptionalArgument(..))
import Graphql.SelectionSet as SelectionSet exposing (SelectionSet)

import RemoteData exposing (RemoteData)

--import Gql.DockerAPI
import Gql.DockerAPI.Query as Query
import Gql.DockerAPI.ScalarCodecs exposing (Id)
import Gql.DockerAPI.Object
import Gql.DockerAPI.Scalar
import Gql.DockerAPI.Object.Image

type alias Flags = ()

type alias Model =
    RemoteData (Graphql.Http.Error Response) Response

type Msg = Emptiness | RunQuery | GotResponse Model

init : flags -> Url.Url -> Browser.Navigation.Key -> ( Model, Cmd Msg )
init _ _ _ = (RemoteData.Loading, makeRequest)

update : Msg -> Model -> ( Model, Cmd Msg )
update msg model =
    case msg of
        GotResponse response ->
            ( response, Cmd.none )
        _ -> (model, Cmd.none)

processMaybeLists : Maybe (List a) -> Html msg
processMaybeLists maybe = case maybe of
    Just l -> Html.div[](List.map (\x -> Html.div[][ text (Debug.toString x)]) l )
    Nothing -> text ""

displayResult : Model -> Html msg
displayResult model = case model of
    RemoteData.Failure f -> text (Debug.toString <| f)
        
    RemoteData.Success response -> processMaybeLists response
    other -> text (Debug.toString <| other)
        

view : Model -> Browser.Document Msg
view model = {
    title="Page title"
    , body = [
        Html.text "Hello world"
        , Html.div[][
            Html.button [ onClick RunQuery ] [text "Run query"]
        ]
        , Html.div[][
            displayResult model
        ]
        ]
    }

type Id
    = Id Int

type alias Response = (Maybe (List (Maybe Image)))

type alias Image =
    { id : Gql.DockerAPI.ScalarCodecs.Id
    , size : Maybe Gql.DockerAPI.ScalarCodecs.Long
    }

imageSelection : SelectionSet Image Gql.DockerAPI.Object.Image
imageSelection =
    SelectionSet.map2 Image
        Gql.DockerAPI.Object.Image.id
        Gql.DockerAPI.Object.Image.size

query : SelectionSet Response RootQuery
query =
    -- We use `identity` to say that we aren't giving any
    -- optional arguments to `hero`. Read this blog post for more:
    -- https://medium.com/@zenitram.oiram/graphqelm-optional-arguments-in-a-language-without-optional-arguments-d8074ca3cf74
    Query.images identity imageSelection

makeRequest : Cmd Msg
makeRequest =
    query
        |> Graphql.Http.queryRequest "http://localhost:8080/graphql"
        |> Graphql.Http.send (RemoteData.fromResult >> GotResponse)


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