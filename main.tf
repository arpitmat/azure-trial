terraform {
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
	  version = ">= 2.26"
    }
    random = {
      source = "hashicorp/random"
    }
  }

  #backend "remote" {
  #  organization = "REPLACE_ME"
  #
  #  workspaces {
  #    name = "gh-actions-demo"
  #  }
  #}
}
provider "azurerm" {
  features {}
}

resource "azurerm_resource_group" "rg-terra" {
  name     = "BDF-Sandbox-Nitisha-Terra"
  location = "eastus"
   tags = {
        Environment = "Terraform Getting Started"
        Team = "Nitisha-terraform"
    }
}

provider "random" {}