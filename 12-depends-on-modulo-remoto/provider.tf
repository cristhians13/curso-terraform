terraform {

  required_version = ">= 1.0.0"

  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "3.22.0"
    }
  }

  backend "azurerm" {
    resource_group_name  = "remote_state"
    storage_account_name = "cristhiansremotestate"
    container_name       = "remote-state"
    key                  = "azure-vm-modulo-remoto/terraform.tfstate"
  }
}

provider "azurerm" {
  features {}
}

module "network" {
  source  = "Azure/network/azurerm"
  version = "3.5.0"

  depends_on = [
    azurerm_resource_group.resource_group
  ]

  resource_group_name = var.vm_resource_group_name
}