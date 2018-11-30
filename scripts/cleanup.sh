#!/bin/bash

# If you execute this script when the docker containers are runnning, 
# you can delete unnecessary containers, images and volumes created by execution of docker-compose.
docker container prune -f
docker image prune -fa
docker volume prune -f
