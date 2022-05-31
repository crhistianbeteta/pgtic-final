#!/bin/bash

# Start minikube cluster
minikube start --driver=virtualbox

# Enable ingress addon
minikube addons enable ingress

# Enable metrics-servers
minikube addons enable metrics-server

# Set enviroment to minikube docker
eval $(minikube docker-env)

# Build docker images
docker build -t pgtic/backend backend
docker build -t pgtic/frontend frontend

# Create deployments
#kubectl apply -f kubernetes/deployments/frontend-deployment.yml
#kubectl apply -f kubernetes/deployments/backend-deployment.yml

# Create services
#kubectl apply -f kubernetes/services/frontend-service.yml
#kubectl apply -f kubernetes/services/backend-service.yml

# Create backend
kubectl apply -f kubernetes/backend/backend.yml

# Create frontend
kubectl apply -f kubernetes/frontend/frontend.yml

# Create ingress
kubectl apply -f kubernetes/ingress/ingress.yml

# Create autoescalers
#kubectl apply -f kubernetes/autoecaler/autoscaler-frontend.yml
#kubectl apply -f kubernetes/autoscaler/autoscaler-request-frontend.yml
#kubectl apply -f kubernetes/autoscaler/autoscaler-backend.yml
#kubectl apply -f kubernetes/autoscaler/autoscaler-request-backend.yml
