-- Do not manually edit this file, it was auto-generated by dillonkearns/elm-graphql
-- https://github.com/dillonkearns/elm-graphql


module Gql.DockerAPI.Object.SwarmNode exposing (..)

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
id : SelectionSet (Maybe String) Gql.DockerAPI.Object.SwarmNode
id =
    Object.selectionForField "(Maybe String)" "id" [] (Decode.string |> Decode.nullable)


{-| -}
version : SelectionSet decodesTo Gql.DockerAPI.Object.SwarmVersion -> SelectionSet (Maybe decodesTo) Gql.DockerAPI.Object.SwarmNode
version object_ =
    Object.selectionForCompositeField "version" [] object_ (identity >> Decode.nullable)


{-| -}
createdAt : SelectionSet (Maybe Gql.DockerAPI.ScalarCodecs.Date) Gql.DockerAPI.Object.SwarmNode
createdAt =
    Object.selectionForField "(Maybe ScalarCodecs.Date)" "createdAt" [] (Gql.DockerAPI.ScalarCodecs.codecs |> Gql.DockerAPI.Scalar.unwrapCodecs |> .codecDate |> .decoder |> Decode.nullable)


{-| -}
updatedAt : SelectionSet (Maybe Gql.DockerAPI.ScalarCodecs.Date) Gql.DockerAPI.Object.SwarmNode
updatedAt =
    Object.selectionForField "(Maybe ScalarCodecs.Date)" "updatedAt" [] (Gql.DockerAPI.ScalarCodecs.codecs |> Gql.DockerAPI.Scalar.unwrapCodecs |> .codecDate |> .decoder |> Decode.nullable)


{-| -}
spec : SelectionSet decodesTo Gql.DockerAPI.Object.NodeSpec -> SelectionSet (Maybe decodesTo) Gql.DockerAPI.Object.SwarmNode
spec object_ =
    Object.selectionForCompositeField "spec" [] object_ (identity >> Decode.nullable)


{-| -}
description : SelectionSet decodesTo Gql.DockerAPI.Object.NodeDescription -> SelectionSet (Maybe decodesTo) Gql.DockerAPI.Object.SwarmNode
description object_ =
    Object.selectionForCompositeField "description" [] object_ (identity >> Decode.nullable)


{-| -}
status : SelectionSet decodesTo Gql.DockerAPI.Object.NodeStatus -> SelectionSet (Maybe decodesTo) Gql.DockerAPI.Object.SwarmNode
status object_ =
    Object.selectionForCompositeField "status" [] object_ (identity >> Decode.nullable)


{-| -}
managerStatus : SelectionSet decodesTo Gql.DockerAPI.Object.ManagerStatus -> SelectionSet (Maybe decodesTo) Gql.DockerAPI.Object.SwarmNode
managerStatus object_ =
    Object.selectionForCompositeField "managerStatus" [] object_ (identity >> Decode.nullable)


{-| -}
details : SelectionSet decodesTo Gql.DockerAPI.Object.NodeInfo -> SelectionSet (Maybe decodesTo) Gql.DockerAPI.Object.SwarmNode
details object_ =
    Object.selectionForCompositeField "details" [] object_ (identity >> Decode.nullable)
