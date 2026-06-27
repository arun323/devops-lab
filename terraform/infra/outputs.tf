output "vpc_id" {
  description = "VPC id"
  value       = try(module.vpc[0].vpc_id, "")
}

output "public_subnet_ids" {
  description = "Public subnet ids"
  value       = try(module.vpc[0].public_subnet_ids, [])
}

output "private_subnet_ids" {
  description = "Private subnet ids"
  value       = try(module.vpc[0].private_subnet_ids, [])
}

output "security_group_id" {
  description = "Security group id"
  value       = try(module.vpc[0].security_group_id, "")
}
