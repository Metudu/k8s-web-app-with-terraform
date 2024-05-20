namespace = {
  name = "tf-namespace"
}

deployment = {
  name = "tf-deployment"
  match_labels = {
    "app" = "application"
  }
  pod_count = 3
  
  pod = {
    name = "tf-deployment-pod"
    image = "metura/k8s-basic-web-app:latest"
  }
}

service = {
  name = "tf-service"
  type = "NodePort"
  match_labels = {
    "app" = "application"
  }
  host_port = 8080
  container_port = 80
}