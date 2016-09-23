#!/bin/bash
set -x
docker_repo=diabol/event-based-cd-example:latest
container_name=event-based-cd-example-local
docker stop ${container_name}
docker rm ${container_name}
docker run -d -p 8080:5000 --name ${container_name} ${docker_repo}
