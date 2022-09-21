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

variable "subnet_name" {
  description = "subnet_name"
}

variable "subnet_address_prefixes" {
  description = "subnet_address_prefixes"
}

variable "ngs_name" {
  description = "ngs_name"
}

variable "security_rule_name" {
  description = "security_rule_name"
}

variable "security_rule_priority" {
  description = "security_rule_priority"
}

variable "security_rule_direction" {
  description = "security_rule_direction"
}

variable "security_rule_access" {
  description = "security_rule_access"
}

variable "security_rule_protocol" {
  description = "security_rule_protocol"
}

variable "security_rule_source_port_range" {
  description = "security_rule_source_port_range"
}

variable "security_rule_destination_port_range" {
  description = "security_rule_destination_port_range"
}

variable "security_rule_source_address_prefix" {
  description = "security_rule_source_address_prefix"
}

variable "security_rule_destination_address_prefix" {
  description = "security_rule_destination_address_prefix"
}

variable "owner" {
  description = "Variável que indica quem é o proprietário do recurso"
}

variable "manage_by" {
  description = "Variável que indica quem administra o recurso"
}