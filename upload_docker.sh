#!/usr/bin/env bash
# This file tags and uploads an image to Docker Hub
# Image is built via `run_docker.sh`


# Create dockerpath
# dockerpath=<your docker ID/path>
dockerpath="goribash/project-ml-microservice-kubernetes:latest"  

# Authenticate & tag
docker login -u goribash
docker tag project-ml-microservice-kubernetes v1 $dockerpath
echo "Docker ID and Image: $dockerpath"

# Push image to a docker repository
docker image push $dockerpath
