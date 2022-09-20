terraform {

  required_version = ">= 1.0.0"

  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "3.22.0"
    }
  }

  backend "azurerm" {
    resource_group_name  = var.storage_account_resource_group_name_rs
    storage_account_name = var.storage_account_name_rs
    container_name       = var.storage_container_name_rs
    key                  = var.key_vnet
  }
}

provider "azurerm" {
  features {}
}