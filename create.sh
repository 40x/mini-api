#!/bin/bash

NAME="backend"

IMAGE_VERSION="$(git rev-parse --short HEAD)"

# Build Image

docker build -t $NAME:$IMAGE_VERSION .