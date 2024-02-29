# Copyright Xavier Beheydt. All rights reserved.

.DEFAULT_GOAL := up

MKDIR	= mkdir
ifeq ($(OS), Windows_NT)
	WEB_BROWSER = powershell -Command Start-Process
else
	WEB_BROWSER = open
endif
COMPOSE_CMD = docker compose \
				-f docker-compose.yml \
				-f dolibarr/docker-compose.yml \
				--env-file dolibarr/dolibarr.env \
				--env-file dolibarr/mariadb.env

# Here are default services allowed to start by default
SERVICES ?= \
	dolibarr-web dolibarr-db

test:
	$(MAKE) --dry-run

.PHONY: up
up:  ## Build and start all or specific services
	$(COMPOSE_CMD) up -d ${SERVICES}

.PHONY: stop
stop:  ## Stop all or specific services
	$(COMPOSE_CMD) stop ${SERVICES}

.PHONY: start
start:  ## Stop all or specific services
	$(COMPOSE_CMD) start ${SERVICES}

.PHONY: restart
restart:  ## Stop all or specific services
	$(COMPOSE_CMD) restart ${SERVICES}

.PHONY: logs
logs:  ## Logs all or specific services
	$(COMPOSE_CMD) logs -f ${SERVICES}


.PHONY: services
services:  ## List all services