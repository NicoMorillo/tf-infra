output "ec2_ip" {
  value = aws_instance.ec2.public_ip
}

output "sg_ec2" {
  value = aws_security_group.ec2_sg.id
}