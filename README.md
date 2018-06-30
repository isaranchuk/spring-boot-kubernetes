# spring-boot-kubernetes
Getting started with Spring Boot and Kubernetes

## Install and Set Up kubectl
Install Kubernetes command-line tool:  
https://kubernetes.io/docs/tasks/tools/install-kubectl/

## Install Minikube
Install a single-node Kubernetes cluster to run Kubernetes locally:  
https://kubernetes.io/docs/tasks/tools/install-minikube/

### Start Minikube
Start Minikube if it's not running yet:
```bash
minikube start
```

### How to use local docker images with Minikube?
1. To be able to work with the docker daemon on your mac/linux host use the docker-env command in your shell:
```bash
eval $(minikube docker-env)
```
Now you should see Docker images on Minikube:
```bash
docker ps
```
2. Build Docker image of Spring Boot demo:
```bash
./bin/build-image.sh
``` 

*NOTE*: You have to run `eval $(minikube docker-env)` on each terminal you want to use, since it only sets the environment variables for the current shell session.

### Create Kubernetes deployment and service
Examine `app.yaml` to check declaration of Kubernetes deployment and service.
Create Deployment and Service:
```bash
kubectl create -f app.yaml
``` 

#### Examine Deployment
List of all the deployed objects can be obtained via:
```bash
kubectl get deployment
```
Check details of `webapp1` deployment:
```bash
kubectl describe deployment webapp1
```

#### Examine Service
List of all service objects can be obtained via:
```bash
kubectl get svc
```
Check details of `webapp1-svc` service:
```bash
kubectl describe svc webapp1-svc
```

### Call REST endpoint
Get Minikube IP:
```bash
minikube ip
```
Call REST endpoint:
```bash
curl {minikube_ip}:32555/hello
```


