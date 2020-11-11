#!/usr/bin/env bash

docker build . -t tlwtlw/docker-airflow:1.10.3-mssql
docker push tlwtlw/docker-airflow:1.10.3-mssql
