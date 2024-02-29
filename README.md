# My services server setup

TODO : Add description

## Docker Compose Services

**Makefile**

Here, I'm using docker compose for manage services and for simplify the commands
I use a [Makefile](./Makefile).

About docker commands check the following commands :

```bash
# Build and start
make up <SERVICES="service-1 service-2 service-n ...">

# Others
make stop <SERVICES="service-1 service-2 service-n ...">
make start <SERVICES="service-1 service-2 service-n ...">
make restart <SERVICES="service-1 service-2 service-n ...">
```

### Dolibarr

This service run in docker and the image used is
[tuxgasy/dolibarr](https://hub.docker.com/r/tuxgasy/dolibarr).

Here we have the following services :
  - `dolibarr-db`
  - `dolibarr-web`

_Example:_

```bash
make up SERVICES="dolibarr-db dolibarr-web"
```

This service also use environment variables with the following template files
[dolibarr.env.template](dolibarr/dolibarr.env.template) and
[mariadb.env.template](dolibarr/mariadb.env.template).

> You will need to change the file names from `service.env.template` to
`service.env`.
