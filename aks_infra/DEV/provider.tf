terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "4.58.0"
    }
  }

  #backend "azurerm" {}
}

provider "azurerm" {
  features {}
  subscription_id = "3ce6f46c-2ccc-4ab3-b3fe-cdd5ce3b12a7"

}