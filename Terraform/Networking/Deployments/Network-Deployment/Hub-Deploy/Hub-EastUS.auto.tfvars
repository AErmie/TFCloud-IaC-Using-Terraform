SharedServicesResourceGroupLocation                 = "EastUS"
SharedServices-VNet-AddressSpace                    = "10.1.0.0/16"
SharedServices-GatewaySubnet-AddressPrefix          = "10.1.1.0/27"
SharedServices-AzureFirewallSubnet-AddressPrefix    = "10.1.2.0/26"
SharedServices-DomainControllerSubnet-AddressPrefix = "10.1.3.0/24"

EnableVPNGateway = false
EnableERGateway  = false
EnableAFW  = false

Hub-VPNGateway-ActiveActiveEnabled = false
Hub-ERGateway-ActiveActiveEnabled  = false

Hub-VPNGateway-BGPEnabled = true
Hub-ERGateway-BGPEnabled  = true

Hub-ERGateway-SKU  = "Standard"
Hub-VPNGateway-SKU = "Standard"

AFWPIP-AllocationMethod = "Static"
AFWPIP-SKU              = "Standard"