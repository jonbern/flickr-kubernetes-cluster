#!/bin/bash

kubectl delete deployment flickr-api-deployment
kubectl delete deployment flickr-frontend-deployment

kubectl delete service flickr-api-service

kubectl create -f deployments/flickr.yaml
kubectl create -f services/flickr.yaml

# kubectl describe service flickr-api-service