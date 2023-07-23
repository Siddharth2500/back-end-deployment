terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "=3.0.0"
    }
  }
  backend "azurerm" {
    resource_group_name  = "terraform-back-end-real-project"
    storage_account_name = "backendrealworldproject"
    container_name       = "terraform-state-container"
    key                  = "terraform.backendstate"
  }
}

provider "azurerm" {
  features {}
}
