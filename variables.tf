variable "vpc_cidr" {
  description = "vpc cidr"
}

variable "public_sub_cidr" {
  description = "public subnet cidr"
}

variable "private_sub_cidr" {
  description = "private subnet cidr"
}

variable "availability_zone" {
  description = "az's"
}

variable "cluster_name"{
    description = "cluster name"
}

variable "cluster_version" {
  description = "cluster version"
  default = "1.30"
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