terraform {
  backend "azurerm" {
    resource_group_name   = "NSSFMsRG-smooth-sloth"
    storage_account_name   = "nssfmstorage"
    container_name         = "tfstate-container"
    key                    = "terraform.tfstate"
    access_key             = "vqtF/6Y/ac/y9Krpxj9tKdUYCFmLD7nMdK0ioCoyrJuExk7KGLPvGAfOgl5FRickmAaxlMzHpMuW+AStypTweQ==" 
  }
}
