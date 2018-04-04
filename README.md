# Simple node Express.js API via Kubernetes

Created based on:
https://kubernetes.io/docs/user-guide/walkthrough/k8s201/
https://seanmcgary.com/posts/how-to-deploy-a-nodejs-app-to-kubernetes/


## Accessing the app
In the Service we defined a NodePort; this exposes a port directly to the IP address that minikube is running on so that your app is accessible outside of the cluster.

By default, minikube binds to port 192.168.99.100. To double check this, you can run minikube ip which will return the current IP address.

To access your service, simply curl the IP on port 30061:

curl http://192.168.99.100:30061/api/images?q=cascais