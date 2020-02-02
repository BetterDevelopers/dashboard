## Getting Setup

To start we need to get the database up and running and get the users table created.

### Using the script to get setup

simpy run the `postgresDashboard.sh` file from your terminal.

### Manual Setup

#### TL:DR;

```
$ docker pull postgres
$ docker run -d --name bd_dashboard -e POSTGRES_PASSWORD=btrdvlpr -v bddata:/var/lib/postgresql/data -p $ 54320:5432 postgres
$ docker exec -it bd_dashboard psql -U postgres -c "create database bd_dashboard"
$ docker exec -it bd_dashboard psql -U postgres
$ \c bd_dashboard
$ CREATE TABLE users (id int, username text, password text);
$ \d
```

We are going to pull down the latest postgres image from Docker, to do this simply run the following command, assuming you have Docker installed:

```
docker pull postgres
```

Next we are going to run the image with the following command.

```
docker run -d --name bd_dashboard -e POSTGRES_PASSWORD=btrdvlpr -v bddata:/var/lib/postgresql/data -p 54320:5432 postgres

```

Lets take a closer look at the above command.

- `docker run` runs our docker image
- `-d` Run container in background and print container ID
- `--name` A name/id/reference for the container
- `-e` Set environmental variable, in this case for our `POSTGRES_PASSWORD`
- `-v` Bind mount a volume
- `-p` Publish a container's port(s) to the host, in this case 54320:5432

To check everything is working run:

```
docker logs -f bd_dashboard
```

Now we need to run `psql` and create our database

```
docker exec -it bd_dashboard psql -U postgres -c "create database bd_dashboard"
```

Conntect to `psql` again

```
docker exec -it bd_dashboard psql -U postgres
```

List all databases:

```
\l
```

Hopefully you should see `bd_dashboard` in the list. Let's connect to it:

```
\c bd_dashboard
```

Now we can go ahead and create a `users` table with 3 columns `id`, `username` and `password`. We also specify `id` as a number (int) and username and password as text:

```
CREATE TABLE users (id int, username text, password text);
```

Finally to check that the table is created run the follwing command:

```
\d
```

You should now see your users table and you are all setup.
