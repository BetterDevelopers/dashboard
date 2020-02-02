#!/bin/bash
source config.sh
psql "dbname=$db user=$user password=$pw" -f ./CreateTable.sql
