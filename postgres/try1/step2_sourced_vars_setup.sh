#!/bin/bash

pg_ip=$(sudo docker inspect "${pg_container}" | grep '"IPAddress"' -m1 | sed 's/^\s*//' | sed 's/.* "/"/' | sed 's/,\|"//g')
pg_container=$(sudo docker ps | grep postgres | awk '{ print $1 }')
pg_run_pgcli="pgcli -p 5432 -h ${pg_ip} -U postgres"
