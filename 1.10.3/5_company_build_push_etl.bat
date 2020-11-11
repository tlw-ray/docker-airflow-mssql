set REPO=winning.repo/dcs
rem set REPO=172.16.0.183:8082/dcs
move ..\resource ./
docker build -f DockerfileETL . -t %REPO%/docker-airflow:1.10.3-etl
move resource ../
docker push %REPO%/docker-airflow:1.10.3-etl
pause