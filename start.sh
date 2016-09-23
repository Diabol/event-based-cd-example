#!/bin/bash
set -x
docker_repo=944159926332.dkr.ecr.eu-west-1.amazonaws.com/event-based-cd-example:latest
docker stop event-based-cd-example
docker rm event-based-cd-example
docker run -d -p 8080:5000 --name event-based-cd-example ${docker_repo}
