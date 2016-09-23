#!/bin/bash
set -x
docker_repo=diabol/event-based-cd-example:latest
docker stop event-based-cd-example
docker rm event-based-cd-example
docker run -d -p 8080:5000 --name event-based-cd-example ${docker_repo}
