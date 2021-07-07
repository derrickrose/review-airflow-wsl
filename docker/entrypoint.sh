#!/bin/sh
CMD_AIRFLOW_COMMAND_PASSED="$1"

case ${CMD_AIRFLOW_COMMAND_PASSED} in
  "webserver")
    airflow db init
    exec airflow webserver
    ;;
  "scheduler")
    exec airflow scheduler
    ;;
  *)
    exec "$@" # would execute de command which is passed
    ;;
esac