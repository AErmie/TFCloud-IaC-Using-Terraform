output "Hub2Prod-Peering-ID" {
  value = azurerm_virtual_network_peering.Hub-to-Prod-Peering.id
}

output "Hub2NonProd-Peering-ID" {
  value = azurerm_virtual_network_peering.Hub-to-NonProd-Peering.id
}