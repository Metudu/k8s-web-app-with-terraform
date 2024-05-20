resource "kubernetes_namespace_v1" "tf_namespace" {
  metadata {
    name = var.name
  } 
}