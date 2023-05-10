output "rg_name_out" {
  value       = azurerm_resource_group.rg.name
  description = "output the resource group name"
}

output "rg_location_out" {
  value       = azurerm_resource_group.rg.location
  description = "output the resource group location"
}