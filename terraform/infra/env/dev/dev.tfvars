aws_region            = "us-east-1"

# Enable only the modules you want to deploy.
create_vpc             = true
create_eks             = false
create_ecr             = false

environment           = "dev"

# VPC values (used only when create_vpc = true)
vpc_cidr              = "10.0.0.0/16"
public_subnet_names   = ["public-a", "public-b"]
public_subnet_cidrs   = ["10.0.1.0/24", "10.0.2.0/24"]
private_subnet_names  = ["private-a", "private-b"]
private_subnet_cidrs  = ["10.0.3.0/24", "10.0.4.0/24"]

# Optional manual override for VPC name.
# vpc_name = "devops-lab-dev-vpc"

# EKS values (used only when create_eks = true)
eks_cluster_name      = "dev-eks-cluster"
eks_vpc_id            = ""
eks_subnet_ids        = []

# ECR values (used only when create_ecr = true)
ecr_repository_name   = "dev-app-repo"
