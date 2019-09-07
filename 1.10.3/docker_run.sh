docker run \
--name airflow \
--rm \
-d \
-p 8080:8080 \
-e LOAD_EX=y \
-e DAG_DIR_LIST_INTERVAL=30 \
-e MSSQL_HOST=192.168.0.120 \
-e MSSQL_USER=sa \
-e MSSQL_PASSWORD=@Welcome120 \
-e AIRFLOW__SQL_ALCHEMY_SCHEMA=dbo \
-v "${PWD}/../dags/:/usr/local/airflow/dags/" \
-v "${PWD}/airflow.cfg:/usr/local/airflow/airflow.cfg" \
-v "${PWD}/entrypoint.sh:/entrypoint.sh" \
tlwtlw/docker-airflow:1.10.3.1-mssql
