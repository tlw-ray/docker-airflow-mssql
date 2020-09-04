docker build -f DockerfileKettle . -t 172.16.0.183:8082/dcs/docker-airflow:1.10.11-kettle
docker push 172.16.0.183:8082/dcs/docker-airflow:1.10.11-kettle