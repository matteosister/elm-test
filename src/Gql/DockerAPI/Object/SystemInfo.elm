-- Do not manually edit this file, it was auto-generated by dillonkearns/elm-graphql
-- https://github.com/dillonkearns/elm-graphql


module Gql.DockerAPI.Object.SystemInfo exposing (..)

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
architecture : SelectionSet (Maybe String) Gql.DockerAPI.Object.SystemInfo
architecture =
    Object.selectionForField "(Maybe String)" "architecture" [] (Decode.string |> Decode.nullable)


{-| -}
clusterStore : SelectionSet (Maybe String) Gql.DockerAPI.Object.SystemInfo
clusterStore =
    Object.selectionForField "(Maybe String)" "clusterStore" [] (Decode.string |> Decode.nullable)


{-| -}
cgroupDriver : SelectionSet (Maybe String) Gql.DockerAPI.Object.SystemInfo
cgroupDriver =
    Object.selectionForField "(Maybe String)" "cgroupDriver" [] (Decode.string |> Decode.nullable)


{-| -}
containers : SelectionSet (Maybe Int) Gql.DockerAPI.Object.SystemInfo
containers =
    Object.selectionForField "(Maybe Int)" "containers" [] (Decode.int |> Decode.nullable)


{-| -}
containersRunning : SelectionSet (Maybe Int) Gql.DockerAPI.Object.SystemInfo
containersRunning =
    Object.selectionForField "(Maybe Int)" "containersRunning" [] (Decode.int |> Decode.nullable)


{-| -}
containersStopped : SelectionSet (Maybe Int) Gql.DockerAPI.Object.SystemInfo
containersStopped =
    Object.selectionForField "(Maybe Int)" "containersStopped" [] (Decode.int |> Decode.nullable)


{-| -}
containersPaused : SelectionSet (Maybe Int) Gql.DockerAPI.Object.SystemInfo
containersPaused =
    Object.selectionForField "(Maybe Int)" "containersPaused" [] (Decode.int |> Decode.nullable)


{-| -}
cpuCfsPeriod : SelectionSet (Maybe Bool) Gql.DockerAPI.Object.SystemInfo
cpuCfsPeriod =
    Object.selectionForField "(Maybe Bool)" "cpuCfsPeriod" [] (Decode.bool |> Decode.nullable)


{-| -}
cpuCfsQuota : SelectionSet (Maybe Bool) Gql.DockerAPI.Object.SystemInfo
cpuCfsQuota =
    Object.selectionForField "(Maybe Bool)" "cpuCfsQuota" [] (Decode.bool |> Decode.nullable)


{-| -}
debug : SelectionSet (Maybe Bool) Gql.DockerAPI.Object.SystemInfo
debug =
    Object.selectionForField "(Maybe Bool)" "debug" [] (Decode.bool |> Decode.nullable)


{-| -}
dockerRootDir : SelectionSet (Maybe String) Gql.DockerAPI.Object.SystemInfo
dockerRootDir =
    Object.selectionForField "(Maybe String)" "dockerRootDir" [] (Decode.string |> Decode.nullable)


{-| -}
storageDriver : SelectionSet (Maybe String) Gql.DockerAPI.Object.SystemInfo
storageDriver =
    Object.selectionForField "(Maybe String)" "storageDriver" [] (Decode.string |> Decode.nullable)


{-| driverStatus: [[String]]
-}
executionDriver : SelectionSet (Maybe String) Gql.DockerAPI.Object.SystemInfo
executionDriver =
    Object.selectionForField "(Maybe String)" "executionDriver" [] (Decode.string |> Decode.nullable)


{-| -}
experimentalBuild : SelectionSet (Maybe Bool) Gql.DockerAPI.Object.SystemInfo
experimentalBuild =
    Object.selectionForField "(Maybe Bool)" "experimentalBuild" [] (Decode.bool |> Decode.nullable)


