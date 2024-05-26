#!/usr/bin/env bash

# Define variables
DOCKER_USERNAME="suuargo"
IMAGE_NAME="example-app"
TAG="latest"

set -e

echo "Logging in to Docker Hub..."
docker login

# Navigate to the directory containing the Dockerfile
# Adjust the path as needed
cd "$(dirname "$0")/src"

# Build the Docker image
echo "Building Docker image..."
docker build -t ${IMAGE_NAME} --platform="linux/amd64" .

# Tag the image for Docker Hub
echo "Tagging Docker image..."
docker tag ${IMAGE_NAME} ${DOCKER_USERNAME}/${IMAGE_NAME}:${TAG}

# Push the image to Docker Hub
echo "Pushing Docker image to Docker Hub..."
docker push ${DOCKER_USERNAME}/${IMAGE_NAME}:${TAG}

echo "Docker image pushed successfully!"