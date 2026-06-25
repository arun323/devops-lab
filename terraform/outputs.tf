output "oidc_provider_arn" {
  description = "The ARN of the GitHub Actions OIDC provider"
  value       = aws_iam_openid_connect_provider.github.arn
}

output "vpc_id" {
  description = "VPC id"
  value       = aws_vpc.this.id
}

output "public_subnet_ids" {
  description = "Public subnet ids"
  value       = aws_subnet.public[*].id
}

output "private_subnet_ids" {
  description = "Private subnet ids"
  value       = aws_subnet.private[*].id
}

output "security_group_id" {
  description = "Security group id"
  value       = aws_security_group.this.id
}
