SharedServicesResourceGroupLocation                 = "WestUS"
SharedServices-VNet-AddressSpace                    = "10.0.0.0/16"
SharedServices-GatewaySubnet-AddressPrefix          = "10.0.1.0/27"
SharedServices-AzureFirewallSubnet-AddressPrefix    = "10.0.2.0/26"
SharedServices-DomainControllerSubnet-AddressPrefix = "10.0.3.0/24"

EnableVPNGateway = true
EnableERGateway  = true
EnableAFW  = true

Hub-VPNGateway-ActiveActiveEnabled = false
Hub-ERGateway-ActiveActiveEnabled  = false

Hub-VPNGateway-BGPEnabled = true
Hub-ERGateway-BGPEnabled  = true

Hub-ERGateway-SKU  = "Standard"
Hub-VPNGateway-SKU = "Standard"

AFWPIP-AllocationMethod = "Static"
AFWPIP-SKU              = "Standard"