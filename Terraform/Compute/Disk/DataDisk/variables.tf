variable "Environment" {
  type        = string
  description = "Environment tag."
}
variable "CostCenter" {
  type        = string
  description = "CostCenter tag."
}
// variable "NumberOfDataDisks" {
//   type        = number
//   description = "Number of Data Disks to create."
// }

variable "ComputeRGName" {
  type        = string
  description = "The name of the Resource Group for the Compute resource(s)."
}
variable "ComputeRGLocation" {
  type        = string
  description = "The location where the Resource Group will be deployed (will also affect the VMs that are deployed)."
}

variable "VMName" {
  type        = string
  description = "Name of the VM."
}
variable "NumberOfVMs" {
  type        = number
  description = "Number of VM resources to create."
}


variable "DataDisk-StorageAccountType" {
  type        = string
  description = "Data Disk Storange Account Type (ie. Standard_LRS, Standard_GRS)."
}
variable "DataDisk-CreateOption" {
  type        = string
  description = "Data Disk create option (ie. 'Empty')."
}
variable "DataDisk-DiskSizeGB" {
  type        = number
  description = "Disk Size in GB."
}