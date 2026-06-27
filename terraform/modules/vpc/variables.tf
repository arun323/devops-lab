variable "vpc_name" {
  type        = string
  description = "VPC name tag"
}

variable "vpc_cidr" {
  type        = string
  description = "CIDR block for the VPC"
}

variable "public_subnet_names" {
  type        = list(string)
  description = "Names for public subnets"
}

variable "public_subnet_cidrs" {
  type        = list(string)
  description = "CIDR blocks for public subnets"
}

variable "private_subnet_names" {
  type        = list(string)
  description = "Names for private subnets"
}

variable "private_subnet_cidrs" {
  type        = list(string)
  description = "CIDR blocks for private subnets"
}

variable "allow_ssh" {
  type        = bool
  description = "Allow SSH ingress to the security group"
  default     = true
}
