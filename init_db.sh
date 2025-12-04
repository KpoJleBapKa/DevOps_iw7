#!/bin/bash

DB_CONTAINER=${1:-postgres_db}

echo "Running SQL init script inside container: $DB_CONTAINER"

docker exec -i $DB_CONTAINER psql \
  -U ${POSTGRES_USER} \
  -d ${POSTGRES_DB} \
  -f /docker-entrypoint-initdb.d/init.sql

echo "Database initialized."
