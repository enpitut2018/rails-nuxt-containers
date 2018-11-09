#!/bin/bash
# register submodules
git submodule init
git submodule update

# pull from develop branches
REPOSITORIES=(backend/rails frontend/nuxt)
for repo in ${REPOSITORIES[@]}; do
	cd $repo
	git checkout develop
	git pull
	cd ../../
done

# build
docker-compose build
docker-compose run backend bundle
docker-compose run frontend yarn
docker-compose run backend rails db:migrate
