terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "3.31.0"
    }
  }
}


provider "azurerm" {
  features {

  }
}

module "ResourceGroup" {
  source = "./modules/resource_grp"
  base_name = "cloudesence-${terraform.workspace}"
  location  = var.location
}


module "aks_this" {
  source = "./modules/aks"
  name   = "cloudesence-${terraform.workspace}"
  resource_group = {
    location = module.ResourceGroup.rg_location_out
    name     = module.ResourceGroup.rg_name_out
  }
  node_pools = [{
    name            = "agentpool"
    max_count       = 5
    os_disk_size_gb = 128
  }]
  tags = {
    "terragon:application-name" = "cloudesence"
    "terragon:owner"            = "caleb"
    "terragon:environment"      = "test"
  }
}