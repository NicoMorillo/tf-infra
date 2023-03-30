output "vpc_id" {
  value = aws_vpc.vpc.id
}

output "vpc_cidr" {
  value = aws_vpc.vpc.cidr_block
}

# output "private_subnets_id" {
#   value = aws_subnet.private_subnets.*.id
# }

# output "public_subnets_id" {
#   value = aws_subnet.public_subnets.*.id
# }

output "public_subnets_id_1" {
  value = aws_subnet.public_subnets.0.id
}

output "public_subnets_id_2" {
  value = aws_subnet.public_subnets.1.id
}