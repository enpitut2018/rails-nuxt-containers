#!/bin/bash
# create docker containers to prevent necessary images from begin deleted
docker-compose up -d
docker container prune -f
docker image prune -fa
docker volume prune -f
docker-compose down