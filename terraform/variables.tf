variable "aws_region" {
  description = "AWS region"
  type        = string
  default     = "us-east-1"
}

# VPC and networking
variable "vpc_name" {
  description = "Name tag for the VPC"
  type        = string
  default     = "devops-lab-vpc"
}

variable "vpc_cidr" {
  description = "CIDR block for the VPC"
  type        = string
  default     = "10.0.0.0/16"
}

variable "public_subnet_names" {
  description = "Names for public subnets (list)"
  type        = list(string)
  default     = ["public-a", "public-b"]
}

variable "public_subnet_cidrs" {
  description = "CIDRs for public subnets (list, same length as names)"
  type        = list(string)
  default     = ["10.0.1.0/24", "10.0.2.0/24"]
}

variable "private_subnet_names" {
  description = "Names for private subnets (list)"
  type        = list(string)
  default     = ["private-a", "private-b"]
}

variable "private_subnet_cidrs" {
  description = "CIDRs for private subnets (list, same length as names)"
  type        = list(string)
  default     = ["10.0.3.0/24", "10.0.4.0/24"]
}

variable "sg_name" {
  description = "Security group name"
  type        = string
  default     = "devops-lab-sg"
}

variable "allow_ssh" {
  description = "Allow SSH ingress in the security group"
  type        = bool
  default     = true
}

