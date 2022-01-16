@echo off
set DOCKER_USERNAME = credentials(dockerhub.DOCKER_USR)
set DOCKER_PASSWORD = credentials(dockerhub.DOCKER_PWD)
docker login -u "$DOCKER_USERNAME" -p "$DOCKER_PASSWORD"
echo "Logged in succesfully"