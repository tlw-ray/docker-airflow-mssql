#!/usr/bin/env bash

docker run \
--name airflow \
-d \
-p 8080:8080 \
-e TZ=Asia/Shanghai \
-e LOAD_EX=y \
-e EXECUTOR=Local \
-e DAG_DIR_LIST_INTERVAL=30 \
-e MSSQL_HOST=192.168.0.120 \
-e MSSQL_USER=sa \
-e MSSQL_PASSWORD=@Welcome120 \
-e AIRFLOW__SQL_ALCHEMY_SCHEMA= \
-v "${PWD}/../dags/:/usr/local/airflow/dags/" \
-v "${PWD}/airflow.cfg:/usr/local/airflow/airflow.cfg" \
-v "${PWD}/entrypoint.sh:/entrypoint.sh" \
tlwtlw/docker-airflow:1.10.4-mssql
