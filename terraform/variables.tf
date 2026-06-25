variable "aws_region" {
  description = "AWS region"
  type        = string
  default     = "us-east-1"
}

variable "github_owner" {
  description = "GitHub owner or organization"
  type        = string
}

variable "github_repo" {
  description = "GitHub repository name"
  type        = string
}


variable "existing_role_name" {
  description = "If set, Terraform will use this existing IAM role instead of creating a new one"
  type        = string
  default     = ""
}

variable "aws_role_arn" {
  description = "AWS role ARN used by the workflow step to assume the role via OIDC. Terraform does not use this value for resource creation."
  type        = string
  default     = ""
}

