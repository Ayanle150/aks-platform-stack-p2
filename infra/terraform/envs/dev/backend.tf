terraform {
  backend "azurerm" {
    resource_group_name  = "p2-rg-tfstate"
    storage_account_name = "p2tfstate1769785167"
    container_name       = "tfstate"
    key                  = "dev.terraform.tfstate"
  }
}
