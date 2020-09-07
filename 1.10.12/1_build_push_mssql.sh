#!/usr/bin/env bash

docker build . -t tlwtlw/docker-airflow:1.10.12-mssql
docker push tlwtlw/docker-airflow:1.10.12-mssql
