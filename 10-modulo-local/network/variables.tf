variable "vpc_cidr_block" {
  description = "vpc_cidr_block"
}

variable "vpc_name" {
  description = "vpc_name"
}

variable "subnet_cidr_block" {
  description = "subnet_cidr_block"
}

variable "aws_subnet_name" {
  description = "aws_subnet_name"
}

variable "internetgateway_name" {
  description = "internetgateway_name"
}

variable "routetable_cidr_block" {
  description = "routetable_cidr_block"
}

variable "routetable_name" {
  description = "routetable_name"
}

variable "securitygroup_name" {
  description = "securitygroup_name"
}

variable "ingress_from_port" {
  description = "ingress_from_port"
}

variable "ingress_to_port" {
  description = "ingress_to_port"
}

variable "ingress_protocol" {
  description = "ingress_protocol"
}

variable "ingress_cidr_blocks" {
  description = "ingress_cidr_blocks"
}

variable "egress_from_port" {
  description = "egress_from_port"
}

variable "egress_to_port" {
  description = "egress_to_port"
}

variable "egress_protocol" {
  description = "egress_protocol"
}

variable "egress_cidr_blocks" {
  description = "egress_cidr_blocks"
}