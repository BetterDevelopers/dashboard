#!/bin/bash


# Grab latest version of Docker
docker pull postgres

# Run Docker image, name container and pass in postgres password env
docker run -d --name bd_dashboard -e POSTGRES_PASSWORD=btrdvlpr -v bddata:/var/lib/postgresql/data -p 54320:5432 postgres

#connect to psql and create DB
docker exec -it bd_dashboard psql -U postgres -c "create database bd_dashboard"
# Run psql again
docker exec -it bd_dashboard psql -U postgres
#Connect to DB
\c bd_dashboard
# Create USERS table
CREATE TABLE users (id int, username text, password text);
# Check table was created successfuly
\d
