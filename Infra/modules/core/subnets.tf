# resource "aws_subnet" "private_subnets" {
#   count             = var.az_limit
#   vpc_id            = aws_vpc.vpc.id
#   cidr_block        = cidrsubnet(cidrsubnet(aws_vpc.vpc.cidr_block, 1, 0), var.az_limit, count.index)
#   availability_zone = data.aws_availability_zones.zones.names[count.index]

#   tags = {
#     Name = "${var.environment}-${var.project}-prv_sub[${count.index}]"
#   }
# }

resource "aws_subnet" "public_subnets" {
  count             = var.az_limit
  vpc_id            = aws_vpc.vpc.id
  cidr_block        = cidrsubnet(cidrsubnet(aws_vpc.vpc.cidr_block, 1, 1), var.az_limit, count.index)
  availability_zone = data.aws_availability_zones.zones.names[count.index]

  tags = {
    Name = "${var.environment}-${var.project}-pub_sub[${count.index}]"
  }
}