# multi-k8s

Multi Container Setup with Kubernetes on Google Cloud. 

- Config files created for each service and deployment
- Test locally on minikube
- Push code to GitHub
- Travis builds test image, tests code
- Travis builds prod image
- Travis pushes built prod images to Docker Hub
- Travis pushes project to Google Cloud

![Architecture](https://github.com/bradsorour/multi-k8s/blob/master/resources/images/k8s-multi-docker.png)

HTTPS requests handled with LetsEncrypt.

Hosted project (was) accessible here: www.brad-tech.net
