# Simple node Express.js API via Kubernetes

Created based on:
https://kubernetes.io/docs/user-guide/walkthrough/k8s201/
https://seanmcgary.com/posts/how-to-deploy-a-nodejs-app-to-kubernetes/

## Create Kubernetes deployments and services
Run `./recreate.sh`

## Accessing the app
In the Service we defined a NodePort; this exposes a port directly to the IP address that minikube is running on so that your app is accessible outside of the cluster.

By default, minikube binds to port 192.168.99.100. To double check this, you can run minikube ip which will return the current IP address.

Also: Make sure the API_BASE_URL env variable in `deployments/flickr.yaml` matches your `minikube ip` (This step will probably change when we host this on a real cluster outside minikube).

To access the API, simply curl the IP on port 30061:
`curl http://192.168.99.100:30061/api/images?q=cascais`

To access the frontend, curl the IP on port 30062 (or better, use a browser to do it):
`curl http://192.168.99.100:30062`

Note, it can take some time before hte app is available. Probably because it needs to pull the container images and start them, and for the frontend code to be built. Run `kubectl logs deployment/flickr-frontend-deployment -f` to get status of the progress