output "VM-ID" {
  description = "ID(s) of the VM(s) that were created."
  value       = azurerm_virtual_machine.VM-Windows.*.id
}

output "VM-Name" {
  description = "Name of the VM(s) that were created."
  value       = azurerm_virtual_machine.VM-Windows.*.name
}