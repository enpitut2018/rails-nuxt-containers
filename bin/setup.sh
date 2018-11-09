#!/bin/bash
git submodule init
git submodule update
docker-compose build
docker-compose run backend bundle
docker-compose run frontend yarn
docker-compose run backend rails db:migrate
