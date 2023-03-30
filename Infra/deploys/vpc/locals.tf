locals {
  project     = lookup(var.project, terraform.workspace)
  environment = terraform.workspace
  owner       = "NicolasM"
  cidr_block  = lookup(var.cidr_block, terraform.workspace)
}