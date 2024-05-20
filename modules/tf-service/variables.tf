variable "name" {
  type = string 
  description = "Name of the service."
}

variable "namespace_id" {
  type = string
  description = "Namespace to deploy the service into."
}

variable "labels" {
  type = map(string) 
  description = "Labels for the service."
}

variable "type" {
  type = string 
  description = "Type of the service."
}

variable "match_labels" {
  type = map(string)
  description = "Labels to match deployments or pods with this service."
}

variable "container_port" {
  type = number 
  description = "Container port for the service. 80 is an option."
}

variable "host_port" {
  type = number
  description = "Target port for the service. 8080 is an option."
}