## Getting Setup

Ability to spin up a table inside of a postgres db. Table is for users and has three columns.

- ID: int
- username: text
- password: text

This can be done by running the `createTable.sql` file

A better way to do this however would be a bash script, which connects to a db and then runs the script.

### BASH

Navigate to postgres directory:

`cd postgres`

Enable the script permissions:

`chmod 700 postgresSetup.sh`

Run the Script

`./postgresSetup.sh`

It will create table in database using variables `DATABASE_ENDPOINT`, `DATABASE_USER` and `DATABASE_PASSWORD`. If any variables are unset then it will provide a simple `variables are missing` error and close out.
