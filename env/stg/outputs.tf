output "vpc_id" {
  value = module.stg.vpc_id
}

output "public_subnet_ids" {
  value = module.stg.public_subnet_ids
}

output "private_subnet_ids" {
  value = module.stg.private_subnet_ids
}

output "instance_id" {
  value = module.stg.instance_id
}

output "public_ip" {
  value = module.stg.public_ip
}

output "alb_dns_name" {
  value = module.stg.alb_dns_name
}