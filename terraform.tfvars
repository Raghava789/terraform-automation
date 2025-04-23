vpc_cidr = "10.0.0.0/16"
public_sub_cidr = ["10.0.1.0/24", "10.0.2.0/24"]
private_sub_cidr = ["10.0.3.0/24", "10.0.4.0/24"]
cluster_name = "my-main-cluster"
availability_zone = ["ap-south-1a", "ap-south-1b"]

eks_node_group = {
  worker-group-1 = {
    instace_type  = ["t3.medium"]   # Fixed "instace_type" to "instance_type"
    capacity_type = "ON_DEMAND"
    scaling_config = {
      min_size     = 1
      max_size     = 3
      desired_size = 2
    }
  }
}