{-| -}
httpProxy : SelectionSet (Maybe String) Gql.DockerAPI.Object.SystemInfo
httpProxy =
    Object.selectionForField "(Maybe String)" "httpProxy" [] (Decode.string |> Decode.nullable)


{-| -}
httpsProxy : SelectionSet (Maybe String) Gql.DockerAPI.Object.SystemInfo
httpsProxy =
    Object.selectionForField "(Maybe String)" "httpsProxy" [] (Decode.string |> Decode.nullable)


{-| -}
id : SelectionSet Gql.DockerAPI.ScalarCodecs.Id Gql.DockerAPI.Object.SystemInfo
id =
    Object.selectionForField "ScalarCodecs.Id" "id" [] (Gql.DockerAPI.ScalarCodecs.codecs |> Gql.DockerAPI.Scalar.unwrapCodecs |> .codecId |> .decoder)


{-| -}
ipv4Forwarding : SelectionSet (Maybe Bool) Gql.DockerAPI.Object.SystemInfo
ipv4Forwarding =
    Object.selectionForField "(Maybe Bool)" "ipv4Forwarding" [] (Decode.bool |> Decode.nullable)


{-| -}
images : SelectionSet (Maybe Int) Gql.DockerAPI.Object.SystemInfo
images =
    Object.selectionForField "(Maybe Int)" "images" [] (Decode.int |> Decode.nullable)


{-| -}
indexServerAddress : SelectionSet (Maybe String) Gql.DockerAPI.Object.SystemInfo
indexServerAddress =
    Object.selectionForField "(Maybe String)" "indexServerAddress" [] (Decode.string |> Decode.nullable)


{-| -}
initPath : SelectionSet (Maybe String) Gql.DockerAPI.Object.SystemInfo
initPath =
    Object.selectionForField "(Maybe String)" "initPath" [] (Decode.string |> Decode.nullable)


{-| -}
initSha1 : SelectionSet (Maybe String) Gql.DockerAPI.Object.SystemInfo
initSha1 =
    Object.selectionForField "(Maybe String)" "initSha1" [] (Decode.string |> Decode.nullable)


{-| -}
kernelMemory : SelectionSet (Maybe Bool) Gql.DockerAPI.Object.SystemInfo
kernelMemory =
    Object.selectionForField "(Maybe Bool)" "kernelMemory" [] (Decode.bool |> Decode.nullable)


{-| -}
kernelVersion : SelectionSet (Maybe String) Gql.DockerAPI.Object.SystemInfo
kernelVersion =
    Object.selectionForField "(Maybe String)" "kernelVersion" [] (Decode.string |> Decode.nullable)


{-| -}
labels : SelectionSet (Maybe (List (Maybe String))) Gql.DockerAPI.Object.SystemInfo
labels =
    Object.selectionForField "(Maybe (List (Maybe String)))" "labels" [] (Decode.string |> Decode.nullable |> Decode.list |> Decode.nullable)


{-| -}
memTotal : SelectionSet (Maybe Gql.DockerAPI.ScalarCodecs.Long) Gql.DockerAPI.Object.SystemInfo
memTotal =
    Object.selectionForField "(Maybe ScalarCodecs.Long)" "memTotal" [] (Gql.DockerAPI.ScalarCodecs.codecs |> Gql.DockerAPI.Scalar.unwrapCodecs |> .codecLong |> .decoder |> Decode.nullable)


{-| -}
memoryLimit : SelectionSet (Maybe Bool) Gql.DockerAPI.Object.SystemInfo
memoryLimit =
    Object.selectionForField "(Maybe Bool)" "memoryLimit" [] (Decode.bool |> Decode.nullable)


{-| -}
cpus : SelectionSet (Maybe Int) Gql.DockerAPI.Object.SystemInfo
cpus =
    Object.selectionForField "(Maybe Int)" "cpus" [] (Decode.int |> Decode.nullable)


