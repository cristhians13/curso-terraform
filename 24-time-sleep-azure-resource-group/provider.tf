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
    key                  = "azure-resource-group-time-sleepvnet/terraform.tfstate"
  }
}

provider "azurerm" {
  features {}
}