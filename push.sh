#!/bin/bash

NAME="backend"

IMAGE_VERSION="$(git rev-parse --short HEAD)"

# Build Image

docker build -t $NAME:$IMAGE_VERSION .

# Create Deployment

kubectl run $NAME --image=$NAME:$IMAGE_VERSION --port=8080 --image-pull-policy=IfNotPresent

# Create Service

kubectl expose deployment $NAME