## Getting Setup

Ability to spin up a table inside of a postgres db. Table is for users and has three columns.

- ID: int
- username: text
- password: text

This can be done by running the `createTable.sql` file

A better way to do this however would be a bash script, which connects to a db and then runs the script.

### Ask user for creds

Navigate to postgres directory:

`cd postgres`

Enable the script permissions:

`chmod 700 askCreds.sh`

Run the Script

`askCreds.sh`

It will prompt you for your postgres username, database name and password. Once you provide these then your table will be created in your desired db.

### Env Creds

Edit the config.sh with your username, database name and password.

Navigate to postgres directory:

`cd postgres`

Enable the script permissions:

`chmod 700 envCreds.sh`

Run the Script

`envCreds.sh`

Table will be created in the database you set in the config.sh file.
