terraform {

  required_version = ">= 1.0.0"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "4.12.1"
    }

    azurerm = {
      source  = "hashicorp/azurerm"
      version = "3.22.0"
    }
  }
}

provider "aws" {
  region = var.region

  default_tags {
    tags = {
      owner     = var.owner
      manage-by = var.manage_by
    }
  }
}

provider "azurerm" {
  features {}
}