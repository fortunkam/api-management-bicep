targetScope = 'subscription'

param prefix string = 'mf-demo'
param resourceGroupName string = 'api-management'
param resourceGroupLocation string = deployment().location

resource rg 'Microsoft.Resources/resourceGroups@2021-04-01' = {
  name : resourceGroupName
  location : resourceGroupLocation
}

module logging 'logging.bicep' = {
  name: '${prefix}-logging-deploy'
  scope: rg
  params: {
    prefix:  '${prefix}-logging'
    resourceGroupLocation: resourceGroupLocation
  }
}

module vnet 'vnet.bicep' = {
  name: '${prefix}-vnet-deploy'
  scope: rg
  params: {
    prefix:  prefix
    resourceGroupLocation: resourceGroupLocation
    addressPrefixes: [
      '10.0.0.0/20'
    ]
    subnetAddressPrefix: '10.0.0.0/24'
  }
}

module apim 'apim.bicep' = {
  name: '${prefix}-apim-deploy'
  scope: rg
  params: {
    prefix:  prefix
    resourceGroupLocation: resourceGroupLocation
    subnetId: vnet.outputs.subnetId
    appInsightsInstrumentationKey: logging.outputs.instrumentationKey
  }
}
