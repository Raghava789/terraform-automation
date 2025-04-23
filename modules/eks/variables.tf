variable "cluster_name" {
  description = "eks cluster name"
}

variable "cluster_version" {
  description = "eks cluster version"
}

variable "vpc_id" {
  description = "vpc ID"
}

variable "subnet_id"{
  description = "subnet ID"
  type = list(string)
}

variable "eks_node_group" {
  description = "eks node group"
  type = map(object({
    instace_type = list(string)
    capacity_type = string
    scaling_config = object({
      min_size = number
      max_size = number
      desired_size = number  
    })
  }))
}