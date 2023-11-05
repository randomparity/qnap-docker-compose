#!/bin/bash

# $(getcfg container-station Install_path -f /etc/config/qpkg.conf)/bin/docker-compose -f /share/Container/src/qnap-docker-compose/docker-compose.yml up -d --remove-orphans
docker compose -f /share/Container/src/qnap-docker-compose/docker-compose.yml up -d --remove-orphans
