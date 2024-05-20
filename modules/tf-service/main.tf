resource "kubernetes_service_v1" "tf-service" {
  metadata {
    name = var.name
    namespace = var.namespace_id
    labels = var.labels
  } 

  spec {
    type = var.type

    selector = var.match_labels
    port {
      port = var.host_port
      target_port = var.container_port
    }
  }
}