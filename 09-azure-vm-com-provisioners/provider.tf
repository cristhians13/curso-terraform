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
    key                  = "azure-vm-provisioners/terraform.tfstate"
  }
}

provider "azurerm" {
  features {}
}

data "terraform_remote_state" "vnet" {
  backend = "azurerm"
  config = {
    resource_group_name  = var.storage_account_resource_group_name_rs
    storage_account_name = var.storage_account_name_rs
    container_name       = var.storage_container_name_rs
    key                  = var.key_vnet
  }
}