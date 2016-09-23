#!/bin/bash
set -x
docker_repo=944159926332.dkr.ecr.eu-west-1.amazonaws.com/event-based-cd-example:latest
docker push ${docker_repo}
