#!/bin/bash

VER=${ver:-$(cat VERSION)}
BUILD_DATE=${build_date:-$(date -u +"%Y-%m-%dT%H:%M:%SZ")}
DOCKER_IMAGE_NAME=y0ngb1n/zerotier-moon

cp Dockerfile Dockerfile.local
sed -i "s|__VERSION__|$VER|g" Dockerfile.local
sed -i "s|__BUILD_DATE__|$BUILD_DATE|g" Dockerfile.local

# Log in to a Docker registry
# docker login

# Build image
docker build -f Dockerfile.local -t $DOCKER_IMAGE_NAME:$VER .
docker build -f Dockerfile.local -t $DOCKER_IMAGE_NAME:latest .

# Push image
docker push $DOCKER_IMAGE_NAME:$VER
docker push $DOCKER_IMAGE_NAME:latest

# Clean image
docker image prune -f
