resource "kubernetes_deployment_v1" "tf_deployment" {
  metadata {
    name = var.name
    labels = var.metadata_labels
    namespace = var.namespace_id
  }
  
  spec {
    replicas = var.replicas
    selector {
      match_labels = var.match_labels
    }
    template {
      metadata {
        labels = merge(var.pod_labels, var.match_labels) 
      }
      spec {
        container {
          name = var.pod_name
          image = var.pod_image
        }
      }
    }
  }

}