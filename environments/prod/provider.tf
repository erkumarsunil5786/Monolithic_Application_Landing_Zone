terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "4.81.0"
    }
  }
}

provider "azurerm" {
  features {}
  subscription_id = "ec16d7d8-bc8f-4e56-9366-8ceb1c3eaaa3"
}