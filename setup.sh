#!/usr/bin/env bash

docker pull postgres:14.2
docker pull dpage/pgadmin4:6.10

docker-compose -f compose.yml up -d

sleep 10

docker exec db-migrations_pg createdb -U postgres -E UTF8 foss_dbm

evolve migrate '@args.txt'
