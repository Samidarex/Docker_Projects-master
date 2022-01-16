@echo off
echo docker-compose pull
echo api Skipped
echo client Skipped
echo mongo Pulling
ping localhost -n 5 >nul
echo mongo Pulled

echo:
echo "Pulled succesfully"