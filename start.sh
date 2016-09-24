#!/bin/bash

if [ -z "$1" ]
then
  echo 'usage: ./start.sh local|test|prod'
  exit 1
fi

set -x
if [ "$1" == "local" ]; then
  docker_repo=diabol/event-based-cd-example:latest
else
  docker_repo=944159926332.dkr.ecr.eu-west-1.amazonaws.com/event-based-cd-example:latest
fi

container_name=event-based-cd-example-$1
docker run -d -p 8080:5000 --name ${container_name} -e ENV=$1 -e DEPLOYED_TIME=`date` ${docker_repo}
