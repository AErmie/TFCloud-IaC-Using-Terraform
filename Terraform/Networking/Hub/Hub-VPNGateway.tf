resource "azurerm_public_ip" "Hub-VPNGateway-PublicIP" {
  # Can't change PublicIP to variable creation, and include it as a depends_on for the VPN Gateway object. Terraform error/bug.
  // count = var.EnableVPNGateway ? 1 : 0
  
  name                = "Hub-VPNGW-PIP"
  location            = azurerm_resource_group.SharedServicesRG.location
  resource_group_name = azurerm_resource_group.SharedServicesRG.name
  allocation_method   = "Dynamic"
  tags = {
    Environment = var.Environment
    CostCenter  = var.CostCenter
  }
}

resource "azurerm_virtual_network_gateway" "Hub-VPNGateway" {
  count = var.EnableVPNGateway ? 1 : 0

  name                = "Hub-VPNGW"
  location            = azurerm_resource_group.SharedServicesRG.location
  resource_group_name = azurerm_resource_group.SharedServicesRG.name
  type                = "VPN"
  vpn_type            = "RouteBased"
  active_active       = var.Hub-VPNGateway-ActiveActiveEnabled
  enable_bgp          = var.Hub-VPNGateway-BGPEnabled
  sku                 = var.Hub-VPNGateway-SKU
  ip_configuration {
    name                          = "Hub-VPNGW-IPConfig"
    public_ip_address_id          = azurerm_public_ip.Hub-VPNGateway-PublicIP.id
    private_ip_address_allocation = "Dynamic"
    subnet_id                     = azurerm_subnet.GatewaySubnet.id
  }
  depends_on = [azurerm_virtual_network.SharedServicesVNET, azurerm_public_ip.Hub-VPNGateway-PublicIP]
  tags = {
    Environment = var.Environment
    CostCenter  = var.CostCenter
  }
}