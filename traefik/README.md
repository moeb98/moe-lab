# Traefik

Traefik is a reverse proxy encrypting traffic with Let's encrypt certificates-

# Installation
For using Traefik in the configuration of the provided docker-compose files please create a traefik_proxy network in docker as follows:

## Create network
```bash
docker network create traefik_proxy
```

## Docker configuration 
All individual configurations for the docker-compose file are set via environment variables in a .env file. Thus, you need to create a hidden file with the name .env (including the '.') containing the following environment variables:
```bash
ACME_EMAIL=your@mail.com
TRAEFIK_DOMAIN=your.dashboard.domain
BASIC_AUTH=your_dashboard_user:your_htpasswd_password
``` 

## ACME configuration
The JSON file in which Traefik stores all relevant certificate information needs to be secured with exactly the following user rights:

```bash
cd config/ACME
chmod 600 acme.json
```

