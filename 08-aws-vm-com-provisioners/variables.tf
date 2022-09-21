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

variable "key_vpc" {
  description = "Variável que indica o caminho do bucket para guardar o Terraform State"
}

variable "key_name" {
  description = "key_name"
}

variable "vm_ami" {
  description = "vm_ami"
}

variable "vm_instance_type" {
  description = "vm_instance_type"
}

variable "aws_vm_name" {
  description = "aws_vm_name"
}

variable "connection_user" {
  description = "connection_user"
}