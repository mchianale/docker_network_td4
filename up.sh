#API
CON_APP="app"
if docker ps -q -f name=^/${CON_APP}$; then
    docker stop "${CON_APP}"
fi
if docker ps -a -q -f name=^/${CON_APP}$; then
    docker rm "${CON_APP}"
fi

docker run -d -p 8080:8080 --name app app
docker network connect my-tiny-network app

#DB
CON_DB="db"
if docker ps -q -f name=^/${CON_DB}$; then
    docker stop "${CON_DB}"
fi
if docker ps -a -q -f name=^/${CON_DB}$; then
    docker rm "${CON_DB}"
fi
docker run -d -p 5432:5432 --name db db
docker network connect my-tiny-network db







