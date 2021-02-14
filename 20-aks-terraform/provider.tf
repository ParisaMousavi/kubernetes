terraform {
  backend "remote" {
    organization : "parisa-training"
    workspaces {
        name = "20-aks-terraform"
    }
  }
}

provider "azurerm" {
  features {
    
  }
  
}