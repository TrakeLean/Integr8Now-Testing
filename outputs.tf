output "resource_group_name" {
  description = "Name of the created Resource Group."
  value       = azurerm_resource_group.servicenow.name
}

output "resource_group_id" {
  description = "ID of the created Resource Group."
  value       = azurerm_resource_group.servicenow.id
}

output "location" {
  description = "Azure region where the Resource Group is provisioned."
  value       = azurerm_resource_group.servicenow.location
}
