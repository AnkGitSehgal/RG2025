terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "4.57.0"
    }
  }
  backend "azurerm" {

    resource_group_name  = "Ankit_Infra"
    storage_account_name = "ankitsg"             
    container_name       = "statefile"           
    key                  = "a.terraform.tfstate" 
    }
}

provider "azurerm" {
  features {}
  subscription_id = "8d51cfaa-56d4-46af-b093-6b89fbb346da"
}

resource "azurerm_resource_group" "Ankit_Ifra2" {
  name     = "Infra_Pipeline"
  location = "West Europe"
}

resource "azurerm_resource_group" "Ankit_Ifra3" {
  name     = "Infra_PipelineNew"
  location = "West Europe"
}

