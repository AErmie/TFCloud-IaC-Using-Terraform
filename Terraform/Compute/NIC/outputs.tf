output "NIC-IDs" {
  description = "ID(s) of the VM NIC(s) provisoned."
  value       = azurerm_network_interface.VM-NIC.*.id
}