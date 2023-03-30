output "public_ip" {
  value = module.ec2.ec2_ip
}
output "sg_ec2" {
  value = module.ec2.sg_ec2
}