#!/bin/bash

# Exit on any error
set -e

# Define image names
ECHO_SERVICE_IMAGE="echo-service:latest"
GATEWAY_SERVICE_IMAGE="gateway-service:latest"

# Check if running in minikube environment
if minikube status; then
  eval $(minikube docker-env)
fi

# Navigate to the echo-service directory and build the image
echo "Building Echo Service Docker image..."
(cd services/echo-service && docker build -t "$ECHO_SERVICE_IMAGE" .)

# Navigate to the echo-gateway directory and build the image
echo "Building Gateway Service Docker image..."
(cd services/echo-gateway && docker build -t "$GATEWAY_SERVICE_IMAGE" .)

# List the newly built images for confirmation
docker images | grep -e "$ECHO_SERVICE_IMAGE" -e "$GATEWAY_SERVICE_IMAGE"

echo "Docker images have been built successfully."
