#!/usr/bin/env bash

docker pull tlwtlw/docker-airflow:1.10.4-mssql
docker run \
--name airflow \
-p 8080:8080 \
-e TZ=Asia/Shanghai \
-e LOAD_EX=y \
-e EXECUTOR=Local \
-e MSSQL_HOST=192.168.0.120 \
-e MSSQL_USER=sa \
-e MSSQL_PASSWORD=@Welcome120 \
-e AIRFLOW__SQL_ALCHEMY_SCHEMA= \
-e AIRFLOW__SCHEDULER_DAG_DIR_LIST_INTERVAL=30 \
-v "${PWD}/../dags/:/usr/local/airflow/dags/" \
-v "${PWD}/airflow.cfg:/usr/local/airflow/airflow.cfg" \
-v "${PWD}/entrypoint.sh:/entrypoint.sh" \
-it \
--rm \
tlwtlw/docker-airflow:1.10.4-mssql /bin/bash
