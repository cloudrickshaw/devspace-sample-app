#!/bin/bash

set -e

[[ $1 == "--re-create" ]] &&  ctlptl delete -f templates/local-cluster.yaml

# create cluster
ctlptl apply -f templates/local-cluster.yaml
kubectl get namespace dev || kubectl create namespace dev
