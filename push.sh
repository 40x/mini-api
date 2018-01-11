#!/bin/bash

NAME="minikube"

IMAGE_VERSION="$(git rev-parse --short HEAD)"

docker build -t $NAME:$IMAGE_VERSION .

echo "Built image successfully"