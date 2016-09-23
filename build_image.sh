#!/bin/bash
set -x
docker_repo=944159926332.dkr.ecr.eu-west-1.amazonaws.com/event-based-cd-example:latest
docker build -f Dockerfile -t diabol/event-based-cd-example:latest .
docker tag diabol/event-based-cd-example:latest ${docker_repo}
docker push ${docker_repo}
