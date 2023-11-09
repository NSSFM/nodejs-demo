terraform { 
  backend "azurerm" {
      resource_group_name   = azurerm_resource_group.rg.name
      storage_account_name   = azurerm_storage_account.nssfmstorage.name
      container_name         = azurerm_storage_container.tf_state_container.name
      key                    = "tf/terraform.tfstate"
    }
  }
