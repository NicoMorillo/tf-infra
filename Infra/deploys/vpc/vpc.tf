module "vpc" {
  source = "../../modules/core"

  cidr_block  = local.cidr_block
  environment = local.environment
  project     = local.project
  az_limit    = 2

}