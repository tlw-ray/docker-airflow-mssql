#!/usr/bin/env bash

airflow initdb
airflow webserver
airflow scheduler
