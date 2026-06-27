variable "aws_region" {
  type    = string
  default = "us-east-1"
}

variable "create_vpc" {
  type    = bool
  default = false
}

variable "vpc_name" {
  type    = string
  default = ""
}

variable "vpc_cidr" {
  type    = string
  default = ""
}

variable "public_subnet_names" {
  type    = list(string)
  default = []
}

variable "public_subnet_cidrs" {
  type    = list(string)
  default = []
}

variable "private_subnet_names" {
  type    = list(string)
  default = []
}

variable "private_subnet_cidrs" {
  type    = list(string)
  default = []
}

variable "create_eks" {
  type    = bool
  default = false
}

variable "eks_cluster_name" {
  type    = string
  default = ""
}

variable "eks_vpc_id" {
  type    = string
  default = ""
}

variable "eks_subnet_ids" {
  type    = list(string)
  default = []
}

variable "create_ecr" {
  type    = bool
  default = false
}

variable "ecr_repository_name" {
  type    = string
  default = ""
}

variable "environment" {
  type    = string
  default = ""
}

variable "allow_ssh" {
  type        = bool
  description = "Allow SSH ingress to the security group"
  default     = true
}
