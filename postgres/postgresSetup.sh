#!/bin/bash
 psql "dbname=$DATABASE_ENDPOINT user=$DATABASE_USER password=$DATABASE_PASSORD" -f ./CreateTable.sql
