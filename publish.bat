@echo off

set "docker_image_exists=false"

if %docker_image_exists% == "false" ( docker pull build.target.com\my-app:latest ) 
ELSE ( echo "Docker image already exists, skipping pull" )