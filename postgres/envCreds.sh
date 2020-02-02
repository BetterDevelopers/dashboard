#!/bin/bash
# set source for env
source config.sh
psql "dbname=$db user=$user password=$pw" -f ./CreateTable.sql
