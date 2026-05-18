#!/bin/bash

echo "Starting Minikube..."
minikube start

echo "Checking cluster status..."
kubectl get nodes

echo "Minikube is ready."