{-| -}
eventsListener : SelectionSet (Maybe Int) Gql.DockerAPI.Object.SystemInfo
eventsListener =
    Object.selectionForField "(Maybe Int)" "eventsListener" [] (Decode.int |> Decode.nullable)


{-| -}
fileDescriptors : SelectionSet (Maybe Int) Gql.DockerAPI.Object.SystemInfo
fileDescriptors =
    Object.selectionForField "(Maybe Int)" "fileDescriptors" [] (Decode.int |> Decode.nullable)


{-| -}
goroutines : SelectionSet (Maybe Int) Gql.DockerAPI.Object.SystemInfo
goroutines =
    Object.selectionForField "(Maybe Int)" "goroutines" [] (Decode.int |> Decode.nullable)


{-| -}
name : SelectionSet (Maybe String) Gql.DockerAPI.Object.SystemInfo
name =
    Object.selectionForField "(Maybe String)" "name" [] (Decode.string |> Decode.nullable)


{-| -}
noProxy : SelectionSet (Maybe String) Gql.DockerAPI.Object.SystemInfo
noProxy =
    Object.selectionForField "(Maybe String)" "noProxy" [] (Decode.string |> Decode.nullable)


{-| -}
oomKillDisable : SelectionSet (Maybe Bool) Gql.DockerAPI.Object.SystemInfo
oomKillDisable =
    Object.selectionForField "(Maybe Bool)" "oomKillDisable" [] (Decode.bool |> Decode.nullable)


{-| -}
operatingSystem : SelectionSet (Maybe String) Gql.DockerAPI.Object.SystemInfo
operatingSystem =
    Object.selectionForField "(Maybe String)" "operatingSystem" [] (Decode.string |> Decode.nullable)


{-| -}
osType : SelectionSet (Maybe String) Gql.DockerAPI.Object.SystemInfo
osType =
    Object.selectionForField "(Maybe String)" "osType" [] (Decode.string |> Decode.nullable)


{-| -}
plugins : SelectionSet decodesTo Gql.DockerAPI.Object.Plugins -> SelectionSet (Maybe decodesTo) Gql.DockerAPI.Object.SystemInfo
plugins object_ =
    Object.selectionForCompositeField "plugins" [] object_ (identity >> Decode.nullable)


{-| -}
registryConfig : SelectionSet decodesTo Gql.DockerAPI.Object.RegistryConfig -> SelectionSet (Maybe decodesTo) Gql.DockerAPI.Object.SystemInfo
registryConfig object_ =
    Object.selectionForCompositeField "registryConfig" [] object_ (identity >> Decode.nullable)


{-| -}
serverVersion : SelectionSet (Maybe String) Gql.DockerAPI.Object.SystemInfo
serverVersion =
    Object.selectionForField "(Maybe String)" "serverVersion" [] (Decode.string |> Decode.nullable)


{-| -}
swapLimit : SelectionSet (Maybe Bool) Gql.DockerAPI.Object.SystemInfo
swapLimit =
    Object.selectionForField "(Maybe Bool)" "swapLimit" [] (Decode.bool |> Decode.nullable)


{-| -}
swarm : SelectionSet decodesTo Gql.DockerAPI.Object.SwarmInfo -> SelectionSet (Maybe decodesTo) Gql.DockerAPI.Object.SystemInfo
swarm object_ =
    Object.selectionForCompositeField "swarm" [] object_ (identity >> Decode.nullable)


{-| systemStatus: [[String]]
-}
systemTime : SelectionSet (Maybe Gql.DockerAPI.ScalarCodecs.Date) Gql.DockerAPI.Object.SystemInfo
systemTime =
    Object.selectionForField "(Maybe ScalarCodecs.Date)" "systemTime" [] (Gql.DockerAPI.ScalarCodecs.codecs |> Gql.DockerAPI.Scalar.unwrapCodecs |> .codecDate |> .decoder |> Decode.nullable)