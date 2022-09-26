resource "azurerm_resource_group" "resource_group" {
  name     = var.vnet_resource_group_name
  location = var.location

  tags = local.common_tags
}

resource "time_sleep" "wait_10_seconds" {
  depends_on = [azurerm_resource_group.resource_group]

  create_duration = "10s"
}

resource "azurerm_virtual_network" "vnet" {
  depends_on = [time_sleep.wait_10_seconds]

  name                = var.vnet_name
  location            = var.location
  resource_group_name = azurerm_resource_group.resource_group.name
  address_space       = var.vnet_address_space

  tags = local.common_tags
}
