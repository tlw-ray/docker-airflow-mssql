#!/usr/bin/env bash

docker exec -t mssql /opt/mssql-tools/bin/sqlcmd -U sa -P @Welcome120 -i /create_airflow.sql
