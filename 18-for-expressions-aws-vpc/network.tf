resource "aws_vpc" "vpc" {
  cidr_block = var.vpc_cidr_block

  tags = {
    "Name" = var.vpc_name
  }
}

resource "aws_subnet" "subnet" {
  count = 3

  vpc_id     = aws_vpc.vpc.id
  cidr_block = "10.0.${count.index}.0/24"

  tags = {
    Name = "subnet-terraform-${count.index}"
  }
}

