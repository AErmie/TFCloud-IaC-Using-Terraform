output "NonProd-RGName" {
  value = azurerm_virtual_network.NonProd-VNET.resource_group_name
}

output "NonProd-VNet-Name" {
  value = azurerm_virtual_network.NonProd-VNET.name
}

output "NonProd-VNet-ID" {
  value = azurerm_virtual_network.NonProd-VNET.id
}