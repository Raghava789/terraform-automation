module "vpc" {
  source = "./modules/vpc"
  vpc_cidr = var.vpc_cidr
  public_sub_cidr = var.public_sub_cidr
  private_sub_cidr = var.private_sub_cidr
  availability_zone = var.availability_zone
  cluster_name = var.cluster_name
}

module "eks_cluster" {
  source = "./modules/eks"
  vpc_id = module.vpc.vpc_id
  subnet_id = module.vpc.private_subnet_ids
  cluster_name = var.cluster_name
  cluster_version = var.cluster_version
  eks_node_group = var.eks_node_group
}