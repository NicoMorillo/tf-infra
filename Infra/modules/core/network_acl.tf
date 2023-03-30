resource "aws_network_acl" "nacl" {
  vpc_id = aws_vpc.vpc.id

  tags = {
    Name = "${var.environment}-${var.project}-vpc"
  }
}

resource "aws_network_acl_association" "nacl_ass_pub1" {
  network_acl_id = aws_network_acl.nacl.id
  subnet_id      = aws_subnet.public_subnets[0].id
}
resource "aws_network_acl_association" "nacl_ass_pub2" {
  network_acl_id = aws_network_acl.nacl.id
  subnet_id      = aws_subnet.public_subnets[1].id
}

resource "aws_network_acl_rule" "nacl_in_rule_1" {
  network_acl_id = aws_network_acl.nacl.id
  rule_number    = 100
  egress         = false
  protocol       = -1
  rule_action    = "allow"
  cidr_block     = "0.0.0.0/0"
}

resource "aws_network_acl_rule" "nacl_out_rule_1" {
  network_acl_id = aws_network_acl.nacl.id
  rule_number    = 100
  egress         = true
  protocol       = -1
  rule_action    = "allow"
  cidr_block     = "0.0.0.0/0"
}