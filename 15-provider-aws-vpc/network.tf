resource "aws_vpc" "vpc" {
  cidr_block = var.vpc_cidr_block

  tags = {
    "Name" = var.vpc_name
  }
}

resource "aws_vpc" "vpc_eua" {
  provider = aws.eua

  cidr_block = var.vpc_cidr_block

  tags = {
    "Name" = var.vpc_name
  }
}

