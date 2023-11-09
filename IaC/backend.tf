terraform { 
  backend "azurerm" {
      resource_group_name   = NSSFMsRG-smooth-sloth
      storage_account_name   = nssfmstorage
      container_name         = azurerm_storage_container.tf_state_container.name
      key                    = "tf/terraform.tfstate"
    }
  }
