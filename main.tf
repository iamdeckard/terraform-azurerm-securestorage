terraform {
    required_version = ">=1.5.0"
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = ">=3.65.0"
    }
  }
}

# Configure the Microsoft Azure Provider
provider "azurerm" {
  features {}
}


resource "azurerm_storage_account" "securestorage" { 
    resource_group_name = var.resource_group_name 
    location = var.location 
    name = var.storage_account_name 
    account_tier = var.account_tier 
    account_replication_type = var.account_replication_type 
    public_network_access_enabled = var.public_network_access
    } 