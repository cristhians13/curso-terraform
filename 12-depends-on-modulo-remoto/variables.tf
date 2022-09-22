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

variable "key_vnet" {
  description = "Variável que indica o caminho do storage account para guardar o Terraform State"
}

variable "vm_resource_group_name" {
  description = "vm_resource_group_name"
}

variable "public_ip_name" {
  description = "public_ip_name"
}

variable "public_ip_allocation_method" {
  description = "public_ip_allocation_method"
}

variable "network_interface_name" {
  description = "network_interface_name"
}

variable "network_interface_ip_name" {
  description = "network_interface_ip_name"
}

variable "network_interface_private_ip_address_allocation" {
  description = "network_interface_private_ip_address_allocation"
}

variable "vm_name" {
  description = "vm_name"
}

variable "vm_size" {
  description = "vm_size"
}

variable "vm_admin_username" {
  description = "vm_admin_username"
}

variable "vm_os_disk_caching" {
  description = "vm_os_disk_caching"
}

variable "vm_os_disk_storage_account_type" {
  description = "vm_os_disk_storage_account_type"
}

variable "vm_source_image_reference_publisher" {
  description = "vm_source_image_reference_publisher"
}

variable "vm_source_image_reference_offer" {
  description = "vm_source_image_reference_offer"
}

variable "vm_source_image_reference_sku" {
  description = "vm_source_image_reference_sku"
}

variable "vm_source_image_reference_version" {
  description = "vm_source_image_reference_version"
}

variable "owner" {
  description = "Variável que indica quem é o proprietário do recurso"
}

variable "manage_by" {
  description = "Variável que indica quem administra o recurso"
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