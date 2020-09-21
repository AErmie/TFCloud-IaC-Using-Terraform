variable "Environment" {
  type        = string
  description = "Environment tag."
}
variable "CostCenter" {
  type        = string
  description = "CostCenter tag."
}
// variable "NumberOfNICs" {
//   type        = number
//   description = "Number of NIC resources to create."
// }

variable "ComputeRGName" {
  type        = string
  description = "The name of the Resource Group for the Compute resource(s)."
}
variable "ComputeRGLocation" {
  type        = string
  description = "The location where the Resource Group will be deployed (will also affect the VMs that are deployed)."
}

variable "NumberOfVMs" {
  type        = number
  description = "Number of VM resources to create."
}
variable "VMName" {
  type        = string
  description = "Name of the VM."
}

variable "SubnetID" {
  type        = string
  description = "Subnet ID to connect the NIC to."
}