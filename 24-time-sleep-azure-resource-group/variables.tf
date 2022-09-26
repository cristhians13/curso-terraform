variable "location" {
  description = "Variável que indica a região onde os recursos vão ser criados"
  type        = string
  default     = "Brazil South"
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

variable "vnet_resource_group_name" {
  description = "vnet_resource_group_name"
}

variable "vnet_name" {
  description = "vnet_name"
}

variable "vnet_address_space" {
  description = "vnet_address_space"
}

variable "owner" {
  description = "Variável que indica quem é o proprietário do recurso"
}

variable "manage_by" {
  description = "Variável que indica quem administra o recurso"
}