#!/bin/bash

# export KUBECONFIG=./vagrant/kubernetes-setup/output/config

# Create backend deployment, service and autoscaler
kubectl apply -f kubernetes/backend/backend.yml

# Create frontend deployment, service and autoscaler
kubectl apply -f kubernetes/frontend/frontend.yml

# Create ingress
kubectl apply -f kubernetes/ingress/ingress.yml

#port forward
#kubectl port-forward services/backend-svc 8000:3000
