# Wordpress
Wordpress is a popular Content Management System, deployed in two docker containers here: one with the underlying database, the other with the wordpress application itself. 

## Installation
For using Traefik in the configuration of the provided docker-compose files please create a traefik_proxy network in docker as follows (if not existing already):

## Create network
```bash
docker network create traefik_proxy
```

## Docker configuration 
All individual configurations for the docker-compose file are set via environment variables in a .env file. Thus, you need to create a hidden file with the name .env (including the '.') containing the following environment variables:
```bash
WORDPRESS_DB_ROOT_PASSWORD=your_db_root_password
WORDPRESS_DB_NAME=your_db_name
WORDPRESS_DB_USER=your_db_user
WORDPRESS_DB_PASSWORD=your_db_password
TOP_LEVEL_DOMAIN=your_domain
SUB_DOMAIN=your_submain (in case of e.g. DynDNS redirection)
``` 

## Start up
Just fire up the docker-compose file as usual...

````bash
docker-compose up -d
````

