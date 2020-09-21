resource "azurerm_virtual_network_peering" "Hub-to-Prod-Peering" {
  name                         = "Hub-to-Prod-Peering"
  resource_group_name          = var.HubVNet-RGName
  virtual_network_name         = var.HubVNet-Name
  remote_virtual_network_id    = var.ProdNetwork-ID
  allow_virtual_network_access = var.HubVNet-AllowVNetAccess
  allow_forwarded_traffic      = var.HubVNet-AllowForwardedTraffic
  allow_gateway_transit        = var.HubVNet-AllowGatewayTransit
}

resource "azurerm_virtual_network_peering" "Prod-to-Hub-Peering" {
  name                         = "Prod-to-Hub-Peering"
  resource_group_name          = var.ProdVNet-RGName
  virtual_network_name         = var.ProdVNet-Name
  remote_virtual_network_id    = var.HubNetwork-ID
  allow_virtual_network_access = var.ProdVNet-AllowVNetAccess
  allow_forwarded_traffic      = var.ProdVNet-AllowForwardedTraffic
  allow_gateway_transit        = var.ProdVNet-AllowGatewayTransit
  depends_on                   = [azurerm_virtual_network_peering.Hub-to-Prod-Peering]
}

resource "azurerm_virtual_network_peering" "Hub-to-NonProd-Peering" {
  name                         = "Hub-to-NonProd-Peering"
  resource_group_name          = var.HubVNet-RGName
  virtual_network_name         = var.HubVNet-Name
  remote_virtual_network_id    = var.NonProdNetwork-ID
  allow_virtual_network_access = var.HubVNet-AllowVNetAccess
  allow_forwarded_traffic      = var.HubVNet-AllowForwardedTraffic
  allow_gateway_transit        = var.HubVNet-AllowGatewayTransit
  depends_on                   = [azurerm_virtual_network_peering.Prod-to-Hub-Peering]
}

resource "azurerm_virtual_network_peering" "NonProd-to-Hub-Peering" {
  name                         = "NonProd-to-Hub-Peering"
  resource_group_name          = var.NonProdVNet-RGName
  virtual_network_name         = var.NonProdVNet-Name
  remote_virtual_network_id    = var.HubNetwork-ID
  allow_virtual_network_access = var.NonProdVNet-AllowVNetAccess
  allow_forwarded_traffic      = var.NonProdVNet-AllowForwardedTraffic
  allow_gateway_transit        = var.NonProdVNet-AllowGatewayTransit
  depends_on                   = [azurerm_virtual_network_peering.Hub-to-NonProd-Peering]
}