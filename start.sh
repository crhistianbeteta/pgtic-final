#!/bin/bash

# Start minikube cluster
minikube start --nodes 2 --driver=virtualbox --disable-optimizations

# Enable ingress addon
minikube addons enable ingress

# Enable metrics-servers
minikube addons enable metrics-server

# Enable docker registry
minikube addons enable registry

# Create backend deployment, service and autoscaler
kubectl apply -f kubernetes/backend/backend.yml

# Create frontend deployment, service and autoscaler
kubectl apply -f kubernetes/frontend/frontend.yml

# Create ingress
kubectl apply -f kubernetes/ingress/ingress.yml
