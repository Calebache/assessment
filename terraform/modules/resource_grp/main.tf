#create resource group
resource "azurerm_resource_group" "rg" {
  name     = "${var.base_name}-RG"
  location = var.location
}