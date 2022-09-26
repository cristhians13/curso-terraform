resource "aws_vpc" "vpc" {
  cidr_block = var.vpc_cidr_block

  tags = {
    "Name" = var.vpc_name
  }
}

resource "aws_subnet" "subnet" {
  count      = terraform.workspace == "prod" ? 3 : 1
  vpc_id     = aws_vpc.vpc.id
  cidr_block = cidrsubnet(aws_vpc.vpc.cidr_block, 8, count.index)

  tags = {
    Name = "subnet-terraform-$(count.index)"
  }
}
