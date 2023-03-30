data "terraform_remote_state" "vpc" {
  backend = "s3"

  config = {
    bucket = "nico-app"
    key    = "nicolasm/project/${terraform.workspace}/pok-cal/infrastructure/vpc/terraform.state"
    region = "eu-central-1"


  }
}