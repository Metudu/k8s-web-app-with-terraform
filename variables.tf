variable "namespace" {
  type = object({
    name = string 
  }) 
  description = <<EOT
    namespace = {
      name: "name is the name of the namespace. Pretty straightforward."
    }
  EOT
}

variable "deployment" {
  type = object({
    name = string
    match_labels = map(string)
    metadata_labels = optional(map(string))
    pod_count = number
    pod = object({
      name = string
      image = string
      labels = optional(map(string))
    })
  })

  description = <<EOT
    deployment = {
      name = "Name of the deployment."
      match_labels = "These labels will be written to both selector and template metadata in order to connect the pods to the deployment."
      metadata_labels = "Label(s) of the deployment"
      pod_count = "The number of pods the deployment will have."
      pod = {
        name = "Pod name."
        image = "Image of the pod."
        labels = "Label(s) of the pods. These are optional"
      }
    }

    metadata_labels and labels in pod object is optional.
  EOT
}

variable "service" {
  type = object({
    name = string
    type = string
    match_labels = map(string)
    labels = optional(map(string))
    host_port = number
    container_port = number
  }) 

  description = <<EOT
    service = {
      name = "Name of the service."
      type = "Type of the service."
      match_labels = "These labels will be written to both selector and template metadata in order to connect the pods to the deployment."
      labels = "Labels of the service."
      host_port = "The port which will be exposed on your localhost."
      container_port = "The port which will be exposed on the container."
    }
  EOT
}