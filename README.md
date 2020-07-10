# k8s-node

Simple Note application to demo k8s

## Run Application locally

```sh
npm install
npm start
```

## Docker Build and Push

### Build Docker Image
```sh
docker docker build -t k8s-note .
```

### Tag your docker image
```sh
docker tag k8s-note <username>/k8s-note:<version>
```

### Push docker image to docker hub
```sh
docker push <username>/k8s-note:<version>
```


## K8s useful commands

### Apply YAML file
```sh
kubectl apply -f <directory or filename>
```

### Scale deployment
```sh
kubectl scale --replicas=<new replica number> deployment/<deployment-name>
```

### Rollout history
```sh
kubectl rollout history deployment/knote
```

### Upgrade to new verstion / Change to different version
```sh
kubectl set image deployment/<deployment-name> <container-name>=<username>/<image-name>:<image-version>
```

> Example
```sh
kubectl set image deployment/knote knote=sumeesh/k8s-note:1.0.0
```

### Get Pods
```sh
kubectl get pods
```

### Get Deployments
```sh
kubectl get deployments
```

### Get Services
```sh
kubectl get services
```

### Delete (anything)
```sh
kubectl delete <RESOURCE> <RESOURCE_NAME>
```

### Minikube expose service
```sh
minikube service <service-name>
```
