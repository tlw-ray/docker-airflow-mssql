set DOCKER_REPO=tlwtlw
set COMPANY_REPO=winning.repo/dcs
REM set COMPANY_REPO=172.16.0.183:8082/dcs
set IMAGE=docker-airflow:1.10.12.1-psql
docker pull %DOCKER_REPO%/%IMAGE%
docker tag %DOCKER_REPO%/%IMAGE% %COMPANY_REPO%/%IMAGE%
docker push %COMPANY_REPO%/%IMAGE%
pause