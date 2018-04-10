#!/bin/bash

# Delete deployments
# kubectl delete deployment flickr-api-deployment
# kubectl delete deployment flickr-frontend-deployment

# Delete services
# kubectl delete service flickr-api-service
# kubectl delete service flickr-frontend-service

# Create deployments and services based off manifests
# kubectl create -f deployments/flickr.yaml
# kubectl create -f services/flickr.yaml