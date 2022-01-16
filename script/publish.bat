@echo off
set ALREADY_PUSHED=true

IF %ALREADY_PUSHED%==true echo "Docker image already exists, skipping pull" 