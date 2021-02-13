-- Do not manually edit this file, it was auto-generated by dillonkearns/elm-graphql
-- https://github.com/dillonkearns/elm-graphql


module Gql.DockerAPI.Object.ImageHistory exposing (..)

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
id : SelectionSet Gql.DockerAPI.ScalarCodecs.Id Gql.DockerAPI.Object.ImageHistory
id =
    Object.selectionForField "ScalarCodecs.Id" "id" [] (Gql.DockerAPI.ScalarCodecs.codecs |> Gql.DockerAPI.Scalar.unwrapCodecs |> .codecId |> .decoder)


{-| -}
created : SelectionSet (Maybe Gql.DockerAPI.ScalarCodecs.Long) Gql.DockerAPI.Object.ImageHistory
created =
    Object.selectionForField "(Maybe ScalarCodecs.Long)" "created" [] (Gql.DockerAPI.ScalarCodecs.codecs |> Gql.DockerAPI.Scalar.unwrapCodecs |> .codecLong |> .decoder |> Decode.nullable)


{-| -}
createdBy : SelectionSet (Maybe String) Gql.DockerAPI.Object.ImageHistory
createdBy =
    Object.selectionForField "(Maybe String)" "createdBy" [] (Decode.string |> Decode.nullable)


{-| -}
tags : SelectionSet (Maybe (List (Maybe String))) Gql.DockerAPI.Object.ImageHistory
tags =
    Object.selectionForField "(Maybe (List (Maybe String)))" "tags" [] (Decode.string |> Decode.nullable |> Decode.list |> Decode.nullable)


{-| -}
size : SelectionSet (Maybe Gql.DockerAPI.ScalarCodecs.Long) Gql.DockerAPI.Object.ImageHistory
size =
    Object.selectionForField "(Maybe ScalarCodecs.Long)" "size" [] (Gql.DockerAPI.ScalarCodecs.codecs |> Gql.DockerAPI.Scalar.unwrapCodecs |> .codecLong |> .decoder |> Decode.nullable)


{-| -}
comment : SelectionSet (Maybe String) Gql.DockerAPI.Object.ImageHistory
comment =
    Object.selectionForField "(Maybe String)" "comment" [] (Decode.string |> Decode.nullable)
