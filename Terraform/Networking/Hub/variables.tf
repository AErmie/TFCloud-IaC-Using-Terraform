variable "Environment" {
  type        = string
  description = "Environment tag."
}
variable "CostCenter" {
  type        = string
  description = "CostCenter tag."
}

variable "SharedServicesResourceGroupLocation" {
  type        = string
  description = "The location to deploy the Resource Group."
}

variable "SharedServices-VNet-AddressSpace" {
  type        = string
  description = "The address space (ie. 1.2.3.4/56) for the Shared Services VNet."
}

variable "SharedServices-GatewaySubnet-AddressPrefix" {
  type        = string
  description = "The address space (ie. 1.2.3.4/56) for the Gateway Subnet within the Shared Services VNet."
}

variable "SharedServices-AzureFirewallSubnet-AddressPrefix" {
  type        = string
  description = "The address space (ie. 1.2.3.4/56) for the Azure Firewall Subnet within the Shared Services VNet."
}

variable "SharedServices-DomainControllerSubnet-AddressPrefix" {
  type        = string
  description = "The address space (ie. 1.2.3.4/56) for the Domain Controller Subnet within the Shared Services VNet."
}

variable "EnableVPNGateway" {
  type        = bool
  description = "Control whether the VPN Gateway will be deployed or not."
}
variable "EnableERGateway" {
  type        = bool
  description = "Control whether the Express Route Gateway will be deployed or not."
}
variable "EnableAFW" {
  type        = bool
  description = "Control whether the Azure Firewall will be deployed or not."
}

variable "Hub-VPNGateway-ActiveActiveEnabled" {
  type        = string
  description = "Only select Enable active-active mode if you are creating an active-active gateway configuration."
}
variable "Hub-ERGateway-ActiveActiveEnabled" {
  type        = string
  description = "Only select Enable active-active mode if you are creating an active-active gateway configuration."
}

variable "Hub-VPNGateway-BGPEnabled" {
  type        = string
  description = "'True' or 'False' whether BGP is enabled."
}
variable "Hub-ERGateway-BGPEnabled" {
  type        = string
  description = "'True' or 'False' whether BGP is enabled."
}

variable "Hub-ERGateway-SKU" {
  type        = string
  description = "Set the specific ExpressRoute Gateway SKU. Available options include: 'Standard', 'HighPerformance', or 'UltraPerformance'"
}
variable "Hub-VPNGateway-SKU" {
  type        = string
  description = "Set the specific S2S VPN Gateway SKU. Available options include: VpnGw1, VpnGw2, VpnGw3, Standard, and HighPerformance."
}

variable "AFWPIP-AllocationMethod" {
  type        = string
  description = "Options include 'Dynamic' or 'Static'."
}
variable "AFWPIP-SKU" {
  type        = string
  description = "Options are 'Basic' or 'Standard'."
}