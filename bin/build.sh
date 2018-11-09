#!/bin/bash
docker-compose build
docker-compose run backend bundle
docker-compose run frontend yarn