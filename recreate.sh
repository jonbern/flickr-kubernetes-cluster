#!/bin/bash

kubectl delete deployment flickr-api-deployment
kubectl delete service flickr-api-service

kubectl create -f deployments/flickr-api.yaml
kubectl create -f services/flickr-api.yaml

kubectl describe service flickr-api-service