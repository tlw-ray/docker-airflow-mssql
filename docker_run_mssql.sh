docker run \
--name mssql \
--rm \
-e 'ACCEPT_EULA=Y' \
-e 'SA_PASSWORD=@Welcome120' \
-e 'MSSQL_PID=Express' \
-p 1433:1433 \
-v /home/tlw/2019/p07-airflow/mssql_data/:/var/opt/mssql/data/ \
-d \
mcr.microsoft.com/mssql/server:2017-latest-ubuntu
