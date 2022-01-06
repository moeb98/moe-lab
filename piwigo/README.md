# Piwigo

Piwigo is a gallery application to quickly share photographs (and videos)
in an easy, user-friendly and also good-looking way.

## Installation

For using Piwigo in the configuration of the provided docker-compose
files please create a traefik_proxy network in docker as follows
(if not existing already):

## Create network

```bash
docker network create traefik_proxy
```

## Docker configuration

All individual configurations for the docker-compose file are set via
environment variables in a .env file. Thus, you need to create a hidden
file with the name .env (including the '.') containing the following
environment variables:

````bash
PIWIGO_DB_ROOT_PASSWORD=your_db_root_password
PIWIGO_DB_NAME=your_db_name
PIWIGO_DB_USER=your_db_user
PIWIGO_DB_PASSWORD=your_db_user_password
````

## Start up

After that, just fire up the docker-compose file as usual...

````bash
docker-compose up -d
````
