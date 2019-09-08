# 构建一个中文镜像

# FROM:
# VERSION 1.10.4
# AUTHOR: Matthieu "Puckel_" Roisil
# DESCRIPTION: Basic Airflow container
# BUILD: docker build --rm -t puckel/docker-airflow .
# SOURCE: https://github.com/puckel/docker-airflow

FROM python:3.7-slim-stretch
LABEL maintainer="tlw_ray@163.com"

# Never prompts the user for choices on installation/configuration of packages
ENV DEBIAN_FRONTEND noninteractive
ENV TERM linux

RUN apt-get update -yqq
RUN apt-get upgrade -yqq
RUN apt-get install -yqq --no-install-recommends apt-utils

RUN apt-get update -yqq
RUN apt-get upgrade -yqq
RUN apt-get install -yqq --no-install-recommends locales locales-all

# Define zh_CN.
ENV LANGUAGE zh_CN.UTF-8
ENV LANG zh_CN.UTF-8
ENV LC_ALL zh_CN.UTF-8
ENV LC_CTYPE zh_CN.UTF-8
ENV LC_MESSAGES zh_CN.UTF-8
ENV TZ Asia/Shanghai
