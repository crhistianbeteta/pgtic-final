#!/bin/bash

# Start minikube cluster
minikube start --driver=virtualbox --disable-optimizations

# Enable ingress addon
minikube addons enable ingress

# Enable metrics-servers
minikube addons enable metrics-server

# Set enviroment to minikube docker
eval $(minikube docker-env)

# Build docker images
docker build -t pgtic/backend backend
docker build -t pgtic/frontend frontend


# Create backend deployment, service and autoscaler
kubectl apply -f kubernetes/backend/backend.yml

# Create frontend deployment, service and autoscaler
kubectl apply -f kubernetes/frontend/frontend.yml

# Create ingress
kubectl apply -f kubernetes/ingress/ingress.yml
