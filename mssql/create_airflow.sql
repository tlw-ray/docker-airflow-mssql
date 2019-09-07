USE MASTER
GO

CREATE DATABASE airflow ON
  PRIMARY
  (
    NAME = airflow_data,
    FILENAME = '/var/opt/mssql/data/airflow.mdf',
    SIZE = 10MB,
    MAXSIZE = UNLIMITED,
    FILEGROWTH = 10MB
  )
  LOG ON
  (
    NAME = airflow_log,
    FILENAME = '/var/opt/mssql/data/airflow.ldf',
    SIZE = 10MB,
    MAXSIZE = UNLIMITED,
    FILEGROWTH = 10MB
  )
GO
