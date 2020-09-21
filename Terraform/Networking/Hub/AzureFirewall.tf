resource "azurerm_public_ip" "AFW-PublicIP" {
  # Can't change PublicIP to variable creation, and include it as a depends_on for the AFW object. Terraform error/bug.
  // count = var.EnableAFW ? 1 : 0
  
  name                = "AWF-PIP"
  location            = azurerm_virtual_network.SharedServicesVNET.location
  resource_group_name = azurerm_virtual_network.SharedServicesVNET.resource_group_name
  allocation_method   = var.AFWPIP-AllocationMethod
  sku                 = var.AFWPIP-SKU
  tags = {
    Environment = var.Environment
    CostCenter  = var.CostCenter
  }
}

resource "azurerm_firewall" "AFW" {
  count = var.EnableAFW ? 1 : 0

  name                = "AzureFirewall"
  location            = azurerm_virtual_network.SharedServicesVNET.location
  resource_group_name = azurerm_virtual_network.SharedServicesVNET.resource_group_name

  ip_configuration {
    name                 = "AFW-Config"
    subnet_id            = azurerm_subnet.AzureFirewallSubnet.id
    public_ip_address_id = azurerm_public_ip.AFW-PublicIP.id
  }
  depends_on = [azurerm_virtual_network.SharedServicesVNET, azurerm_public_ip.AFW-PublicIP]
  tags = {
    Environment = var.Environment
    CostCenter  = var.CostCenter
  }
}