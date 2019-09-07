docker run \
--name airflow-single \
-d \
-P \
-e AIRFLOW__CORE__FERNET_KEY=6U-zYCcMQQifU7Vwc3es9TnZJkJ8AGZoLANfqDkKjts= \
-e AIRFLOW__CORE__SQL_ALCHEMY_CONN=sqlite:////usr/local/airflow/airflow.db \
-e AIRFLOW__CORE_EXECUTOR=SequentialExecutor \
-v /etc/localtime:/etc/localtime \
-v /home/tlw/2019/p07-airflow/docker-airflow-mssql/dags/:/usr/local/airflow/dags/ \
tlwtlw/docker-airflow:1.10.3.1-mssql
