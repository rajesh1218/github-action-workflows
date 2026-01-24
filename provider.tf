terraform {
  required_providers {
    azurerm = {
        source = "hashicorp/azurerm"
        version = "4.58.0"
    }
  }
  backend "azurerm" {
    resource_group_name  = "tfstate-rg"
    storage_account_name = "tfstateaccount7899"
    container_name       = "tfstate-1"
    key                  = "dev-terraform.tfstate"
  }
}
provider "azurerm" {
  features {}
  subscription_id = var.subscription_id
  client_id       = var.client_id
  client_secret   = var.client_secret
  tenant_id       = var.tenant_id
}
