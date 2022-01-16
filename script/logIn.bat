@echo off
set IMAGE_EXISTS=true
set LOGGED_STATUS=true
echo docker login -u samidarex -p $DOCKER_PASSWORD
ping localhost -n 5 >nul
echo WARNING! Using --password via the CLI is insecure. Use --password-stdin.
echo Login Succeeded
echo:
IF %LOGGED_STATUS%==true echo "Logged in succesfully"
IF %IMAGE_EXISTS%==true echo "Docker image already exists, skipping pull"
