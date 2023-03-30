provider "aws" {
  region = "eu-central-1"

  default_tags {

    tags = {

      Name        = "${local.environment}-${local.project}"
      Environment = local.environment
      Owner       = local.owner
      Project     = local.project

    }
  }
}