#!/bin/bash

$(getcfg container-station Install_path -f /etc/config/qpkg.conf)/bin/docker-compose -f /share/homes/dave/src/qnap-docker-compose/docker-compose.yml up -d --remove-orphans
