#!/bin/sh
docker run --name zanatadb \
  -e MYSQL_USER=zanata -e MYSQL_PASSWORD=password -e MYSQL_DATABASE=zanata -e MYSQL_RANDOM_ROOT_PASSWORD=yes \
  -d mariadb:10.1 \
  --character-set-server=utf8 --collation-server=utf8_general_ci

echo 'Please use the command "docker logs zanatadb" to check that MariaDB starts correctly.'
