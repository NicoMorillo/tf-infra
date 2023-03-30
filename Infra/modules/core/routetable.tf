resource "aws_route_table" "pub_sub_rt" {
  vpc_id = aws_vpc.vpc.id

  tags = {
    Name = "${var.environment}-${var.project}-vpc"
  }
}

resource "aws_route_table_association" "pub_sub_ass_rt" {
  count          = var.az_limit
  route_table_id = aws_route_table.pub_sub_rt.id
  subnet_id      = aws_subnet.public_subnets[count.index].id
}

resource "aws_route" "pub_sub_to_gw" {
  route_table_id         = aws_route_table.pub_sub_rt.id
  destination_cidr_block = "0.0.0.0/0"
  gateway_id             = aws_internet_gateway.gw.id
}