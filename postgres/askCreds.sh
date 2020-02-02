#!/bin/bash

echo "Enter your username"
read user
echo "Enter your database name"
read db
echo "Enter you password"
read pw
psql "dbname=$db user=$user password=$pw" -f ./CreateTable.sql
