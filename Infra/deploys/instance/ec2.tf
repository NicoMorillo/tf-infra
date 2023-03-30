module "ec2" {
  source = "../../modules/instance"


  vpc_id    = data.terraform_remote_state.vpc.outputs.vpc_id
  subnet_id = data.terraform_remote_state.vpc.outputs.public_subnets_id_1

  environment   = local.environment
  project       = local.project
  ami           = var.ami
  instance_type = var.instance_type

}