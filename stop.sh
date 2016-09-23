#!/bin/bash
if [ -z "$1" ]
then
  echo 'usage: ./start.sh local|test|prod'
  exit 1
fi

set -x
container_name=event-based-cd-example-$1
docker stop ${container_name}
docker rm ${container_name}
