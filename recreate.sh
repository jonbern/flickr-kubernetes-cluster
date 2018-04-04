#!/bin/bash

kubectl delete service stupid-server
kubectl delete deployment stupid-server-deployment

kubectl create -f deployments/flickr-api.yaml
kubectl create -f services/flickr-api.yaml

kubectl describe service stupid-server