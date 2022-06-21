#!/usr/bin/env bash

docker-compose -f compose.yml down

docker volume rm db-migrations_pg-data

docker volume rm db-migrations_pga-data

