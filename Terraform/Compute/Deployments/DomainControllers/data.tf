data "azurerm_virtual_network" "SharedServicesVNET" {
  name                = "SharedServicesVNET"
  resource_group_name = "SharedServicesRG"
}

data "azurerm_subnet" "DomainControllerSubnet" {
  name                 = "DomainControllerSubnet"
  resource_group_name  = "SharedServicesRG"
  virtual_network_name = "SharedServicesVNET"
}