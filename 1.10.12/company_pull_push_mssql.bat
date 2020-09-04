docker pull tlwtlw/docker-airflow:1.10.12-mssql
docker tag tlwtlw/docker-airflow:1.10.12-mssql 172.16.0.183:8082/dcs/docker-airflow:1.10.12-mssql
docker push 172.16.0.183:8082/dcs/docker-airflow:1.10.12-mssql