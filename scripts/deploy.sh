#!/bin/bash

# Exit on any error
set -e

# Set namespace variable
NAMESPACE="echo-namespace"

# Check if the namespace exists, create it if it does not
if ! kubectl get namespace "$NAMESPACE"; then
  kubectl create namespace "$NAMESPACE"
fi

# Apply all deployment and service configurations
kubectl apply -f deployments/echo-service/namespace.yaml
kubectl apply -f deployments/echo-service/configmap.yaml
kubectl apply -f deployments/echo-service/secret.yaml
kubectl apply -f deployments/echo-service/deployment.yaml
kubectl apply -f deployments/echo-service/service.yaml

kubectl apply -f deployments/echo-gateway/deployment.yaml
kubectl apply -f deployments/echo-gateway/service.yaml

echo "Deployments and services have been applied successfully."
