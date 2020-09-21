output "DataDisk-IDs" {
  description = "ID(s) of the Data Disks provisoned."
  value       = azurerm_managed_disk.VMDataDisk.*.id
}