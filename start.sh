#!/bin/bash

docker stop event-based-cd-example
docker rm event-based-cd-example
docker run -d -p 8080:5000 --name event-based-cd-example diabol/event-based-cd-example:latest
