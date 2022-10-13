#!/bin/bash

if ! command -v helm &> /dev/null
then
    echo "Helm is not installed or cannot be found."
    exit 127
fi

if ! command -v kubectl &> /dev/null
then
    echo "Kubectl is not installed or cannot be found."
    exit 127
fi

if ! kubectl get ns monitoring &> /dev/null
then
    kubectl create namespace monitoring # if not created
fi
helm upgrade --install --dependency-update my-monitoring my-monitoring
