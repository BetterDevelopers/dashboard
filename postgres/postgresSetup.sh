#!/bin/bash

if [[ -n "${DATABASE_ENDPOINT+set}" && -n "${DATABASE_USER+set}" && -n "${DATABASE_PASSWORD+set}" ]];
then
echo "Creating users table. Database: $DATABASE_ENDPOINT, user: $DATABASE_USER"
  psql "dbname=$DATABASE_ENDPOINT user=$DATABASE_USER password=$DATABASE_PASSWORD" -f ./CreateTable.sql
else
    if [[ ! -n "${DATABASE_ENDPOINT+set}" ]]
    then
      db="DATABASE_ENDPOINT"
    fi
    if [[ ! -n "${DATABASE_USER+set}" ]]
    then
      us="DATABASE_USER"
    fi
    if [[ ! -n "${DATABASE_PASSWORD+set}" ]]
    then
    pw="DATABASE_PASSWORD"
fi
  echo -e "Variables are missing.\nHere they are:\n$db \n$us \n$pw \nBye"
fi






