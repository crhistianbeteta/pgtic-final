#!/bin/bash

# Start minikube cluster
minikube start --driver=virtualbox

# Enable ingress addon
minikube addons enable ingress

# Set enviroment to minikube docker
eval $(minikube docker-env)

# Build docker images
docker build -t pgtic/backend backend
docker build -t pgtic/frontend frontend

# Create deployments
kubectl apply -f kubernetes/deployments/frontend-deployment.yml
kubectl apply -f kubernetes/deployments/backend-deployment.yml

# Create services
kubectl apply -f kubernetes/services/nginx-service.yml
kubectl apply -f kubernetes/services/backend-service.yml

# Create ingress
kubectl apply -f kubernetes/ingress/ingress.yml
