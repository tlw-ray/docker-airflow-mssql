set REPO=winning.repo/dcs
set REPO=172.16.0.183:8082/dcs
docker build -f DockerfileTest . -t %REPO%/wget:v1
pause