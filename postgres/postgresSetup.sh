#!/bin/bash
# set source for env
source config.sh
db_endpoint=$DASHBOARD_ENDPOINT
db_user=$DASHBOARD_DB_USER
db_password=$DASHBOARD_DB_PASSWORD

if [[ -n "${db_endpoint+set}" && -n "${db_user+set}" && -n "${db_password+set}" ]];
then
  psql "dbname=$db_endpoint user=$db_user password=$db_password" -f ./CreateTable.sql
else
  echo "Variables are missing"
fi
