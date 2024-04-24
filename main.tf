terraform {
  required_version = ">=1.6.0"
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = ">=3.0.1"
    }
  }
  #cloud {
  #  organization = "SandBox_Combits"
  #  workspaces {
  #   name = "Combits_Test"
  #    }
  #  }
}

provider "azurerm" {
  features {}
  skip_provider_registration = true
}
locals {
  tags = {
    "Project"     = var.project
    "Owner"       = var.owner
    "Environment" = var.environment
  }
}
resource "azurerm_storage_account" "securestorage" {
  resource_group_name           = var.resource_group_name
  location                      = var.location
  name                          = var.storage_account_name
  account_replication_type      = var.environment == "Production" ? "GRS" : "LRS"
  account_tier                  = "Standard"
  public_network_access_enabled = false
  tags                          = local.tags
}
