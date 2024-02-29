# Dolibarr

For my company, I use [Dolibarr](https://dolibarr.org) to manage my administration.

## Manage the service

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
[dolibarr.env.template](./dolibarr.env.template) and
[mariadb.env.template](./mariadb.env.template).

> You will need to change the file names from `service.env.template` to
`service.env`.
