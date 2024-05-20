variable "namespace_id" {
  type = string
  description = "Namespace id for the deployment."
}

variable "name" {
  type = string 
  description = "Name of the deployment."
}

variable "metadata_labels" {
  type = map(string)
  description = "This object assign labels to the deployment, NOT THE PODS."
}

variable "match_labels" {
  type = map(string)
  description = "Label to match the pods to this deployment. Any input does the job."
}

variable "replicas" {
  type = number
  description = "How many pods should run on this deployment?"
}

variable "pod_labels" {
  type = map(string)
  description = "Labels for pods."
}

variable "pod_name" {
  type = string
}

variable "pod_image" {
  type = string 
}