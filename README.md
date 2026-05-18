# Flask + MongoDB Kubernetes Deployment

## Overview

This project is based on a simple Flask application with MongoDB, extended with Docker, Kubernetes, Helm, and a CI pipeline.

The main purpose is to demonstrate how a basic application can be containerized, deployed to Kubernetes, and integrated with a CI workflow.

---

## Technologies

- Docker
- Kubernetes (Minikube)
- Helm
- GitHub Actions
- Flask
- MongoDB

---

## Prerequisites

To run this project locally, the following tools must be installed:

- Docker (for containerization)
- Minikube (for running a local Kubernetes cluster)
- kubectl (to interact with the cluster)
- Helm (for managing Kubernetes resources)

---

## Docker

To build the image locally:

```
docker build -t flask-app .
```

---

## Kubernetes & Helm

This project uses Minikube as a local Kubernetes cluster.

To start the cluster, you can run:

```
./setup-minikube.sh
```

This script will:

- Start Minikube
- Verify that the cluster is running

The application and database are deployed using Helm. The Helm chart was created based on the initial Kubernetes manifests located in the `k8s/` directory.

Install:

```
helm install flask-app ./flask-app-chart
```

Upgrade:

```
helm upgrade flask-app ./flask-app-chart
```

---

## CI Pipeline

A GitHub Actions pipeline is triggered on each push.

The pipeline runs the following steps:

- Checks out the repository code
- Builds the Docker image
- Authenticates with Docker Hub
- Pushes the image to Docker Hub
- Installs Helm
- Validates the Helm chart configuration
- Renders Helm templates to verify correctness

---

## Docker Image

The image is available on Docker Hub:

```
sevinclif/flask-app:1.0
```

![Docker Hub](images/image-on-hub.png)

---

## Access

The application is exposed using a NodePort service.

```
minikube service flask-service
```

---

## Summary

In this project, I implemented a complete workflow starting from a basic Flask application to a containerized and deployable system.

The application was:
- Containerized using Docker
- Deployed to Kubernetes using Helm
- Integrated with a CI pipeline using GitHub Actions
- Published to Docker Hub for external access

This setup demonstrates a simplified but realistic DevOps pipeline.