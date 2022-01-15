@echo off

set "docker_image_exists=false"

if %docker_image_exists% == "false"
( 
    echo "docker pull build.target.com\my-app:latest" 
) 
else
( 
    echo "Docker image already exists, skipping pull" 
)