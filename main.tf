module "namespace" {
  source = "./modules/tf-namespace"
  name = var.namespace.name
}

module "deployment" {
  source = "./modules/tf-deployment"
  namespace_id = module.namespace.id
  name = var.deployment.name
  match_labels = var.deployment.match_labels
  metadata_labels = var.deployment.metadata_labels
  replicas = var.deployment.pod_count
  pod_name = var.deployment.pod.name
  pod_image = var.deployment.pod.image
  pod_labels = var.deployment.pod.labels
}

module "tf-service" {
  source = "./modules/tf-service" 
  namespace_id = module.namespace.id
  name = var.service.name
  type = var.service.type
  match_labels = var.service.match_labels
  labels = var.service.labels
  host_port = var.service.host_port
  container_port = var.service.container_port
}