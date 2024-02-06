#API
IMAGE_NAME_APP="app"
if docker images --format "{{.Repository}}:{{.Tag}}" | grep -q "^${IMAGE_NAME_APP}$"; then
    docker rmi ${IMAGE_NAME_APP}
docker build -t app -f Dockerfile.app .

#DB
IMAGE_NAME_DB="db"
if docker images --format "{{.Repository}}:{{.Tag}}" | grep -q "^${IMAGE_NAME_DB}$"; then
    docker rmi ${IMAGE_NAME_DB}
docker build -t db -f Dockerfile.db .