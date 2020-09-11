set BASE_IMAGE=tlwtlw/docker-airflow:1.10.12-mssql
set BASE_IMAGE=tlwtlw/docker-airflow:1.10.12-psql
docker pull %BASE_IMAGE%
REM docker tag %BASE_IMAGE% winning.repo/dcs/%BASE_IMAGE%
REM docker push winning.repo/dcs/%BASE_IMAGE%
pause