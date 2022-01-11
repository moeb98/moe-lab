# Tandoor

Tandoor is an open source Recipe Management System, deployed in three docker
containers here: one with the underlying database, another with the web server
and ultimately one with the Tandoor application itself.

## Installation

For using Traefik in the configuration of the provided docker-compose files
please create a traefik_proxy network in docker as follows (if not existing already):

## Create network

```bash
docker network create traefik_proxy
```

## Docker configuration

All individual configurations for the docker-compose file are set via
environment variables in a .env file. Thus, you need to create a hidden
file with the name .env (including the '.') containing at least the
following environment variables:

```bash
POSTGRES_HOST=db_recipes
POSTGRES_PORT=5432
POSTGRES_USER=your_djangouser
POSTGRES_PASSWORD=your_db_password
POSTGRES_DB=your_djangodb
TANDOOR_DOMAIN=your_domain
```

Also important is to set the ```MEDIA_URL´´´ to the exakt http address you
are serving media from, e.g. https://recipes.your_domain.com/media/

## Start up

Just fire up the docker-compose file as usual...

````bash
docker-compose up -d
````
