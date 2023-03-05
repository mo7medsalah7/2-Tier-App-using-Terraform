terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.0"
    }
  }
}

# Configure the AWS Provider
provider "aws" {
  region = var.aws_region
}


terraform {
  backend "s3" {
    bucket = "mosalahbucketdevoooo"
    key    = "tfstate"
    region = "us-east-2"
  }
}
