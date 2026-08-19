terraform {
  backend "azurerm" {
    resource_group_name  = "transit-terraform-rg"
    storage_account_name = "transitfstatetunisia"
    container_name       = "tfstate"
    key                  = "transit.terraform.tfstate"
  }
}

terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "4.78.0"
    }
  }
}

provider "azurerm" {
  features {}
}
