#!/bin/bash

NAME="backend"

IMAGE_VERSION="$(git rev-parse --short HEAD)"

# Build Image

docker build -t $NAME:$IMAGE_VERSION .

# Create Deployment

kubectl create -f ./api.deployment.yml

# Create Service

kubectl create -f ./api.service.yml