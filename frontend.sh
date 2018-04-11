#!/bin/bash

kubectl delete deployment flickr-frontend-deployment
kubectl delete service flickr-frontend-service
kubectl create -f deployments/flickr-frontend.yaml
kubectl create -f services/flickr-frontend.yaml