data "aws_vpc" "vpc_data" {
  cidr_block = "172.31.0.0/16"
}

resource "aws_subnet" "subnet" {
  vpc_id     = data.aws_vpc.vpc_data.id
  cidr_block = var.subnet_cidr_block

  tags = {
    Name = var.aws_subnet_name
  }
}

