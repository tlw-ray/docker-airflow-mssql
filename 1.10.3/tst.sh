#!/usr/bin/env bash

case "$1" in
  webserver)
    echo "airflow initdb"
    if [ "$AIRFLOW__CORE__EXECUTOR" = "LocalExecutor" ]; then
      # With the "Local" executor it should all run in one container.
      echo "airflow scheduler &"
    fi
    echo "airflow webserver"
    ;;
  worker|scheduler)
    # To give the webserver time to run initdb.
    sleep 10
    echo "$@"
    ;;
  flower)
    sleep 10
    echo "$@"
    ;;
  version)
    echo "$@"
    ;;
  *)
    # The command is something like bash, not an airflow subcommand. Just run it in the right environment.
    echo "$@"
    ;;
esac
