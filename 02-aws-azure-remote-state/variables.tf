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
  description = "Variável que indica o nome do bucket S3 Remote State"
}

variable "location" {
  description = "Variável que indica a região onde os recursos vão ser criados"
  type        = string
  default     = "Brazil South"
}

variable "account_tier" {
  description = "Tier da Storage Account na Azure"
  type        = string
  default     = "Standard"
}

variable "account_replication_type" {
  description = "Tipo de replicação de dados da Storage Account"
  type        = string
  default     = "LRS"
  sensitive   = true
}

variable "storage_account_resource_group_name_rs" {
  description = "Indica o nome do RG da Storage-Account com Remote State"
}

variable "storage_account_name_rs" {
  description = "Indica o nome da Storage-Account com Remote State"
}

variable "storage_container_name_rs" {
  description = "Indica o nome do container na Storage-Account com Remote State"
}