#!/bin/bash

if [[ -n "${DATABASE_ENDPOINT+set}" && -n "${DATABASE_USER+set}" && -n "${DATABASE_PASSWORD+set}" ]];
then
  psql "dbname=$DATABASE_ENDPOINT user=$DATABASE_USER password=$DATABASE_PASSWORD" -f ./CreateTable.sql
else
  echo "Variables are missing"
fi
