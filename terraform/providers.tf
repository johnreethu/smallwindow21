terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.42.0"
    }
  }
  required_version = ">= 0.15.3"

  backend "remote" {
    organization = "SmallWindow21"

    workspaces {
      name = "SmallWindow21-Workspace"
    }
  }
}

provider "aws" {
  #profile = var.aws_profile
  region = var.region
  # remember that if you change the region you will also need to change the ami
}


