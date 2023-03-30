resource "aws_instance" "ec2" {
  ami                         = var.ami
  instance_type               = var.instance_type
  iam_instance_profile        = aws_iam_instance_profile.iam_ec2_profile.name
  key_name                    = "nico-k"
  vpc_security_group_ids     = [aws_security_group.ec2_sg.id]
  subnet_id                   = var.subnet_id
  associate_public_ip_address = true

  tags = {
    Name = "${var.environment}-${var.project}-ec2"
  }
}