#!/usr/bin/env bash

# This tags and uploads an image to Docker Hub

# This is your Docker ID/path
dockerpath="goribash/project-ml-microservice-kubernetes"

# Run the Docker Hub container with kubernetes
kubectl run project-ml-microservices --image=goribash/project-ml-microservice-kubernetes:latest --port=80

# Step 3:
# List kubernetes pods
kubectl get pods

# Step 4:
# Forward the container port to a host
kubectl port-forward project-ml-microservices 8000:80
