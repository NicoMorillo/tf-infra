
resource "aws_security_group_rule" "sg_in_rule" {
  type              = "ingress"
  from_port         = 22
  to_port           = 22
  cidr_blocks       = ["0.0.0.0/0"]
  protocol          = "tcp"
  security_group_id = module.ec2.sg_ec2
}

resource "aws_security_group_rule" "hhtps_sg_in_rule" {
  type              = "ingress"
  from_port         = 443
  to_port           = 443
  cidr_blocks       = ["0.0.0.0/0"]
  protocol          = "tcp"
  security_group_id = module.ec2.sg_ec2
}

resource "aws_security_group_rule" "hhtp_sg_in_rule" {
  type              = "ingress"
  from_port         = 80
  to_port           = 80
  cidr_blocks       = ["0.0.0.0/0"]
  protocol          = "tcp"
  security_group_id = module.ec2.sg_ec2
}

resource "aws_security_group_rule" "sg_egr_rule" {
  type              = "egress"
  from_port         = 0
  to_port           = 0
  cidr_blocks       = ["0.0.0.0/0"]
  protocol          = -1
  security_group_id = module.ec2.sg_ec2
}

# resource "aws_security_group_rule" "webapp_sg_in_rule" {
#   type              = "ingress"
#   from_port         = 5000
#   to_port           = 5000
#   cidr_blocks       = ["0.0.0.0/0"]
#   protocol          = "tcp"
#   security_group_id = module.ec2.sg_ec2
# }
