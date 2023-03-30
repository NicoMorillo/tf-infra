output "vpc_id" {
  value = module.vpc.vpc_id
}

output "vpc_cidr" {
  value = module.vpc.vpc_cidr
}

# output "private_subnets_id" {
#   value = module.vpc.private_subnets_id
# }

# output "public_subnets_id" {
#   value = module.vpc.public_subnets_id
# }

output "public_subnets_id_1" {
  value = module.vpc.public_subnets_id_1
}

output "public_subnets_id_2" {
  value = module.vpc.public_subnets_id_2
}