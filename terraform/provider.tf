# Copyright 2025 TechBrain. All rights reserverd.
#
# Created on: 2025.12.01
# Created by: Przemyslaw Chmielecki
# Modified on: 2026.01.02
# Modified by: Przemyslaw Chmielecki

terraform {
  required_version = ">= 1.5" # TF version
  required_providers {        # Azure RM provider version
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~>4.57"
    }
  }
  # External tfstate location (Azure)
  backend "azurerm" {
    resource_group_name  = "tfstate-damiansabaknew"
    storage_account_name = "tfstatetedamiannew"
    container_name       = "tfstate"
    key                  = "ds.tfstate"
  }
}

# Config for provider
provider "azurerm" {
  features {
    resource_group {
      prevent_deletion_if_contains_resources = false
    }
  }
  subscription_id = var.subscription_id
}