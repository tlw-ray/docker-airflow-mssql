mv ..\resource ./
docker build -f DockerfileETL . -t 172.16.0.183:8082/dcs/docker-airflow:1.10.12-etl
mv resource ../
docker push 172.16.0.183:8082/dcs/docker-airflow:1.10.12-etl