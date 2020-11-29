output "vpc_id" {
  value = module.vpc.vpc_id
}

output "vpc_name" {
  value = module.vpc.vpc_name
}

output "frontend_subnet_ids" {
  value = module.vpc.frontend_subnet_ids[0]
}
