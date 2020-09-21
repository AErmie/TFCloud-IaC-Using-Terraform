data "azurerm_virtual_network" "SharedServicesVNET" {
  name                = "SharedServicesVNET"
  resource_group_name = "SharedServicesRG-TFC"
}

data "azurerm_virtual_network" "ProdVNET" {
  name                = "Prod-VNET"
  resource_group_name = "ProdSpokeRG-TFC"
}

data "azurerm_virtual_network" "NonProdVNET" {
  name                = "NonProd-VNET"
  resource_group_name = "NonProdSpokeRG-TFC"
}