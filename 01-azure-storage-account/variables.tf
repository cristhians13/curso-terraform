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

variable "storage_account_resource_group_name" {
  description = "Indica o nome do RG da Storage-Account"
}

variable "storage_account_name" {
  description = "Indica o nome da Storage-Account"
}

variable "storage_container_name" {
  description = "Indica o nome do container na Storage-Account"
}

variable "owner" {
  description = "Variável que indica quem é o proprietário do recurso"
}

variable "manage_by" {
  description = "Variável que indica quem administra o recurso"
}