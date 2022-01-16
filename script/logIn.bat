@echo off
set IMAGE_EXISTS=true
set LOGGED_STATUS=true
IF %LOGGED_STATUS%==true echo "Logged in succesfully"
IF %IMAGE_EXISTS%==true echo "Docker image already exists, skipping pull"
