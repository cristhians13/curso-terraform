resource "azurerm_resource_group" "resource_group" {
  name     = var.vnet_resource_group_name
  location = var.location

  tags = local.common_tags
}

resource "null_resource" "provisioner" {
  provisioner "local-exec" {
    command = "echo Resource Group ID: ${azurerm_resource_group.resource_group.id} >> resource-group-id.txt"
  }
}