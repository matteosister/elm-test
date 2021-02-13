-- Do not manually edit this file, it was auto-generated by dillonkearns/elm-graphql
-- https://github.com/dillonkearns/elm-graphql


module Gql.DockerAPI.Object.ImageSearchResult exposing (..)

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
description : SelectionSet (Maybe String) Gql.DockerAPI.Object.ImageSearchResult
description =
    Object.selectionForField "(Maybe String)" "description" [] (Decode.string |> Decode.nullable)


{-| -}
official : SelectionSet (Maybe Bool) Gql.DockerAPI.Object.ImageSearchResult
official =
    Object.selectionForField "(Maybe Bool)" "official" [] (Decode.bool |> Decode.nullable)


{-| -}
automated : SelectionSet (Maybe Bool) Gql.DockerAPI.Object.ImageSearchResult
automated =
    Object.selectionForField "(Maybe Bool)" "automated" [] (Decode.bool |> Decode.nullable)


{-| -}
name : SelectionSet (Maybe String) Gql.DockerAPI.Object.ImageSearchResult
name =
    Object.selectionForField "(Maybe String)" "name" [] (Decode.string |> Decode.nullable)


{-| -}
starCount : SelectionSet (Maybe Int) Gql.DockerAPI.Object.ImageSearchResult
starCount =
    Object.selectionForField "(Maybe Int)" "starCount" [] (Decode.int |> Decode.nullable)
