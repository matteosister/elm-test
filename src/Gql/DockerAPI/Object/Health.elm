-- Do not manually edit this file, it was auto-generated by dillonkearns/elm-graphql
-- https://github.com/dillonkearns/elm-graphql


module Gql.DockerAPI.Object.Health exposing (..)

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
status : SelectionSet (Maybe String) Gql.DockerAPI.Object.Health
status =
    Object.selectionForField "(Maybe String)" "status" [] (Decode.string |> Decode.nullable)


{-| -}
failingStreak : SelectionSet (Maybe Int) Gql.DockerAPI.Object.Health
failingStreak =
    Object.selectionForField "(Maybe Int)" "failingStreak" [] (Decode.int |> Decode.nullable)


{-| -}
log : SelectionSet decodesTo Gql.DockerAPI.Object.HealthLog -> SelectionSet (Maybe (List (Maybe decodesTo))) Gql.DockerAPI.Object.Health
log object_ =
    Object.selectionForCompositeField "log" [] object_ (identity >> Decode.nullable >> Decode.list >> Decode.nullable)
