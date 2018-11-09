# task driver docker env

## How to start
```
$ git clone git@github.com:enpitut2018/task_driver_docker_env.git
$ cd task_driver_docker_env
$ bin/setup.sh
$ docker-compose up
```
Now, nuxt is listening on localhost:3000 and rails is on localhost:3001.

## Usage

### dive into shell of containers
```
$ docker-compose run backend ash
$ docker-compose run frontend ash
```
Formar is for the rails container and latter is for the nuxt container. Pay attention to containers' default shell is *ash*, not *bash*.