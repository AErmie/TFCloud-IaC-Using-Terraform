resource "azurerm_managed_disk" "VMDataDisk" {
  count = var.NumberOfVMs

  #Need to figure out how to produce 'DC01-DataDisk01', 'DC01-DataDisk02', etc. Using multiple counts
  name                 = join("", [var.VMName, format("%02d", count.index + 1), "-DataDisk"])
  location             = var.ComputeRGLocation
  resource_group_name  = var.ComputeRGName
  storage_account_type = var.DataDisk-StorageAccountType
  create_option        = var.DataDisk-CreateOption
  disk_size_gb         = var.DataDisk-DiskSizeGB

  tags = {
    Environment = var.Environment
    CostCenter  = var.CostCenter
  }
}