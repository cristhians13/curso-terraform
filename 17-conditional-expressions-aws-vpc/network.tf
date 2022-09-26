resource "aws_vpc" "vpc" {
  count = var.environment == "prod" ? 1 : 0

  cidr_block = var.vpc_cidr_block

  tags = {
    "Name" = var.vpc_name
  }
}

