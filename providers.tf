terraform {
  required_providers {
    volterra = {
      source = "volterraedge/volterra"
      version = "0.11.34"
    }
    http = {
      source = "hashicorp/http"
      version = "3.4.3"
    }   
    helm = {
      source = "hashicorp/helm"
      version = "2.14.0"
    }     
  }
}

provider "volterra" {
  # Configuration options
  url = "https://f5-bd.console.ves.volterra.io/api"
}

provider "helm" {
  kubernetes {
    config_path = "${path.module}/kubeconfig.yaml"
  }
}
