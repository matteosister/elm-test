-- Do not manually edit this file, it was auto-generated by dillonkearns/elm-graphql
-- https://github.com/dillonkearns/elm-graphql


module Gql.DockerAPI.Object.ExternalCa exposing (..)

import Gql.DockerAPI.InputObject
import Gql.DockerAPI.Interface
import Gql.DockerAPI.Object
import Gql.DockerAPI.Scalar
import Gql.DockerAPI.ScalarCodecs
import Gql.DockerAPI.Union
import Graphql.Internal.Builder.Argument as Argument exposing (Argument)
import Graphql.Internal.Builder.Object as Object
import Graphql.Internal.Encode as Encode exposing (Value)
import Graphql.Operation exposing (RootMutation, RootQuery, RootSubscription)
import Graphql.OptionalArgument exposing (OptionalArgument(..))
import Graphql.SelectionSet exposing (SelectionSet)
import Json.Decode as Decode


{-| -}
protocol : SelectionSet (Maybe String) Gql.DockerAPI.Object.ExternalCa
protocol =
    Object.selectionForField "(Maybe String)" "protocol" [] (Decode.string |> Decode.nullable)


{-| -}
url : SelectionSet (Maybe String) Gql.DockerAPI.Object.ExternalCa
url =
    Object.selectionForField "(Maybe String)" "url" [] (Decode.string |> Decode.nullable)


{-| -}
options : SelectionSet (Maybe Gql.DockerAPI.ScalarCodecs.StringAnyMap) Gql.DockerAPI.Object.ExternalCa
options =
    Object.selectionForField "(Maybe ScalarCodecs.StringAnyMap)" "options" [] (Gql.DockerAPI.ScalarCodecs.codecs |> Gql.DockerAPI.Scalar.unwrapCodecs |> .codecStringAnyMap |> .decoder |> Decode.nullable)