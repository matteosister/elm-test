# Elm test


## GraphQL
Per avviare il server GraphQL di esempio la prima volta, fare:

    docker pull rm3l/docker-api-graphql

    docker run \
    --name docker-api-graphql \
    -d \
    -p 8080:8080 \
    -v /var/run/docker.sock:/var/run/docker.sock \
    rm3l/docker-api-graphql

Per le volte successive alla prima:

    docker restart /docker-api-graphql

Per vedere le API, andare su http://localhost:8080/graphiql

Per generare il codice GraphQL, lanciare:

    elm-graphql http://localhost:8080/graphql --base Gql.DockerAPI --output src