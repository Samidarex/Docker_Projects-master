@echo off
SET HUB_USERNAME = credentials(dockerhub.HUB_USR)

docker tag mongo:lates-version $HUB_USERNAME/mongo:lates-version
docker tag api:lates-version $HUB_USERNAME/api:lates-version
docker tag client:lates-version $HUB_USERNAME/client:lates-version

docker push $HUB_USERNAME/mongo:lates-version
docker push $HUB_USERNAME/api:lates-version
docker push $HUB_USERNAME/client:lates-version

echo "Pushed succesfully"