#!/bin/bash
set -x
docker build -f Dockerfile -t diabol/event-based-cd-example:latest .
