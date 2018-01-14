#!/bin/bash

NAME="backend"

IMAGE_VERSION="$(git rev-parse --short HEAD)"

# Build Image

docker build -t $NAME:$IMAGE_VERSION .

# Create Deployment

kubectl apply -f ./api.deployment.yml

# Create Service

kubectl apply -f ./api.service.yml