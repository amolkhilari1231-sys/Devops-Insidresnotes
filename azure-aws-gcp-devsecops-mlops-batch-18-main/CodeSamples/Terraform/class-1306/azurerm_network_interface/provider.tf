terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "4.80.0"
    }
  }
  backend "azurerm" {
    resource_group_name  = "rg-netflix-landing-zone"
    storage_account_name = "netfliixstorage"
    container_name       = "tfstate"
    key                  = "network_interface.tfstate"
  }
}

provider "azurerm" {
  features {}
}
