terraform {

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.0"
    }
  }

  backend "s3" {
    bucket               = "nico-app"
    workspace_key_prefix = "nicolasm/project"
    key                  = "pok-cal/infrastructure/vpc/terraform.state"
    region               = "eu-central-1"
    acl                  = "bucket-owner-full-control"
  }
}