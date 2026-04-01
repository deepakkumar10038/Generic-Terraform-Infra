terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "4.52.0"
    }
  }
}


provider "azurerm" {
  features {}
  subscription_id = "e563afc4-c3e6-4434-8b6a-99d039baf505"
}
