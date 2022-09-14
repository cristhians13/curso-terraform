resource "azurerm_resource_group" "efirst_resource_group" {
  name     = ""
  location = var.location

  tags = ""
}

resource "azurerm_storage_account" "first_storage_account" {
  name                     = ""
  resource_group_name      = ""
  location                 = var.location
  account_tier             = var.account_tier
  account_replication_type = var.account_replication_type

  tags = ""
}

resource "azurerm_storage_container" "first_container" {
  name                  = ""
  storage_account_name  = ""
}