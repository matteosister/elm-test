-- Do not manually edit this file, it was auto-generated by dillonkearns/elm-graphql
-- https://github.com/dillonkearns/elm-graphql


module Gql.DockerAPI.Object.Stats exposing (..)

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
activeFile : SelectionSet (Maybe Gql.DockerAPI.ScalarCodecs.Long) Gql.DockerAPI.Object.Stats
activeFile =
    Object.selectionForField "(Maybe ScalarCodecs.Long)" "activeFile" [] (Gql.DockerAPI.ScalarCodecs.codecs |> Gql.DockerAPI.Scalar.unwrapCodecs |> .codecLong |> .decoder |> Decode.nullable)


{-| -}
totalActiveFile : SelectionSet (Maybe Gql.DockerAPI.ScalarCodecs.Long) Gql.DockerAPI.Object.Stats
totalActiveFile =
    Object.selectionForField "(Maybe ScalarCodecs.Long)" "totalActiveFile" [] (Gql.DockerAPI.ScalarCodecs.codecs |> Gql.DockerAPI.Scalar.unwrapCodecs |> .codecLong |> .decoder |> Decode.nullable)


{-| -}
inactiveFile : SelectionSet (Maybe Gql.DockerAPI.ScalarCodecs.Long) Gql.DockerAPI.Object.Stats
inactiveFile =
    Object.selectionForField "(Maybe ScalarCodecs.Long)" "inactiveFile" [] (Gql.DockerAPI.ScalarCodecs.codecs |> Gql.DockerAPI.Scalar.unwrapCodecs |> .codecLong |> .decoder |> Decode.nullable)


{-| -}
totalInactiveFile : SelectionSet (Maybe Gql.DockerAPI.ScalarCodecs.Long) Gql.DockerAPI.Object.Stats
totalInactiveFile =
    Object.selectionForField "(Maybe ScalarCodecs.Long)" "totalInactiveFile" [] (Gql.DockerAPI.ScalarCodecs.codecs |> Gql.DockerAPI.Scalar.unwrapCodecs |> .codecLong |> .decoder |> Decode.nullable)


{-| -}
cache : SelectionSet (Maybe Gql.DockerAPI.ScalarCodecs.Long) Gql.DockerAPI.Object.Stats
cache =
    Object.selectionForField "(Maybe ScalarCodecs.Long)" "cache" [] (Gql.DockerAPI.ScalarCodecs.codecs |> Gql.DockerAPI.Scalar.unwrapCodecs |> .codecLong |> .decoder |> Decode.nullable)


{-| -}
totalCache : SelectionSet (Maybe Gql.DockerAPI.ScalarCodecs.Long) Gql.DockerAPI.Object.Stats
totalCache =
    Object.selectionForField "(Maybe ScalarCodecs.Long)" "totalCache" [] (Gql.DockerAPI.ScalarCodecs.codecs |> Gql.DockerAPI.Scalar.unwrapCodecs |> .codecLong |> .decoder |> Decode.nullable)


{-| -}
activeAnon : SelectionSet (Maybe Gql.DockerAPI.ScalarCodecs.Long) Gql.DockerAPI.Object.Stats
activeAnon =
    Object.selectionForField "(Maybe ScalarCodecs.Long)" "activeAnon" [] (Gql.DockerAPI.ScalarCodecs.codecs |> Gql.DockerAPI.Scalar.unwrapCodecs |> .codecLong |> .decoder |> Decode.nullable)


{-| -}
totalActiveAnon : SelectionSet (Maybe Gql.DockerAPI.ScalarCodecs.Long) Gql.DockerAPI.Object.Stats
totalActiveAnon =
    Object.selectionForField "(Maybe ScalarCodecs.Long)" "totalActiveAnon" [] (Gql.DockerAPI.ScalarCodecs.codecs |> Gql.DockerAPI.Scalar.unwrapCodecs |> .codecLong |> .decoder |> Decode.nullable)


{-| -}
inactiveAnon : SelectionSet (Maybe Gql.DockerAPI.ScalarCodecs.Long) Gql.DockerAPI.Object.Stats
inactiveAnon =
    Object.selectionForField "(Maybe ScalarCodecs.Long)" "inactiveAnon" [] (Gql.DockerAPI.ScalarCodecs.codecs |> Gql.DockerAPI.Scalar.unwrapCodecs |> .codecLong |> .decoder |> Decode.nullable)


