param prefix string
param resourceGroupLocation string = resourceGroup().location
param addressPrefixes array
param subnetAddressPrefix string

resource apimnsg 'Microsoft.Network/networkSecurityGroups@2022-01-01' = {
  name: '${prefix}-apim-nsg'
  location: resourceGroupLocation
  properties: {
    securityRules: [
      {
        name: 'Allow_APIM_3443'
        properties: {
          protocol: 'TCP'
          sourcePortRange: '*'
          destinationPortRange: '3443'
          sourceAddressPrefix: 'ApiManagement'
          destinationAddressPrefix: 'VirtualNetwork'
          access: 'Allow'
          priority: 2711
          direction: 'Inbound'
          sourcePortRanges: []
          destinationPortRanges: []
          sourceAddressPrefixes: []
          destinationAddressPrefixes: []
        }
      }
      {
        name: 'Allow_Http'
        properties: {
          protocol: 'TCP'
          sourcePortRange: '*'
          destinationPortRange: '80'
          sourceAddressPrefix: 'Internet'
          destinationAddressPrefix: 'VirtualNetwork'
          access: 'Allow'
          priority: 2721
          direction: 'Inbound'
          sourcePortRanges: []
          destinationPortRanges: []
          sourceAddressPrefixes: []
          destinationAddressPrefixes: []
        }
      }
      {
        name: 'Allow_Https'
        properties: {
          protocol: 'TCP'
          sourcePortRange: '*'
          destinationPortRange: '443'
          sourceAddressPrefix: 'Internet'
          destinationAddressPrefix: 'VirtualNetwork'
          access: 'Allow'
          priority: 2731
          direction: 'Inbound'
          sourcePortRanges: []
          destinationPortRanges: []
          sourceAddressPrefixes: []
          destinationAddressPrefixes: []
        }
      }
      {
        name: 'Allow_Storage_Out'
        properties: {
          protocol: 'TCP'
          sourcePortRange: '*'
          destinationPortRange: '443'
          sourceAddressPrefix: 'VirtualNetwork'
          destinationAddressPrefix: 'Storage'
          access: 'Allow'
          priority: 2741
          direction: 'Outbound'
          sourcePortRanges: []
          destinationPortRanges: []
          sourceAddressPrefixes: []
          destinationAddressPrefixes: []
        }
      }
      {
        name: 'Allow_AAD_Out'
        properties: {
          protocol: 'TCP'
          sourcePortRange: '*'
          destinationPortRange: '443'
          sourceAddressPrefix: 'VirtualNetwork'
          destinationAddressPrefix: 'AzureActiveDirectory'
          access: 'Allow'
          priority: 2751
          direction: 'Outbound'
          sourcePortRanges: []
          destinationPortRanges: []
          sourceAddressPrefixes: []
          destinationAddressPrefixes: []
        }
      }
      {
        name: 'Allow_SQL_Out'
        properties: {
          protocol: 'TCP'
          sourcePortRange: '*'
          destinationPortRange: '1433'
          sourceAddressPrefix: 'VirtualNetwork'
          destinationAddressPrefix: '*'
          access: 'Allow'
          priority: 2761
          direction: 'Outbound'
          sourcePortRanges: []
          destinationPortRanges: []
          sourceAddressPrefixes: []
          destinationAddressPrefixes: []
        }
      }
      {
        name: 'Allow_KeyVault_Out'
        properties: {
          protocol: 'TCP'
          sourcePortRange: '*'
          destinationPortRange: '443'
          sourceAddressPrefix: 'VirtualNetwork'
          destinationAddressPrefix: 'AzureKeyVault'
          access: 'Allow'
          priority: 2771
          direction: 'Outbound'
          sourcePortRanges: []
          destinationPortRanges: []
          sourceAddressPrefixes: []
          destinationAddressPrefixes: []
        }
      }
      {
        name: 'Allow_AzureCloud_Https_Out'
        properties: {
          protocol: 'TCP'
          sourcePortRange: '*'
          sourceAddressPrefix: 'VirtualNetwork'
          destinationAddressPrefix: 'AzureCloud'
          access: 'Allow'
          priority: 2781
          direction: 'Outbound'
          sourcePortRanges: []
          destinationPortRanges: [
            '443'
            '12000'
          ]
          sourceAddressPrefixes: []
          destinationAddressPrefixes: []
        }
      }
      {
        name: 'Allow_Monitor_Out'
        properties: {
          protocol: '*'
          sourcePortRange: '*'
          sourceAddressPrefix: 'VirtualNetwork'
          destinationAddressPrefix: 'AzureMonitor'
          access: 'Allow'
          priority: 2791
          direction: 'Outbound'
          sourcePortRanges: []
          destinationPortRanges: [
            '1886'
            '443'
          ]
          sourceAddressPrefixes: []
          destinationAddressPrefixes: []
        }
      }
    ]
  }
}

resource vnet 'Microsoft.Network/virtualNetworks@2021-02-01' = {
  name: '${prefix}-vnet'
  location: resourceGroupLocation
  properties: {
    addressSpace: {
      addressPrefixes: addressPrefixes
    }
    subnets: [
      {
        name: 'apim'
        properties: {
          addressPrefix: subnetAddressPrefix
          networkSecurityGroup: {
            id: apimnsg.id
          }
        }
      }
    ]
  }
}

resource subnet 'Microsoft.Network/virtualNetworks/subnets@2021-02-01' = {
  name: 'apim'
  parent: vnet
  properties: {
    addressPrefix: subnetAddressPrefix
    networkSecurityGroup: {
      id: apimnsg.id
    }
  }
}

output subnetId string = subnet.id
