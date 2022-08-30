#!/bin/bash

set -e

[[ $1 == "--destroy" ]] &&  ctlptl delete -f templates/local-cluster.yaml && exit 0
[[ $1 == "--re-create" ]] &&  ctlptl delete -f templates/local-cluster.yaml

# create cluster
ctlptl apply -f templates/local-cluster.yaml
kubectl get namespace dev || kubectl create namespace dev
devspace use namespace dev
