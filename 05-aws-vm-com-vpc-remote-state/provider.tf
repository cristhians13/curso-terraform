terraform {

  required_version = ">= 1.0.0"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "4.12.1"
    }
  }

  backend "s3" {
    bucket = var.bucket_name_remote_state
    key    = var.aws_key_vm
    region = var.region
  }
}

provider "aws" {
  region = var.region

  default_tags {
    tags = {
      owner     = var.owner
      manage-by = var.manage_by
    }
  }
}

data "terraform_remote_state" "vpc" {
  backend = "s3"
  config = {
    bucket = var.bucket_name_remote_state
    key    = var.key_vpc
    region = var.region
  }
}