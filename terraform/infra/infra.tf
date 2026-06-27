locals {
  eks_vpc_id = var.create_vpc ? module.vpc[0].vpc_id : var.eks_vpc_id
  eks_subnet_ids = var.create_vpc ? module.vpc[0].private_subnet_ids : var.eks_subnet_ids

  vpc_name = var.vpc_name != "" ? var.vpc_name : (
    var.environment != "" ? "devops-lab-${var.environment}-vpc" : "devops-lab-vpc"
  )
}

module "vpc" {
  count = var.create_vpc ? 1 : 0
  source = "../modules/vpc"

  vpc_name             = local.vpc_name
  vpc_cidr             = var.vpc_cidr
  public_subnet_names  = var.public_subnet_names
  public_subnet_cidrs  = var.public_subnet_cidrs
  private_subnet_names = var.private_subnet_names
  private_subnet_cidrs = var.private_subnet_cidrs
  allow_ssh            = var.allow_ssh
}

# module "eks" {
#   count = var.create_eks ? 1 : 0
#   source = "../modules/eks"

#   cluster_name = var.eks_cluster_name
#   vpc_id       = local.eks_vpc_id
#   subnet_ids   = local.eks_subnet_ids
# }

# module "ecr" {
#   count = var.create_ecr ? 1 : 0
#   source = "../modules/ecr"

#   repository_name = var.ecr_repository_name
# }
