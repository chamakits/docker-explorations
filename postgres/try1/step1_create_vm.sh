#!/bin/bash

pg_pass="$(uuidgen)"

echo "PG pass is ${pg_pass}"

docker run \
       --name my-postgres \
       -e POSTGRES_PASSWORD="${pg_pass}" \
       -d postgres
