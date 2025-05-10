#!/bin/bash -

#
# Command help:
#	...$./start.sh <project_absolut_path>
#


# var's
PROJECT_PATH=$1;

DOCKER_IMAGE="tecgurus/devops:ejemplo-001";
DOCKER_CONTAINER_NAME="tecgurus_app_service";


# command...
docker run -d --name $DOCKER_CONTAINER_NAME \
  
  --cpu 1
  --memory "1G"
  --swap "1G"

  --env NODE_ENV='development'
  -v $PROJECT_PATH:/container/app \
  -p 3000:3000 \
  $DOCKER_IMAGE
