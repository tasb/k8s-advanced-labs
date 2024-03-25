# Kubernetes Advanced Labs

## Pre-requisites

- [Docker](https://www.docker.com/products/docker-desktop)
- [Kubectl](https://kubernetes.io/docs/tasks/tools/install-kubectl/)
- [Minikube](https://minikube.sigs.k8s.io/docs/start/)
- [Helm](https://helm.sh/docs/intro/install/)
  
## Getting Started

- Start your minikube cluster with `minikube start --nodes 2 -p labs --network-plugin=cni --cni=calico`

## Running the Application

For each lab, you have a tag that you can checkout to see the final state of the lab. For example, to see the final state of lab X, you can run `git checkout lab0X`.
