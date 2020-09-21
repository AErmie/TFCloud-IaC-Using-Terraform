variable "HubExpressRoute-PeeringLocation" {
  type        = string
  description = "The name of the peering location and not the Azure resource location."
}

variable "ExpressRoute-PeeringType" {
  type        = string
  description = "The type of peering that will be used. Options include: 'AzurePrivatePeering', 'AzurePublicPeering ', and 'MicrosoftPeering'."
}
variable "PeerASN" {
  type        = string
  description = "The Either a 16-bit or a 32-bit ASN. Can either be public or private."
}
variable "PrimaryPeerAddressPrefix" {
  type        = string
  description = "A /30 subnet for the primary link"
}
variable "SecondaryPeerAddressPrefix" {
  type        = string
  description = "A /30 subnet for the secondary link"
}
variable "VLANID" {
  type        = string
  description = "A valid VLAN ID to establish this peering on."
}