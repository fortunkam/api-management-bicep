param prefix string
param resourceGroupLocation string = resourceGroup().location
param subnetId string
param appInsightsInstrumentationKey string

resource apim 'Microsoft.ApiManagement/service@2021-08-01' = {
  name: '${prefix}-apim'
  location: resourceGroupLocation
  sku: {
    capacity: 1
    name: 'Developer'
  }
  identity: {
    type: 'SystemAssigned'
  }
  properties: {
    publisherEmail: 'apim@memoryleek.co.uk'
    publisherName: 'Matthew Fortunka'
    virtualNetworkConfiguration: {
      subnetResourceId: subnetId
    }
    virtualNetworkType: 'External'
    publicNetworkAccess: 'Enabled'
  }
}

resource appInsightsLogger 'Microsoft.ApiManagement/service/loggers@2021-12-01-preview' = {
  name: '${prefix}-appinsights-logger'
  parent: apim
  properties: {
    loggerType: 'applicationInsights'
    credentials: {
      instrumentationKey: appInsightsInstrumentationKey
    }
  }
}

resource apimAppInsights 'Microsoft.ApiManagement/service/diagnostics@2021-12-01-preview' = {
  name: 'applicationinsights'
  parent: apim
  properties: {
    alwaysLog: 'allErrors'
    logClientIp: true
    loggerId: appInsightsLogger.id
    sampling: {
      samplingType: 'fixed'
      percentage: 100
    }
  }
}