{-| -}
totalInactiveAnon : SelectionSet (Maybe Gql.DockerAPI.ScalarCodecs.Long) Gql.DockerAPI.Object.Stats
totalInactiveAnon =
    Object.selectionForField "(Maybe ScalarCodecs.Long)" "totalInactiveAnon" [] (Gql.DockerAPI.ScalarCodecs.codecs |> Gql.DockerAPI.Scalar.unwrapCodecs |> .codecLong |> .decoder |> Decode.nullable)


{-| -}
hierarchicalMemoryLimit : SelectionSet (Maybe Gql.DockerAPI.ScalarCodecs.BigInteger) Gql.DockerAPI.Object.Stats
hierarchicalMemoryLimit =
    Object.selectionForField "(Maybe ScalarCodecs.BigInteger)" "hierarchicalMemoryLimit" [] (Gql.DockerAPI.ScalarCodecs.codecs |> Gql.DockerAPI.Scalar.unwrapCodecs |> .codecBigInteger |> .decoder |> Decode.nullable)


{-| -}
mappedFile : SelectionSet (Maybe Gql.DockerAPI.ScalarCodecs.Long) Gql.DockerAPI.Object.Stats
mappedFile =
    Object.selectionForField "(Maybe ScalarCodecs.Long)" "mappedFile" [] (Gql.DockerAPI.ScalarCodecs.codecs |> Gql.DockerAPI.Scalar.unwrapCodecs |> .codecLong |> .decoder |> Decode.nullable)


{-| -}
totalMappedFile : SelectionSet (Maybe Gql.DockerAPI.ScalarCodecs.Long) Gql.DockerAPI.Object.Stats
totalMappedFile =
    Object.selectionForField "(Maybe ScalarCodecs.Long)" "totalMappedFile" [] (Gql.DockerAPI.ScalarCodecs.codecs |> Gql.DockerAPI.Scalar.unwrapCodecs |> .codecLong |> .decoder |> Decode.nullable)


{-| -}
pgmajfault : SelectionSet (Maybe Gql.DockerAPI.ScalarCodecs.Long) Gql.DockerAPI.Object.Stats
pgmajfault =
    Object.selectionForField "(Maybe ScalarCodecs.Long)" "pgmajfault" [] (Gql.DockerAPI.ScalarCodecs.codecs |> Gql.DockerAPI.Scalar.unwrapCodecs |> .codecLong |> .decoder |> Decode.nullable)


{-| -}
totalPgmajfault : SelectionSet (Maybe Gql.DockerAPI.ScalarCodecs.Long) Gql.DockerAPI.Object.Stats
totalPgmajfault =
    Object.selectionForField "(Maybe ScalarCodecs.Long)" "totalPgmajfault" [] (Gql.DockerAPI.ScalarCodecs.codecs |> Gql.DockerAPI.Scalar.unwrapCodecs |> .codecLong |> .decoder |> Decode.nullable)


{-| -}
pgpgin : SelectionSet (Maybe Gql.DockerAPI.ScalarCodecs.Long) Gql.DockerAPI.Object.Stats
pgpgin =
    Object.selectionForField "(Maybe ScalarCodecs.Long)" "pgpgin" [] (Gql.DockerAPI.ScalarCodecs.codecs |> Gql.DockerAPI.Scalar.unwrapCodecs |> .codecLong |> .decoder |> Decode.nullable)


{-| -}
totalPgpgin : SelectionSet (Maybe Gql.DockerAPI.ScalarCodecs.Long) Gql.DockerAPI.Object.Stats
totalPgpgin =
    Object.selectionForField "(Maybe ScalarCodecs.Long)" "totalPgpgin" [] (Gql.DockerAPI.ScalarCodecs.codecs |> Gql.DockerAPI.Scalar.unwrapCodecs |> .codecLong |> .decoder |> Decode.nullable)


{-| -}
pgpgout : SelectionSet (Maybe Gql.DockerAPI.ScalarCodecs.Long) Gql.DockerAPI.Object.Stats
pgpgout =
    Object.selectionForField "(Maybe ScalarCodecs.Long)" "pgpgout" [] (Gql.DockerAPI.ScalarCodecs.codecs |> Gql.DockerAPI.Scalar.unwrapCodecs |> .codecLong |> .decoder |> Decode.nullable)


{-| -}
totalPgpgout : SelectionSet (Maybe Gql.DockerAPI.ScalarCodecs.Long) Gql.DockerAPI.Object.Stats
totalPgpgout =
    Object.selectionForField "(Maybe ScalarCodecs.Long)" "totalPgpgout" [] (Gql.DockerAPI.ScalarCodecs.codecs |> Gql.DockerAPI.Scalar.unwrapCodecs |> .codecLong |> .decoder |> Decode.nullable)


