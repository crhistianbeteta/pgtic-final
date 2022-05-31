#!/bin/bash

# Delete horizontalautoscalers
#kubectl delete hpa frontend-scl-cpu

# Delete ingress
kubectl delete ingress example-ingress

# Delete services
kubectl delete services frontend-service
kubectl delete services backend-service

# Delete deployments
kubectl delete deployments frontend-deployment
kubectl delete deployments backend-deployment

# Delete minikube cluster
minikube delete
