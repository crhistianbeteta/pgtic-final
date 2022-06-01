#!/bin/bash

# Delete backend deployment, service and autoscaler
kubectl delete -f kubernetes/backend/backend.yml

# Delete frontend deployment, service and autoscaler
kubectl delete -f kubernetes/frontend/frontend.yml

# Delete ingress
kubectl delete -f kubernetes/ingress/ingress.yml

# Delete minikube cluster
minikube delete
