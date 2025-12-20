#!/bin/bash
set -e

echo "Updating kubeconfig..."
aws eks update-kubeconfig \
  --region ap-south-1 \
  --name brain-tasks-cluster

echo "Deploying application to EKS..."
kubectl apply -f deployment.yml
kubectl apply -f service.yml

echo "Deployment successful"
