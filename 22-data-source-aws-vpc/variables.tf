variable "region" {
  description = "Variável que indica a região onde os recursos vão ser criados"
}

variable "owner" {
  description = "Variável que indica quem é o proprietário do recurso"
}

variable "manage_by" {
  description = "Variável que indica quem administra o recurso"
}

variable "bucket_name_remote_state" {
  description = "Variável que indica o nome do bucket S3"
}

variable "subnet_cidr_block" {
  description = "subnet_cidr_block"
}

variable "aws_subnet_name" {
  description = "aws_subnet_name"
}