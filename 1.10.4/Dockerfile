# VERSION 1.10.4
# AUTHOR: Matthieu "Puckel_" Roisil
# DESCRIPTION: Basic Airflow container
# BUILD: docker build --rm -t puckel/docker-airflow .
# SOURCE: https://github.com/puckel/docker-airflow

FROM python:3.7-slim-stretch
LABEL maintainer="Puckel_"

# Never prompts the user for choices on installation/configuration of packages
ENV DEBIAN_FRONTEND noninteractive
ENV TERM linux

# Airflow
ARG AIRFLOW_VERSION=1.10.4
ARG AIRFLOW_USER_HOME=/usr/local/airflow
ARG AIRFLOW_DEPS=""
ARG PYTHON_DEPS=""
ENV AIRFLOW_HOME=${AIRFLOW_USER_HOME}

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

RUN set -ex \
    && buildDeps=' \
        freetds-dev \
        libkrb5-dev \
        libsasl2-dev \
        libssl-dev \
        libffi-dev \
        libpq-dev \
        git \
    ' \
    && apt-get update -yqq \
    && apt-get upgrade -yqq \
    && apt-get install -yqq --no-install-recommends \
        $buildDeps \
        freetds-bin \
        build-essential \
        default-libmysqlclient-dev \
        apt-utils \
        curl \
        rsync \
        netcat \
        locales \
        language-pack-zh-hans \
        language-pack-zh-hant \
        language-pack-zh-hans-base \
        language-pack-zh-hant-base \
    && sed -i 's/^# zh_CN.UTF-8 UTF-8$/zh_CN.UTF-8 UTF-8/g' /etc/locale.gen \
    && locale-gen \
    && update-locale LANG=zh_CN.UTF-8 LC_ALL=zh_CN.UTF-8 \
    && useradd -ms /bin/bash -d ${AIRFLOW_USER_HOME} airflow \
    && pip install -U pip setuptools wheel \
    && pip install pytz \
    && pip install pyOpenSSL \
    && pip install ndg-httpsclient \
    && pip install pyasn1 \
    && pip install pymssql \
    && pip install apache-airflow[crypto,celery,postgres,hive,jdbc,mysql,mssql,ssh${AIRFLOW_DEPS:+,}${AIRFLOW_DEPS}]==${AIRFLOW_VERSION} \
    && pip install 'redis==3.2' \
    && pip install 'Flask==1.0.4' \
    && if [ -n "${PYTHON_DEPS}" ]; then pip install ${PYTHON_DEPS}; fi \
    && apt-get purge --auto-remove -yqq $buildDeps \
    && apt-get autoremove -yqq --purge \
    && apt-get clean \
    && rm -rf \
        /var/lib/apt/lists/* \
        /tmp/* \
        /var/tmp/* \
        /usr/share/man \
        /usr/share/doc \
        /usr/share/doc-base

RUN /usr/share/locales/install-language-pack zh_CN
COPY entrypoint.sh /entrypoint.sh
COPY airflow.cfg ${AIRFLOW_USER_HOME}/airflow.cfg
ADD src/timezone.py /usr/local/lib/python3.6/site-packages/airflow/utils/
ADD src/sqlalchemy.py /usr/local/lib/python3.6/site-packages/airflow/utils/
ADD src/master.html /usr/local/lib/python3.6/site-packages/airflow/www/templates/admin/

RUN chown -R airflow: ${AIRFLOW_USER_HOME}

EXPOSE 8080 5555 8793

USER airflow
WORKDIR ${AIRFLOW_USER_HOME}
ENTRYPOINT ["/entrypoint.sh"]
CMD ["webserver"] # set default arg for entrypoint
