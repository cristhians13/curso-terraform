terraform {

  required_version = ">= 1.0.0"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "4.12.1"
    }
  }

  backend "s3" {
    bucket = "cristhians-remote-state"
    key    = "aws-vm-modulo-local/terraform.tfstate"
    region = "sa-east-1"
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

module "network" {
  source = "./network"

  vpc_cidr_block = var.vpc_cidr_block
  vpc_name = var.vpc_name
  subnet_cidr_block = var.subnet_cidr_block
  aws_subnet_name = var.aws_subnet_name
  internetgateway_name = var.internetgateway_name
  routetable_cidr_block = var.routetable_cidr_block
  routetable_name = var.routetable_name
  securitygroup_name = var.securitygroup_name
  ingress_from_port = var.ingress_from_port
  ingress_to_port = var.ingress_to_port
  ingress_protocol = var.ingress_protocol
  ingress_cidr_blocks = var.ingress_cidr_blocks
  egress_from_port = var.egress_from_port
  egress_to_port = var.egress_to_port
  egress_protocol = var.egress_protocol
  egress_cidr_blocks = var.egress_cidr_blocks
}