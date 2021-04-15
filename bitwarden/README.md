# Bitwarden

Bitwarden is a password vault, deployed in a docker container here. 
It stores passwords and with suitable browser add-ons and mobile apps
can automatically insert username / password combinations in login
forms of web applications.

## Installation

For using Traefik in the configuration of the provided docker-compose files
please create a traefik_proxy network in docker as follows (if not
existing already):

## Create network

```bash
docker network create traefik_proxy
```

## Docker configuration

All individual configurations for the docker-compose file are set via
environment variables in a .env file. Thus, you need to create a hidden
file with the name .env (including the '.') containing the following
environment variables:

```bash
ADMIN_TOKEN=your_admin_token (for accessing the admin console)
ADMIN_USER_PW=your_user_pw (for http basic authentication)
WEBSOCKET_ENABLED=true (or false)
BITWARDEN_DOMAIN=your_domain
```

The ```ADMIN_TOKEN``` is generated via

```bash
openssl rand -base64 48 | tr -d /=
```

The output is then copied into the ```.env``` file.

The ```ADMIN_USER_PW```combination is generated via

```bash
htpasswd -n user
```

After you entered a password for the given username, the output
can the be copied into the ```.env``` file.

## Start up

Just fire up the docker-compose file as usual...

````bash
docker-compose up -d
````