{-| -}
pgfault : SelectionSet (Maybe Gql.DockerAPI.ScalarCodecs.Long) Gql.DockerAPI.Object.Stats
pgfault =
    Object.selectionForField "(Maybe ScalarCodecs.Long)" "pgfault" [] (Gql.DockerAPI.ScalarCodecs.codecs |> Gql.DockerAPI.Scalar.unwrapCodecs |> .codecLong |> .decoder |> Decode.nullable)


{-| -}
totalPgfault : SelectionSet (Maybe Gql.DockerAPI.ScalarCodecs.Long) Gql.DockerAPI.Object.Stats
totalPgfault =
    Object.selectionForField "(Maybe ScalarCodecs.Long)" "totalPgfault" [] (Gql.DockerAPI.ScalarCodecs.codecs |> Gql.DockerAPI.Scalar.unwrapCodecs |> .codecLong |> .decoder |> Decode.nullable)


{-| -}
rss : SelectionSet (Maybe Gql.DockerAPI.ScalarCodecs.Long) Gql.DockerAPI.Object.Stats
rss =
    Object.selectionForField "(Maybe ScalarCodecs.Long)" "rss" [] (Gql.DockerAPI.ScalarCodecs.codecs |> Gql.DockerAPI.Scalar.unwrapCodecs |> .codecLong |> .decoder |> Decode.nullable)


{-| -}
totalRss : SelectionSet (Maybe Gql.DockerAPI.ScalarCodecs.Long) Gql.DockerAPI.Object.Stats
totalRss =
    Object.selectionForField "(Maybe ScalarCodecs.Long)" "totalRss" [] (Gql.DockerAPI.ScalarCodecs.codecs |> Gql.DockerAPI.Scalar.unwrapCodecs |> .codecLong |> .decoder |> Decode.nullable)


{-| -}
rssHuge : SelectionSet (Maybe Gql.DockerAPI.ScalarCodecs.Long) Gql.DockerAPI.Object.Stats
rssHuge =
    Object.selectionForField "(Maybe ScalarCodecs.Long)" "rssHuge" [] (Gql.DockerAPI.ScalarCodecs.codecs |> Gql.DockerAPI.Scalar.unwrapCodecs |> .codecLong |> .decoder |> Decode.nullable)


{-| -}
totalRssHuge : SelectionSet (Maybe Gql.DockerAPI.ScalarCodecs.Long) Gql.DockerAPI.Object.Stats
totalRssHuge =
    Object.selectionForField "(Maybe ScalarCodecs.Long)" "totalRssHuge" [] (Gql.DockerAPI.ScalarCodecs.codecs |> Gql.DockerAPI.Scalar.unwrapCodecs |> .codecLong |> .decoder |> Decode.nullable)


{-| -}
unevictable : SelectionSet (Maybe Gql.DockerAPI.ScalarCodecs.Long) Gql.DockerAPI.Object.Stats
unevictable =
    Object.selectionForField "(Maybe ScalarCodecs.Long)" "unevictable" [] (Gql.DockerAPI.ScalarCodecs.codecs |> Gql.DockerAPI.Scalar.unwrapCodecs |> .codecLong |> .decoder |> Decode.nullable)


{-| -}
totalUnevictable : SelectionSet (Maybe Gql.DockerAPI.ScalarCodecs.Long) Gql.DockerAPI.Object.Stats
totalUnevictable =
    Object.selectionForField "(Maybe ScalarCodecs.Long)" "totalUnevictable" [] (Gql.DockerAPI.ScalarCodecs.codecs |> Gql.DockerAPI.Scalar.unwrapCodecs |> .codecLong |> .decoder |> Decode.nullable)


{-| -}
totalWriteback : SelectionSet (Maybe Gql.DockerAPI.ScalarCodecs.Long) Gql.DockerAPI.Object.Stats
totalWriteback =
    Object.selectionForField "(Maybe ScalarCodecs.Long)" "totalWriteback" [] (Gql.DockerAPI.ScalarCodecs.codecs |> Gql.DockerAPI.Scalar.unwrapCodecs |> .codecLong |> .decoder |> Decode.nullable)


{-| -}
writeback : SelectionSet (Maybe Gql.DockerAPI.ScalarCodecs.Long) Gql.DockerAPI.Object.Stats
writeback =
    Object.selectionForField "(Maybe ScalarCodecs.Long)" "writeback" [] (Gql.DockerAPI.ScalarCodecs.codecs |> Gql.DockerAPI.Scalar.unwrapCodecs |> .codecLong |> .decoder |> Decode.nullable)