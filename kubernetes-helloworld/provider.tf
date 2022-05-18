terraform {
  required_providers {
    mycloud = {
      source  = "hashicorp/kubernetes"
      version = "~> 1.13"
    }
  }
  backend "local" {
    path = "/tmp/terraform.tfstate"
  }
}

provider "kubernetes" {
  host = "dummykubernetes-dns-ce09b82c.hcp.westeurope.azmk8s.io"
}
