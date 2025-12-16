terraform {
  required_version = ">= 1.5.0"

  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = ">= 3.107.0"
    }
  }

  cloud {
    organization = "Integr8Now-Pitstop"

    workspaces {
      name = "ServiceNowPitstop"
    }
  }
}

provider "azurerm" {
  features {}
}

resource "azurerm_resource_group" "servicenow" {
  name     = var.resource_group_name
  location = var.location
  tags     = var.tags
}
