#!/bin/bash

NAME="backend"

IMAGE_VERSION="$(git rev-parse --short HEAD)"

# Build Image

docker build -t $NAME:$IMAGE_VERSION .

# Create Deployment and Service

kubectl apply -f ./api.k8s.yml