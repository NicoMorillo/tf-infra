resource "aws_security_group" "ec2_sg" {
  name        = "ec2_sg"
  description = "ec2 app security group"
  vpc_id      = var.vpc_id

  tags = {
    Name = "${var.environment}-${var.project}-G"
  }
}
