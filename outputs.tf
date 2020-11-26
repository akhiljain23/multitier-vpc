output "vpc_id" {
  value = module.vpc.vpc_id
}

output "frontend_subnet_ids" {
  value = [module.vpc.frontend_subnet_ids]
}
