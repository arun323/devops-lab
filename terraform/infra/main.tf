module "vpc" {
  source     = "../modules/vpc"
  cidr_block = var.vpc_cidr
  name       = "demo-vpc"
}
