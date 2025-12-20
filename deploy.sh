#!/bin/bash

echo "Deploying to EKS..."

aws eks update-kubeconfig \
  --region ap-south-1 \
  --name brain-tasks-cluster

kubectl apply -f deployment.yml
kubectl apply -f service.yml
