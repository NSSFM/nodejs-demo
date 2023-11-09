terraform {
  required_version = ">=1.0"

  required_providers {
    azapi = {
      source  = "azure/azapi"
      version = "~>1.5"
    }
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~>3.0"
    }
    random = {
      source  = "hashicorp/random"
      version = "~>3.0"
    }
    time = {
      source  = "hashicorp/time"
      version = "0.9.1"
    }
  }
  backend "azurerm" {
    resource_group_name   = azurerm_resource_group.rg.name
    storage_account_name   = azurerm_storage_account.nssfmstorage.name
    container_name         = azurerm_storage_container.tf_state_container.name
    key                    = "tf/terraform.tfstate"
  }

}

provider "azurerm" {
  features {}
}
