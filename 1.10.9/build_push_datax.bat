docker build -f DockerfileDatax . -t 172.16.0.183:8082/dcs/docker-airflow:1.10.9-datax
docker push 172.16.0.183:8082/dcs/docker-airflow:1.10.9-datax