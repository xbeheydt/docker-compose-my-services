# 🐳 Docker Compose - My services

This repository helps to backup my services settings and how to use them.

## 🛠️ How to run

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

## List of services

- [Dolibarr - ERP/CRM](./dolibarr/README.md)
