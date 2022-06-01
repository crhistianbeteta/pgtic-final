#!/bin/bash

# Delete horizontalautoscalers
kubectl delete hpa frontend-scl
kubectl delete hpa backend-scl

# Delete ingress
kubectl delete ingress pgtic-ingress

# Delete services
kubectl delete services frontend-svc
kubectl delete services backend-svc

# Delete deployments
kubectl delete deployments frontend-dpl
kubectl delete deployments backend-dpl

# Delete minikube cluster
#minikube delete
