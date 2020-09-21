variable "Environment" {
  type        = string
  description = "Environment tag."
}
variable "CostCenter" {
  type        = string
  description = "CostCenter tag."
}

variable "NonProd-ResourceGroupLocation" {
  type        = string
  description = "The location to deploy the Resource Group."
}

variable "NonProd-VNet-AddressSpace" {
  type        = string
  description = "The address space (ie. 1.2.3.4/56) for the NonProd VNet."
}

variable "NonProd-WebSubnet-AddressPrefix" {
  type        = string
  description = "The address space (ie. 1.2.3.4/56) for the Web Subnet within the NonProd VNet."
}

variable "NonProd-AppSubnet-AddressPrefix" {
  type        = string
  description = "The address space (ie. 1.2.3.4/56) for the App Subnet within the NonProd VNet."
}

variable "NonProd-DataSubnet-AddressPrefix" {
  type        = string
  description = "The address space (ie. 1.2.3.4/56) for the Data Subnet within the NonProd VNet."
}