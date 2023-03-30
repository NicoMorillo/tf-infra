locals {
  project     = lookup(var.project, terraform.workspace)
  environment = terraform.workspace
  owner       = "NicolasM"
}