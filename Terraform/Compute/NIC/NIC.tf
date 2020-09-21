resource "azurerm_network_interface" "VM-NIC" {
  count = var.NumberOfVMs

  name                = join("", [var.VMName, format("%02d", count.index + 1), "-NIC"])
  location            = var.ComputeRGLocation
  resource_group_name = var.ComputeRGName

  ip_configuration {
    name                          = join("", [var.VMName, format("%02d", count.index + 1), "-IPConfig"])
    subnet_id                     = var.SubnetID
    private_ip_address_allocation = "Dynamic"
  }
  tags = {
    Environment = var.Environment
    CostCenter  = var.CostCenter
  }
}