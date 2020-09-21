resource "azurerm_virtual_machine" "VM-Windows" {
  count = var.NumberOfVMs

  name                  = join("", [var.VMName, format("%02d", count.index + 1)])
  location              = var.ComputeRGLocation
  resource_group_name   = var.ComputeRGName
  network_interface_ids = [var.NIC-ID]
  vm_size               = var.VMSize

  delete_os_disk_on_termination    = var.DeleteOSDiskOnTermination
  delete_data_disks_on_termination = var.DeleteDataDiskOnTermination

  storage_image_reference {
    publisher = var.ImagePublisher
    offer     = var.ImageOffer
    sku       = var.ImageSKU
    version   = var.ImageVersion
  }
  storage_os_disk {
    name              = join("", [var.VMName, format("%02d", count.index + 1), "-OSDisk"])
    caching           = var.OSDiskCaching
    create_option     = var.OSDiskCreateOption
    managed_disk_type = var.ManagedDiskType
  }
  os_profile {
    computer_name  = join("", [var.VMName, format("%02d", count.index + 1)])
    admin_username = var.AdminUsername
    admin_password = var.AdminPassword
  }
  os_profile_windows_config {
    provision_vm_agent = true
  }

  tags = {
    Environment = var.Environment
    CostCenter  = var.CostCenter
  }
}