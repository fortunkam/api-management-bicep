@secure()
param apis_keyvault_path string

@secure()
param operations_get_product_type string

@secure()
param operations_get_user_type string

@secure()
param subscriptions_60b09b71b67d0e0053070001_displayName string

@secure()
param subscriptions_60b09b72b67d0e0053070002_displayName string

@secure()
param subscriptions_60c12a4d4ce5721780d17865_displayName string

@secure()
param subscriptions_619265674ce57209147bf7b9_displayName string

@secure()
param subscriptions_619265754ce57209147bf7bb_displayName string

@secure()
param subscriptions_6192657f4ce57209147bf7bd_displayName string

@secure()
param subscriptions_61d6efc34ce57211f8a0d3c2_displayName string

@secure()
param subscriptions_61d6efd04ce57211f8a0d3c4_displayName string

@secure()
param subscriptions_61d6f01d4ce57211f8a0d3c8_displayName string

@secure()
param subscriptions_61efbfc94ce57211f8a0d515_displayName string

@secure()
param users_1_lastName string

@secure()
param workbooks_3ca52d27_5d21_4bc9_b11e_a7310e8aebbf_serializedData string
param sites_mftodo_name string = 'mftodo'
param vaults_mfapimkv_name string = 'mfapimkv'
param connections_azureblob_name string = 'azureblob'
param workflows_APIMEvents_name string = 'APIMEvents'
param service_mfapim_name string = 'mfapim'
param virtualNetworks_vnet_name string = 'vnet'
param components_apim_kv_ai_name string = 'apim-kv-ai'
param connections_azureeventgrid_name string = 'azureeventgrid'
param serverfarms_todo_linux_plan_name string = 'todo-linux-plan'
param webtests_mfapim_apim_kv_ai_name string = 'mfapim-apim-kv-ai'
param storageAccounts_mffuncstore01_name string = 'mffuncstore01'
param storageAccounts_mfapimdevportal_name string = 'mfapimdevportal'
param workspaces_apim_lv_la_name string = 'apim-lv-la'
param storageAccounts_storageaccountapimkb9d9_name string = 'storageaccountapimkb9d9'
param networkSecurityGroups_vnet_apim_nsg_uksouth_name string = 'vnet-apim-nsg-uksouth'
param networkSecurityGroups_vnet_apim2_nsg_uksouth_name string = 'vnet-apim2-nsg-uksouth'
param networkSecurityGroups_vnet_default_nsg_uksouth_name string = 'vnet-default-nsg-uksouth'
param workbooks_3ca52d27_5d21_4bc9_b11e_a7310e8aebbf_name string = '3ca52d27-5d21-4bc9-b11e-a7310e8aebbf'
param networkSecurityGroups_vnet_keyvault_nsg_uksouth_name string = 'vnet-keyvault-nsg-uksouth'
param privateDnsZones_privatelink_vaultcore_azure_net_name string = 'privatelink.vaultcore.azure.net'
param actionGroups_Application_Insights_Smart_Detection_name string = 'Application Insights Smart Detection'
param solutions_SecurityInsights_apim_lv_la_name string = 'SecurityInsights(apim-lv-la)'
param solutions_SecurityCenterFree_apim_lv_la_name string = 'SecurityCenterFree(apim-lv-la)'
param smartdetectoralertrules_failure_anomalies_la_demo1_name string = 'failure anomalies - la-demo1'
param smartdetectoralertrules_failure_anomalies_apim_kv_ai_name string = 'failure anomalies - apim-kv-ai'
param components_la_demo1_externalid string = '/subscriptions/44e1dac0-0651-4835-8781-ee7b6e6f238f/resourceGroups/apim-kv-pl/providers/microsoft.insights/components/la-demo1'
param namespaces_mfapimeventhub_externalid string = '/subscriptions/44e1dac0-0651-4835-8781-ee7b6e6f238f/resourceGroups/apim-kv-pl/providers/Microsoft.EventHub/namespaces/mfapimeventhub'

resource actionGroups_Application_Insights_Smart_Detection_name_resource 'microsoft.insights/actionGroups@2022-06-01' = {
  name: actionGroups_Application_Insights_Smart_Detection_name
  location: 'Global'
  properties: {
    groupShortName: 'SmartDetect'
    enabled: true
    emailReceivers: []
    smsReceivers: []
    webhookReceivers: []
    eventHubReceivers: []
    itsmReceivers: []
    azureAppPushReceivers: []
    automationRunbookReceivers: []
    voiceReceivers: []
    logicAppReceivers: []
    azureFunctionReceivers: []
    armRoleReceivers: [
      {
        name: 'Monitoring Contributor'
        roleId: '749f88d5-cbae-40b8-bcfc-e573ddc772fa'
        useCommonAlertSchema: true
      }
      {
        name: 'Monitoring Reader'
        roleId: '43d0d8ad-25c7-4714-9337-8ba259a9fe05'
        useCommonAlertSchema: true
      }
    ]
  }
}

resource webtests_mfapim_apim_kv_ai_name_resource 'microsoft.insights/webtests@2018-05-01-preview' = {
  name: webtests_mfapim_apim_kv_ai_name
  location: 'uksouth'
  tags: {
    'hidden-link:/subscriptions/44e1dac0-0651-4835-8781-ee7b6e6f238f/resourceGroups/apim-kv-pl/providers/microsoft.insights/components/apim-kv-ai': 'Resource'
  }
  properties: {
    SyntheticMonitorId: webtests_mfapim_apim_kv_ai_name
    Name: 'mfapim'
    Enabled: true
    Frequency: 300
    Timeout: 30
    Kind: 'ping'
    RetryEnabled: true
    Locations: [
      {
        Id: 'emea-nl-ams-azr'
      }
      {
        Id: 'us-ca-sjc-azr'
      }
      {
        Id: 'emea-ru-msa-edge'
      }
      {
        Id: 'emea-se-sto-edge'
      }
      {
        Id: 'apac-sg-sin-azr'
      }
      {
        Id: 'us-tx-sn1-azr'
      }
      {
        Id: 'us-il-ch1-azr'
      }
      {
        Id: 'emea-gb-db3-azr'
      }
      {
        Id: 'apac-jp-kaw-edge'
      }
      {
        Id: 'emea-ch-zrh-edge'
      }
      {
        Id: 'emea-fr-pra-edge'
      }
      {
        Id: 'us-va-ash-azr'
      }
      {
        Id: 'apac-hk-hkn-azr'
      }
      {
        Id: 'us-fl-mia-edge'
      }
      {
        Id: 'latam-br-gru-edge'
      }
      {
        Id: 'emea-au-syd-edge'
      }
    ]
    Configuration: {
      WebTest: '<WebTest Name="mfapim" Id="fb925188-1095-4f42-8ef5-9eefd54f104f" Enabled="true" CssProjectStructure="" CssIteration="" Timeout="30" WorkItemIds="" xmlns="http://microsoft.com/schemas/VisualStudio/TeamTest/2010" Description="" CredentialUserName="" CredentialPassword="" PreAuthenticate="True" Proxy="default" StopOnError="False" RecordedResultFile="" ResultsLocale="">\n    <Items>\n        <Request Method="GET" Guid="19b885ee-950e-4b65-b7a5-350fd97e528c" Version="1.1" Url="https://mfapim.azure-api.net/status-0123456789abcdef" ThinkTime="0" Timeout="30" ParseDependentRequests="False" FollowRedirects="True" RecordResult="True" Cache="False" ResponseTimeGoal="0" Encoding="utf-8" ExpectedHttpStatusCode="200" ExpectedResponseUrl="" ReportingName="" IgnoreHttpStatusCode="False" />\n    </Items>\n</WebTest>'
    }
  }
}

resource workflows_APIMEvents_name_resource 'Microsoft.Logic/workflows@2017-07-01' = {
  name: workflows_APIMEvents_name
  location: 'uksouth'
  properties: {
    state: 'Enabled'
    definition: {
      '$schema': 'https://schema.management.azure.com/providers/Microsoft.Logic/schemas/2016-06-01/workflowdefinition.json#'
      contentVersion: '1.0.0.0'
      parameters: {
      }
      triggers: {
      }
      actions: {
      }
      outputs: {
      }
    }
    parameters: {
    }
  }
}

resource networkSecurityGroups_vnet_apim2_nsg_uksouth_name_resource 'Microsoft.Network/networkSecurityGroups@2020-11-01' = {
  name: networkSecurityGroups_vnet_apim2_nsg_uksouth_name
  location: 'uksouth'
  properties: {
    securityRules: []
  }
}

resource networkSecurityGroups_vnet_apim_nsg_uksouth_name_resource 'Microsoft.Network/networkSecurityGroups@2020-11-01' = {
  name: networkSecurityGroups_vnet_apim_nsg_uksouth_name
  location: 'uksouth'
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

resource networkSecurityGroups_vnet_default_nsg_uksouth_name_resource 'Microsoft.Network/networkSecurityGroups@2020-11-01' = {
  name: networkSecurityGroups_vnet_default_nsg_uksouth_name
  location: 'uksouth'
  properties: {
    securityRules: []
  }
}

resource networkSecurityGroups_vnet_keyvault_nsg_uksouth_name_resource 'Microsoft.Network/networkSecurityGroups@2020-11-01' = {
  name: networkSecurityGroups_vnet_keyvault_nsg_uksouth_name
  location: 'uksouth'
  properties: {
    securityRules: []
  }
}

resource privateDnsZones_privatelink_vaultcore_azure_net_name_resource 'Microsoft.Network/privateDnsZones@2018-09-01' = {
  name: privateDnsZones_privatelink_vaultcore_azure_net_name
  location: 'global'
  properties: {
    maxNumberOfRecordSets: 25000
    maxNumberOfVirtualNetworkLinks: 1000
    maxNumberOfVirtualNetworkLinksWithRegistration: 100
    numberOfRecordSets: 1
    numberOfVirtualNetworkLinks: 1
    numberOfVirtualNetworkLinksWithRegistration: 0
    provisioningState: 'Succeeded'
  }
}

resource workspaces_apim_lv_la_name_resource 'microsoft.operationalinsights/workspaces@2021-12-01-preview' = {
  name: workspaces_apim_lv_la_name
  location: 'uksouth'
  properties: {
    sku: {
      name: 'pergb2018'
    }
    retentionInDays: 30
    features: {
      enableLogAccessUsingOnlyResourcePermissions: true
    }
    workspaceCapping: {
      dailyQuotaGb: -1
    }
    publicNetworkAccessForIngestion: 'Enabled'
    publicNetworkAccessForQuery: 'Enabled'
  }
}

resource storageAccounts_mfapimdevportal_name_resource 'Microsoft.Storage/storageAccounts@2021-09-01' = {
  name: storageAccounts_mfapimdevportal_name
  location: 'uksouth'
  sku: {
    name: 'Standard_GRS'
    tier: 'Standard'
  }
  kind: 'StorageV2'
  properties: {
    defaultToOAuthAuthentication: false
    minimumTlsVersion: 'TLS1_2'
    allowBlobPublicAccess: false
    allowSharedKeyAccess: true
    networkAcls: {
      bypass: 'AzureServices'
      virtualNetworkRules: []
      ipRules: []
      defaultAction: 'Allow'
    }
    supportsHttpsTrafficOnly: true
    encryption: {
      services: {
        file: {
          keyType: 'Account'
          enabled: true
        }
        blob: {
          keyType: 'Account'
          enabled: true
        }
      }
      keySource: 'Microsoft.Storage'
    }
    accessTier: 'Hot'
  }
}

resource storageAccounts_mffuncstore01_name_resource 'Microsoft.Storage/storageAccounts@2021-09-01' = {
  name: storageAccounts_mffuncstore01_name
  location: 'uksouth'
  sku: {
    name: 'Standard_LRS'
    tier: 'Standard'
  }
  kind: 'Storage'
  properties: {
    minimumTlsVersion: 'TLS1_2'
    allowBlobPublicAccess: true
    networkAcls: {
      bypass: 'AzureServices'
      virtualNetworkRules: []
      ipRules: []
      defaultAction: 'Allow'
    }
    supportsHttpsTrafficOnly: true
    encryption: {
      services: {
        file: {
          keyType: 'Account'
          enabled: true
        }
        blob: {
          keyType: 'Account'
          enabled: true
        }
      }
      keySource: 'Microsoft.Storage'
    }
  }
}

resource storageAccounts_storageaccountapimkb9d9_name_resource 'Microsoft.Storage/storageAccounts@2021-09-01' = {
  name: storageAccounts_storageaccountapimkb9d9_name
  location: 'uksouth'
  sku: {
    name: 'Standard_LRS'
    tier: 'Standard'
  }
  kind: 'Storage'
  properties: {
    minimumTlsVersion: 'TLS1_2'
    allowBlobPublicAccess: true
    networkAcls: {
      bypass: 'AzureServices'
      virtualNetworkRules: []
      ipRules: []
      defaultAction: 'Allow'
    }
    supportsHttpsTrafficOnly: true
    encryption: {
      services: {
        file: {
          keyType: 'Account'
          enabled: true
        }
        blob: {
          keyType: 'Account'
          enabled: true
        }
      }
      keySource: 'Microsoft.Storage'
    }
  }
}

resource connections_azureblob_name_resource 'Microsoft.Web/connections@2016-06-01' = {
  name: connections_azureblob_name
  location: 'northeurope'
  kind: 'V1'
  properties: {
    displayName: 'failactionstorage'
    statuses: [
      {
        status: 'Ready'
      }
    ]
    customParameterValues: {
    }
    createdTime: '2022-02-16T13:43:29.2355744Z'
    changedTime: '2022-02-16T13:43:29.2667869Z'
    api: {
      name: connections_azureblob_name
      displayName: 'Azure Blob Storage'
      description: 'Microsoft Azure Storage provides a massively scalable, durable, and highly available storage for data on the cloud, and serves as the data storage solution for modern applications. Connect to Blob Storage to perform various operations such as create, update, get and delete on blobs in your Azure Storage account.'
      iconUri: 'https://connectoricons-prod.azureedge.net/releases/v1.0.1591/1.0.1591.2961/${connections_azureblob_name}/icon.png'
      brandColor: '#804998'
      id: '/subscriptions/44e1dac0-0651-4835-8781-ee7b6e6f238f/providers/Microsoft.Web/locations/northeurope/managedApis/${connections_azureblob_name}'
      type: 'Microsoft.Web/locations/managedApis'
    }
    testLinks: [
      {
        requestUri: 'https://management.azure.com:443/subscriptions/44e1dac0-0651-4835-8781-ee7b6e6f238f/resourceGroups/apim-kv-pl/providers/Microsoft.Web/connections/${connections_azureblob_name}/extensions/proxy/testconnection?api-version=2016-06-01'
        method: 'get'
      }
    ]
  }
}

resource connections_azureeventgrid_name_resource 'Microsoft.Web/connections@2016-06-01' = {
  name: connections_azureeventgrid_name
  location: 'uksouth'
  kind: 'V1'
  properties: {
    displayName: 'mafortun@microsoft.com'
    statuses: [
      {
        status: 'Connected'
      }
    ]
    customParameterValues: {
    }
    nonSecretParameterValues: {
      'token:TenantId': '72f988bf-86f1-41af-91ab-2d7cd011db47'
      'token:grantType': 'code'
    }
    createdTime: '2021-11-25T11:13:07.8689335Z'
    changedTime: '2022-08-20T19:19:48.8669802Z'
    api: {
      name: connections_azureeventgrid_name
      displayName: 'Azure Event Grid'
      description: 'Azure Event Grid is an eventing backplane that enables event based programing with pub/sub semantics and reliable distribution & delivery for all services in Azure as well as third parties.'
      iconUri: 'https://connectoricons-prod.azureedge.net/releases/v1.0.1538/1.0.1538.2619/${connections_azureeventgrid_name}/icon.png'
      brandColor: '#0072c6'
      id: '/subscriptions/44e1dac0-0651-4835-8781-ee7b6e6f238f/providers/Microsoft.Web/locations/uksouth/managedApis/${connections_azureeventgrid_name}'
      type: 'Microsoft.Web/locations/managedApis'
    }
    testLinks: []
  }
}

resource serverfarms_todo_linux_plan_name_resource 'Microsoft.Web/serverfarms@2022-03-01' = {
  name: serverfarms_todo_linux_plan_name
  location: 'UK South'
  sku: {
    name: 'B1'
    tier: 'Basic'
    size: 'B1'
    family: 'B'
    capacity: 1
  }
  kind: 'linux'
  properties: {
    perSiteScaling: false
    elasticScaleEnabled: false
    maximumElasticWorkerCount: 1
    isSpot: false
    freeOfferExpirationTime: '2022-06-16T13:51:14.9166667'
    reserved: true
    isXenon: false
    hyperV: false
    targetWorkerCount: 0
    targetWorkerSizeId: 0
    zoneRedundant: false
  }
}

resource smartdetectoralertrules_failure_anomalies_la_demo1_name_resource 'microsoft.alertsmanagement/smartdetectoralertrules@2021-04-01' = {
  name: smartdetectoralertrules_failure_anomalies_la_demo1_name
  location: 'global'
  properties: {
    description: 'Failure Anomalies notifies you of an unusual rise in the rate of failed HTTP requests or dependency calls.'
    state: 'Enabled'
    severity: 'Sev3'
    frequency: 'PT1M'
    detector: {
      id: 'FailureAnomaliesDetector'
    }
    scope: [
      components_la_demo1_externalid
    ]
    actionGroups: {
      groupIds: [
        actionGroups_Application_Insights_Smart_Detection_name_resource.id
      ]
    }
  }
}

resource service_mfapim_name_resource 'Microsoft.ApiManagement/service@2021-12-01-preview' = {
  name: service_mfapim_name
  location: 'UK South'
  sku: {
    name: 'Developer'
    capacity: 1
  }
  identity: {
    type: 'SystemAssigned'
  }
  properties: {
    publisherEmail: 'matthew.fortunka@microsoft.com'
    publisherName: 'memoryleek'
    notificationSenderEmail: 'matthew.fortunka@microsoft.com'
    hostnameConfigurations: [
      {
        type: 'Proxy'
        hostName: '${service_mfapim_name}.azure-api.net'
        negotiateClientCertificate: false
        defaultSslBinding: true
        certificateSource: 'BuiltIn'
      }
    ]
    virtualNetworkConfiguration: {
      subnetResourceId: virtualNetworks_vnet_name_apim.id
    }
    customProperties: {
      'Microsoft.WindowsAzure.ApiManagement.Gateway.Security.Protocols.Tls10': 'False'
      'Microsoft.WindowsAzure.ApiManagement.Gateway.Security.Protocols.Tls11': 'False'
      'Microsoft.WindowsAzure.ApiManagement.Gateway.Security.Protocols.Ssl30': 'False'
      'Microsoft.WindowsAzure.ApiManagement.Gateway.Security.Ciphers.TripleDes168': 'False'
      'Microsoft.WindowsAzure.ApiManagement.Gateway.Security.Backend.Protocols.Tls10': 'False'
      'Microsoft.WindowsAzure.ApiManagement.Gateway.Security.Backend.Protocols.Tls11': 'False'
      'Microsoft.WindowsAzure.ApiManagement.Gateway.Security.Backend.Protocols.Ssl30': 'False'
      'Microsoft.WindowsAzure.ApiManagement.Gateway.Protocols.Server.Http2': 'False'
    }
    virtualNetworkType: 'External'
    disableGateway: false
    apiVersionConstraint: {
    }
    publicNetworkAccess: 'Enabled'
  }
}

resource service_mfapim_name_dad_joke 'Microsoft.ApiManagement/service/apis@2021-12-01-preview' = {
  parent: service_mfapim_name_resource
  name: 'dad-joke'
  properties: {
    displayName: 'Dad Joke'
    apiRevision: '1'
    subscriptionRequired: true
    path: 'joke'
    protocols: [
      'https'
    ]
    isCurrent: true
  }
}

resource service_mfapim_name_demo_conference_api 'Microsoft.ApiManagement/service/apis@2021-12-01-preview' = {
  parent: service_mfapim_name_resource
  name: 'demo-conference-api'
  properties: {
    displayName: 'Demo Conference API'
    apiRevision: '1'
    description: 'A sample API with information related to a technical conference.  The available resources  include *Speakers*, *Sessions* and *Topics*.  A single write operation is available to provide  feedback on a session.'
    subscriptionRequired: true
    serviceUrl: 'https://conferenceapi.azurewebsites.net'
    path: 'demo-conf'
    protocols: [
      'https'
    ]
    isCurrent: true
  }
}

resource service_mfapim_name_echo_api 'Microsoft.ApiManagement/service/apis@2021-12-01-preview' = {
  parent: service_mfapim_name_resource
  name: 'echo-api'
  properties: {
    displayName: 'Echo API'
    apiRevision: '2'
    subscriptionRequired: true
    serviceUrl: 'http://echoapi.cloudapp.net/api'
    path: 'echo'
    protocols: [
      'https'
    ]
    isCurrent: true
    apiRevisionDescription: 'v0.2'
  }
}

resource service_mfapim_name_echo_api_rev_1 'Microsoft.ApiManagement/service/apis@2021-12-01-preview' = {
  parent: service_mfapim_name_resource
  name: 'echo-api;rev=1'
  properties: {
    displayName: 'Echo API'
    apiRevision: '1'
    subscriptionRequired: true
    serviceUrl: 'http://echoapi.cloudapp.net/api'
    path: 'echo'
    protocols: [
      'https'
    ]
  }
}

resource service_mfapim_name_keyvault 'Microsoft.ApiManagement/service/apis@2021-12-01-preview' = {
  parent: service_mfapim_name_resource
  name: 'keyvault'
  properties: {
    displayName: 'KeyVault'
    apiRevision: '1'
    subscriptionRequired: true
    serviceUrl: 'https://httpbin.org/ip'
    protocols: [
      'https'
    ]
    isCurrent: true
    path: apis_keyvault_path
  }
}

resource service_mfapim_name_managedidentity 'Microsoft.ApiManagement/service/apis@2021-12-01-preview' = {
  parent: service_mfapim_name_resource
  name: 'managedidentity'
  properties: {
    displayName: 'ManagedIdentity'
    apiRevision: '1'
    subscriptionRequired: true
    path: 'managedidentity'
    protocols: [
      'https'
    ]
    isCurrent: true
  }
}

resource service_mfapim_name_products_get 'Microsoft.ApiManagement/service/apis@2021-12-01-preview' = {
  parent: service_mfapim_name_resource
  name: 'products-get'
  properties: {
    displayName: 'Products - Get'
    apiRevision: '1'
    subscriptionRequired: true
    serviceUrl: 'https://serverlessohapi.azurewebsites.net/api/'
    path: 'products-get'
    protocols: [
      'https'
    ]
    isCurrent: true
  }
}

resource service_mfapim_name_ratings_admin 'Microsoft.ApiManagement/service/apis@2021-12-01-preview' = {
  parent: service_mfapim_name_resource
  name: 'ratings-admin'
  properties: {
    displayName: 'Ratings - Admin'
    apiRevision: '1'
    description: 'Import from "mfohch1" Function App'
    subscriptionRequired: true
    path: 'ratings-admin'
    protocols: [
      'https'
    ]
    isCurrent: true
  }
}

resource service_mfapim_name_ratings_get 'Microsoft.ApiManagement/service/apis@2021-12-01-preview' = {
  parent: service_mfapim_name_resource
  name: 'ratings-get'
  properties: {
    displayName: 'Ratings - Get'
    apiRevision: '1'
    description: 'Import from "mfohch1" Function App'
    subscriptionRequired: true
    path: 'ratings-get'
    protocols: [
      'https'
    ]
    isCurrent: true
  }
}

resource service_mfapim_name_securepassthru 'Microsoft.ApiManagement/service/apis@2021-12-01-preview' = {
  parent: service_mfapim_name_resource
  name: 'securepassthru'
  properties: {
    displayName: 'SecurePassThru'
    apiRevision: '1'
    description: 'Import from "mfSimpleFunction" Function App'
    subscriptionRequired: true
    path: 'FunctionOAuth'
    protocols: [
      'https'
    ]
    isCurrent: true
  }
}

resource service_mfapim_name_test 'Microsoft.ApiManagement/service/apis@2021-12-01-preview' = {
  parent: service_mfapim_name_resource
  name: 'test'
  properties: {
    displayName: 'Test'
    apiRevision: '1'
    subscriptionRequired: false
    path: 'test'
    protocols: [
      'https'
    ]
    isCurrent: true
  }
}

resource service_mfapim_name_users_get 'Microsoft.ApiManagement/service/apis@2021-12-01-preview' = {
  parent: service_mfapim_name_resource
  name: 'users-get'
  properties: {
    displayName: 'Users - Get'
    apiRevision: '1'
    subscriptionRequired: true
    serviceUrl: 'https://serverlessohapi.azurewebsites.net/api/'
    path: 'users-get'
    protocols: [
      'https'
    ]
    isCurrent: true
  }
}

resource service_mfapim_name_vmtest 'Microsoft.ApiManagement/service/apis@2021-12-01-preview' = {
  parent: service_mfapim_name_resource
  name: 'vmtest'
  properties: {
    displayName: 'VMTest'
    apiRevision: '1'
    subscriptionRequired: false
    serviceUrl: 'https://dse-dev-uks-vmhappy-graphql-webapp.azurewebsites.net'
    path: 'vmtest'
    protocols: [
      'https'
    ]
    isCurrent: true
  }
}

resource service_mfapim_name_60ded4033ce2d043ef9e9462 'Microsoft.ApiManagement/service/api-version-sets@2018-06-01-preview' = {
  parent: service_mfapim_name_resource
  name: '60ded4033ce2d043ef9e9462'
  properties: {
    displayName: 'mfSimpleFunction'
    versioningScheme: 'Segment'
  }
}

resource Microsoft_ApiManagement_service_apiVersionSets_service_mfapim_name_60ded4033ce2d043ef9e9462 'Microsoft.ApiManagement/service/apiVersionSets@2021-12-01-preview' = {
  parent: service_mfapim_name_resource
  name: '60ded4033ce2d043ef9e9462'
  properties: {
    displayName: 'mfSimpleFunction'
    versioningScheme: 'Segment'
  }
}

resource service_mfapim_name_ICanHazDadJoke 'Microsoft.ApiManagement/service/backends@2021-12-01-preview' = {
  parent: service_mfapim_name_resource
  name: 'ICanHazDadJoke'
  properties: {
    title: 'ICanHazDadJoke'
    description: 'ICanHazDadJoke'
    url: 'https://icanhazdadjoke.com/'
    protocol: 'http'
  }
}

resource service_mfapim_name_mfohch1 'Microsoft.ApiManagement/service/backends@2021-12-01-preview' = {
  parent: service_mfapim_name_resource
  name: 'mfohch1'
  properties: {
    description: 'mfohch1'
    url: 'https://mfohch1.azurewebsites.net/api'
    protocol: 'http'
    resourceId: 'https://management.azure.com/subscriptions/44e1dac0-0651-4835-8781-ee7b6e6f238f/resourceGroups/ServerlessOH/providers/Microsoft.Web/sites/mfohch1'
    credentials: {
      header: {
        'x-functions-key': [
          '{{mfohch1-key}}'
        ]
      }
    }
  }
}

resource service_mfapim_name_mfsimplefunction 'Microsoft.ApiManagement/service/backends@2021-12-01-preview' = {
  parent: service_mfapim_name_resource
  name: 'mfsimplefunction'
  properties: {
    description: 'mfSimpleFunction'
    url: 'https://mfsimplefunction.azurewebsites.net/api'
    protocol: 'http'
    resourceId: 'https://management.azure.com/subscriptions/44e1dac0-0651-4835-8781-ee7b6e6f238f/resourceGroups/apim-kv-pl/providers/Microsoft.Web/sites/mfSimpleFunction'
    credentials: {
      header: {
        'x-functions-key': [
          '{{mfsimplefunction-key}}'
        ]
      }
    }
  }
}

resource service_mfapim_name_my_backend 'Microsoft.ApiManagement/service/backends@2021-12-01-preview' = {
  parent: service_mfapim_name_resource
  name: 'my-backend'
  properties: {
    url: 'https://mfapim.azure-api.net/test/mockbackend'
    protocol: 'http'
    credentials: {
      query: {
      }
      header: {
      }
    }
    tls: {
      validateCertificateChain: true
      validateCertificateName: true
    }
  }
}

resource service_mfapim_name_my_backend_one 'Microsoft.ApiManagement/service/backends@2021-12-01-preview' = {
  parent: service_mfapim_name_resource
  name: 'my-backend-one'
  properties: {
    url: 'https://httpbin.org'
    protocol: 'http'
    credentials: {
      query: {
      }
      header: {
        'x-test-header': [
          'fixed manual value'
        ]
      }
    }
    tls: {
      validateCertificateChain: true
      validateCertificateName: true
    }
  }
}

resource service_mfapim_name_administrators 'Microsoft.ApiManagement/service/groups@2021-12-01-preview' = {
  parent: service_mfapim_name_resource
  name: 'administrators'
  properties: {
    displayName: 'Administrators'
    description: 'Administrators is a built-in group containing the admin email account provided at the time of service creation. Its membership is managed by the system.'
    type: 'system'
  }
}

resource service_mfapim_name_developers 'Microsoft.ApiManagement/service/groups@2021-12-01-preview' = {
  parent: service_mfapim_name_resource
  name: 'developers'
  properties: {
    displayName: 'Developers'
    description: 'Developers is a built-in group. Its membership is managed by the system. Signed-in users fall into this group.'
    type: 'system'
  }
}

resource service_mfapim_name_external 'Microsoft.ApiManagement/service/groups@2021-12-01-preview' = {
  parent: service_mfapim_name_resource
  name: 'external'
  properties: {
    displayName: 'External'
    type: 'custom'
  }
}

resource service_mfapim_name_guests 'Microsoft.ApiManagement/service/groups@2021-12-01-preview' = {
  parent: service_mfapim_name_resource
  name: 'guests'
  properties: {
    displayName: 'Guests'
    description: 'Guests is a built-in group. Its membership is managed by the system. Unauthenticated users visiting the developer portal fall into this group.'
    type: 'system'
  }
}

resource service_mfapim_name_internal 'Microsoft.ApiManagement/service/groups@2021-12-01-preview' = {
  parent: service_mfapim_name_resource
  name: 'internal'
  properties: {
    displayName: 'Internal'
    type: 'custom'
  }
}

resource service_mfapim_name_apimeventhublogger 'Microsoft.ApiManagement/service/loggers@2021-12-01-preview' = {
  parent: service_mfapim_name_resource
  name: 'apimeventhublogger'
  properties: {
    loggerType: 'azureEventHub'
    description: 'event hub logger'
    credentials: {
      name: 'apim-logger'
      connectionString: '{{Logger-Credentials--626a5b72bb95920cd0baff74}}'
    }
    isBuffered: true
  }
}

resource service_mfapim_name_azuremonitor 'Microsoft.ApiManagement/service/loggers@2021-12-01-preview' = {
  parent: service_mfapim_name_resource
  name: 'azuremonitor'
  properties: {
    loggerType: 'azureMonitor'
    isBuffered: true
  }
}

resource service_mfapim_name_log_to_eventhub 'Microsoft.ApiManagement/service/loggers@2021-12-01-preview' = {
  parent: service_mfapim_name_resource
  name: 'log-to-eventhub'
  properties: {
    loggerType: 'azureEventHub'
    description: 'adding a new logger'
    credentials: {
      name: 'insights-metrics-pt1m'
      connectionString: '{{Logger-Credentials--60e078d14ce5720a942b9ff1}}'
    }
    isBuffered: true
    resourceId: namespaces_mfapimeventhub_externalid
  }
}

resource service_mfapim_name_60c38cad4ce5721780d17985 'Microsoft.ApiManagement/service/namedValues@2021-12-01-preview' = {
  parent: service_mfapim_name_resource
  name: '60c38cad4ce5721780d17985'
  properties: {
    displayName: 'Logger-Credentials--60c38cad4ce5721780d17986'
    secret: true
  }
}

resource service_mfapim_name_60e078d14ce5720a942b9ff0 'Microsoft.ApiManagement/service/namedValues@2021-12-01-preview' = {
  parent: service_mfapim_name_resource
  name: '60e078d14ce5720a942b9ff0'
  properties: {
    displayName: 'Logger-Credentials--60e078d14ce5720a942b9ff1'
    secret: true
  }
}

resource service_mfapim_name_626a5b72bb95920cd0baff73 'Microsoft.ApiManagement/service/namedValues@2021-12-01-preview' = {
  parent: service_mfapim_name_resource
  name: '626a5b72bb95920cd0baff73'
  properties: {
    displayName: 'Logger-Credentials--626a5b72bb95920cd0baff74'
    secret: true
  }
}

resource service_mfapim_name_applicationinsightsinstrumentationkey 'Microsoft.ApiManagement/service/namedValues@2021-12-01-preview' = {
  parent: service_mfapim_name_resource
  name: 'applicationinsightsinstrumentationkey'
  properties: {
    displayName: 'applicationinsightsinstrumentationkey'
    tags: []
    secret: true
  }
}

resource service_mfapim_name_blobcontainer 'Microsoft.ApiManagement/service/namedValues@2021-12-01-preview' = {
  parent: service_mfapim_name_resource
  name: 'blobcontainer'
  properties: {
    displayName: 'blobcontainer'
    value: 'apimwrite'
    tags: []
    secret: false
  }
}

resource service_mfapim_name_blobstorageaccount 'Microsoft.ApiManagement/service/namedValues@2021-12-01-preview' = {
  parent: service_mfapim_name_resource
  name: 'blobstorageaccount'
  properties: {
    displayName: 'blobstorageaccount'
    value: 'mfapimdevportal'
    tags: []
    secret: false
  }
}

resource service_mfapim_name_DadJokePageLimit 'Microsoft.ApiManagement/service/namedValues@2021-12-01-preview' = {
  parent: service_mfapim_name_resource
  name: 'DadJokePageLimit'
  properties: {
    displayName: 'DadJokePageLimit'
    value: '10'
    secret: false
  }
}

resource service_mfapim_name_keyvaulturl 'Microsoft.ApiManagement/service/namedValues@2021-12-01-preview' = {
  parent: service_mfapim_name_resource
  name: 'keyvaulturl'
  properties: {
    displayName: 'keyvaulturl'
    value: 'mfapimkv'
    tags: []
    secret: false
  }
}

resource service_mfapim_name_KVSecret1a 'Microsoft.ApiManagement/service/namedValues@2021-12-01-preview' = {
  parent: service_mfapim_name_resource
  name: 'KVSecret1a'
  properties: {
    displayName: 'KVSecret1a'
    tags: []
    secret: true
  }
}

resource service_mfapim_name_KVSecret2a 'Microsoft.ApiManagement/service/namedValues@2021-12-01-preview' = {
  parent: service_mfapim_name_resource
  name: 'KVSecret2a'
  properties: {
    displayName: 'KVSecret2a'
    tags: []
    secret: true
  }
}

resource service_mfapim_name_KVSecret3 'Microsoft.ApiManagement/service/namedValues@2021-12-01-preview' = {
  parent: service_mfapim_name_resource
  name: 'KVSecret3'
  properties: {
    displayName: 'KVSecret3'
    tags: []
    secret: true
  }
}

resource service_mfapim_name_KVSecret4 'Microsoft.ApiManagement/service/namedValues@2021-12-01-preview' = {
  parent: service_mfapim_name_resource
  name: 'KVSecret4'
  properties: {
    displayName: 'KVSecret4'
    tags: []
    secret: true
  }
}

resource service_mfapim_name_mfohch1_key 'Microsoft.ApiManagement/service/namedValues@2021-12-01-preview' = {
  parent: service_mfapim_name_resource
  name: 'mfohch1-key'
  properties: {
    displayName: 'mfohch1-key'
    tags: [
      'key'
      'function'
      'auto'
    ]
    secret: true
  }
}

resource service_mfapim_name_mfsimplefunction_key 'Microsoft.ApiManagement/service/namedValues@2021-12-01-preview' = {
  parent: service_mfapim_name_resource
  name: 'mfsimplefunction-key'
  properties: {
    displayName: 'mfsimplefunction-key'
    tags: [
      'key'
      'function'
      'auto'
    ]
    secret: true
  }
}

resource service_mfapim_name_my_send_request 'Microsoft.ApiManagement/service/namedValues@2021-12-01-preview' = {
  parent: service_mfapim_name_resource
  name: 'my-send-request'
  properties: {
    displayName: 'my-send-request'
    value: 'https://mfapim.azure-api.net/test/mocksendrequest'
    tags: []
    secret: false
  }
}

resource service_mfapim_name_queuePath 'Microsoft.ApiManagement/service/namedValues@2021-12-01-preview' = {
  parent: service_mfapim_name_resource
  name: 'queuePath'
  properties: {
    displayName: 'queuePath'
    value: 'demo1'
    tags: []
    secret: false
  }
}

resource service_mfapim_name_resourceGroupName 'Microsoft.ApiManagement/service/namedValues@2021-12-01-preview' = {
  parent: service_mfapim_name_resource
  name: 'resourceGroupName'
  properties: {
    displayName: 'resourceGroupName'
    value: 'apim-kv-pl'
    tags: []
    secret: false
  }
}

resource service_mfapim_name_servicebusnamespace 'Microsoft.ApiManagement/service/namedValues@2021-12-01-preview' = {
  parent: service_mfapim_name_resource
  name: 'servicebusnamespace'
  properties: {
    displayName: 'servicebusnamespace'
    value: 'mfapimdemo'
    tags: []
    secret: false
  }
}

resource service_mfapim_name_subscriptionId 'Microsoft.ApiManagement/service/namedValues@2021-12-01-preview' = {
  parent: service_mfapim_name_resource
  name: 'subscriptionId'
  properties: {
    displayName: 'subscriptionId'
    value: '44e1dac0-0651-4835-8781-ee7b6e6f238f'
    tags: []
    secret: false
  }
}

resource service_mfapim_name_Test1 'Microsoft.ApiManagement/service/namedValues@2021-12-01-preview' = {
  parent: service_mfapim_name_resource
  name: 'Test1'
  properties: {
    displayName: 'Test1'
    keyVault: {
      secretIdentifier: 'https://kvapimprivate.vault.azure.net/secrets/KVSecret2'
    }
    tags: []
    secret: true
  }
}

resource service_mfapim_name_Test2 'Microsoft.ApiManagement/service/namedValues@2021-12-01-preview' = {
  parent: service_mfapim_name_resource
  name: 'Test2'
  properties: {
    displayName: 'Test2'
    keyVault: {
      secretIdentifier: 'https://mfapimkv.vault.azure.net/secrets/APIMTest1'
    }
    tags: []
    secret: true
  }
}

resource service_mfapim_name_AccountClosedPublisher 'Microsoft.ApiManagement/service/notifications@2021-12-01-preview' = {
  parent: service_mfapim_name_resource
  name: 'AccountClosedPublisher'
}

resource service_mfapim_name_BCC 'Microsoft.ApiManagement/service/notifications@2021-12-01-preview' = {
  parent: service_mfapim_name_resource
  name: 'BCC'
}

resource service_mfapim_name_NewApplicationNotificationMessage 'Microsoft.ApiManagement/service/notifications@2021-12-01-preview' = {
  parent: service_mfapim_name_resource
  name: 'NewApplicationNotificationMessage'
}

resource service_mfapim_name_NewIssuePublisherNotificationMessage 'Microsoft.ApiManagement/service/notifications@2021-12-01-preview' = {
  parent: service_mfapim_name_resource
  name: 'NewIssuePublisherNotificationMessage'
}

resource service_mfapim_name_PurchasePublisherNotificationMessage 'Microsoft.ApiManagement/service/notifications@2021-12-01-preview' = {
  parent: service_mfapim_name_resource
  name: 'PurchasePublisherNotificationMessage'
}

resource service_mfapim_name_QuotaLimitApproachingPublisherNotificationMessage 'Microsoft.ApiManagement/service/notifications@2021-12-01-preview' = {
  parent: service_mfapim_name_resource
  name: 'QuotaLimitApproachingPublisherNotificationMessage'
}

resource service_mfapim_name_RequestPublisherNotificationMessage 'Microsoft.ApiManagement/service/notifications@2021-12-01-preview' = {
  parent: service_mfapim_name_resource
  name: 'RequestPublisherNotificationMessage'
}

resource service_mfapim_name_policy 'Microsoft.ApiManagement/service/policies@2021-12-01-preview' = {
  parent: service_mfapim_name_resource
  name: 'policy'
  properties: {
    value: '<!--\r\n    IMPORTANT:\r\n    - Policy elements can appear only within the <inbound>, <outbound>, <backend> section elements.\r\n    - Only the <forward-request> policy element can appear within the <backend> section element.\r\n    - To apply a policy to the incoming request (before it is forwarded to the backend service), place a corresponding policy element within the <inbound> section element.\r\n    - To apply a policy to the outgoing response (before it is sent back to the caller), place a corresponding policy element within the <outbound> section element.\r\n    - To add a policy position the cursor at the desired insertion point and click on the round button associated with the policy.\r\n    - To remove a policy, delete the corresponding policy statement from the policy document.\r\n    - Policies are applied in the order of their appearance, from the top down.\r\n-->\r\n<policies>\r\n  <inbound>\r\n    <!-- <cors allow-credentials="true">\r\n            <allowed-origins>\r\n                <origin>https://mfapim.developer.azure-api.net</origin>\r\n                <origin>https://mfapimdevportal.z33.web.core.windows.net</origin>\r\n            </allowed-origins>\r\n            <allowed-methods preflight-result-max-age="300">\r\n                <method>*</method>\r\n            </allowed-methods>\r\n            <allowed-headers>\r\n                <header>*</header>\r\n            </allowed-headers>\r\n            <expose-headers>\r\n                <header>*</header>\r\n            </expose-headers>\r\n        </cors> -->\r\n  </inbound>\r\n  <backend>\r\n    <forward-request />\r\n  </backend>\r\n  <outbound />\r\n  <on-error />\r\n</policies>'
    format: 'xml'
  }
}

resource service_mfapim_name_set_dad_joke_parameters 'Microsoft.ApiManagement/service/policyfragments@2021-12-01-preview' = {
  parent: service_mfapim_name_resource
  name: 'set-dad-joke-parameters'
  properties: {
    value: '<!--\r\n    IMPORTANT:\r\n    - Policy fragment are included as-is whenever they are referenced.\r\n    - If using variables. Ensure they are setup before use.\r\n    - Copy and paste your code here or simply start coding\r\n-->\r\n<fragment>\r\n\t<set-variable name="jsonBody" value="@{&#xA;            return context.Request.Body.As&lt;JObject&gt;();&#xA;        }" />\r\n\t<set-query-parameter name="page" exists-action="override">\r\n\t\t<value>@(((JObject)context.Variables["jsonBody"])["page"].ToString())</value>\r\n\t</set-query-parameter>\r\n\t<set-query-parameter name="term" exists-action="override">\r\n\t\t<value>@(((JObject)context.Variables["jsonBody"])["term"].ToString())</value>\r\n\t</set-query-parameter>\r\n\t<set-query-parameter name="limit" exists-action="override">\r\n\t\t<value>{{ DadJokePageLimit }}</value>\r\n\t</set-query-parameter>\r\n</fragment>'
  }
}

resource service_mfapim_name_20220107104915 'Microsoft.ApiManagement/service/portalRevisions@2021-12-01-preview' = {
  parent: service_mfapim_name_resource
  name: '20220107104915'
  properties: {
    isCurrent: false
  }
}

resource service_mfapim_name_202205171139 'Microsoft.ApiManagement/service/portalRevisions@2021-12-01-preview' = {
  parent: service_mfapim_name_resource
  name: '202205171139'
  properties: {
    isCurrent: true
  }
}

resource service_mfapim_name_20220517123801 'Microsoft.ApiManagement/service/portalRevisions@2021-12-01-preview' = {
  parent: service_mfapim_name_resource
  name: '20220517123801'
  properties: {
    isCurrent: false
  }
}

resource service_mfapim_name_delegation 'Microsoft.ApiManagement/service/portalsettings@2021-12-01-preview' = {
  parent: service_mfapim_name_resource
  name: 'delegation'
  properties: {
    subscriptions: {
      enabled: false
    }
    userRegistration: {
      enabled: false
    }
  }
}

resource service_mfapim_name_signin 'Microsoft.ApiManagement/service/portalsettings@2021-12-01-preview' = {
  parent: service_mfapim_name_resource
  name: 'signin'
  properties: {
    enabled: false
  }
}

resource service_mfapim_name_signup 'Microsoft.ApiManagement/service/portalsettings@2021-12-01-preview' = {
  parent: service_mfapim_name_resource
  name: 'signup'
  properties: {
    enabled: true
    termsOfService: {
      enabled: false
      consentRequired: false
    }
  }
}

resource service_mfapim_name_DadJokeProduct 'Microsoft.ApiManagement/service/products@2021-12-01-preview' = {
  parent: service_mfapim_name_resource
  name: 'DadJokeProduct'
  properties: {
    displayName: 'DadJokeProduct'
    description: 'DadJokeProduct'
    subscriptionRequired: true
    approvalRequired: false
    state: 'published'
  }
}

resource service_mfapim_name_external_partners 'Microsoft.ApiManagement/service/products@2021-12-01-preview' = {
  parent: service_mfapim_name_resource
  name: 'external-partners'
  properties: {
    displayName: 'External Partners'
    description: 'External Partners'
    subscriptionRequired: true
    approvalRequired: false
    state: 'published'
  }
}

resource service_mfapim_name_insurer1 'Microsoft.ApiManagement/service/products@2021-12-01-preview' = {
  parent: service_mfapim_name_resource
  name: 'insurer1'
  properties: {
    displayName: 'Insurer1'
    description: 'Insurer1'
    subscriptionRequired: true
    approvalRequired: true
    state: 'published'
  }
}

resource service_mfapim_name_insurer2 'Microsoft.ApiManagement/service/products@2021-12-01-preview' = {
  parent: service_mfapim_name_resource
  name: 'insurer2'
  properties: {
    displayName: 'Insurer2'
    description: 'Insurer2'
    subscriptionRequired: true
    approvalRequired: true
    state: 'published'
  }
}

resource Microsoft_ApiManagement_service_products_service_mfapim_name_internal 'Microsoft.ApiManagement/service/products@2021-12-01-preview' = {
  parent: service_mfapim_name_resource
  name: 'internal'
  properties: {
    displayName: 'Internal'
    description: 'Internal'
    subscriptionRequired: true
    approvalRequired: true
    state: 'published'
  }
}

resource service_mfapim_name_internal_business_users 'Microsoft.ApiManagement/service/products@2021-12-01-preview' = {
  parent: service_mfapim_name_resource
  name: 'internal-business-users'
  properties: {
    displayName: 'Internal Business Users'
    description: 'Internal Business Users'
    subscriptionRequired: true
    approvalRequired: true
    state: 'published'
  }
}

resource service_mfapim_name_mobileapplications 'Microsoft.ApiManagement/service/products@2021-12-01-preview' = {
  parent: service_mfapim_name_resource
  name: 'mobileapplications'
  properties: {
    displayName: 'MobileApplications'
    description: 'Mobile Applications'
    subscriptionRequired: true
    approvalRequired: false
    state: 'notPublished'
  }
}

resource service_mfapim_name_starter 'Microsoft.ApiManagement/service/products@2021-12-01-preview' = {
  parent: service_mfapim_name_resource
  name: 'starter'
  properties: {
    displayName: 'Starter'
    description: 'Subscribers will be able to run 5 calls/minute up to a maximum of 100 calls/week.'
    subscriptionRequired: true
    approvalRequired: false
    subscriptionsLimit: 1
    state: 'published'
  }
}

resource Microsoft_ApiManagement_service_products_service_mfapim_name_test 'Microsoft.ApiManagement/service/products@2021-12-01-preview' = {
  parent: service_mfapim_name_resource
  name: 'test'
  properties: {
    displayName: 'Test'
    description: 'Test for App Insights Integration'
    subscriptionRequired: true
    approvalRequired: false
    state: 'published'
  }
}

resource service_mfapim_name_unlimited 'Microsoft.ApiManagement/service/products@2021-12-01-preview' = {
  parent: service_mfapim_name_resource
  name: 'unlimited'
  properties: {
    displayName: 'Unlimited'
    description: 'Subscribers have completely unlimited access to the API. Administrator approval is required.'
    subscriptionRequired: true
    approvalRequired: true
    subscriptionsLimit: 1
    state: 'published'
  }
}

resource Microsoft_ApiManagement_service_properties_service_mfapim_name_60c38cad4ce5721780d17985 'Microsoft.ApiManagement/service/properties@2019-01-01' = {
  parent: service_mfapim_name_resource
  name: '60c38cad4ce5721780d17985'
  properties: {
    displayName: 'Logger-Credentials--60c38cad4ce5721780d17986'
    value: 'caa8f0b0-34cf-48d0-a2fc-f39379313ffa'
    secret: true
  }
}

resource Microsoft_ApiManagement_service_properties_service_mfapim_name_60e078d14ce5720a942b9ff0 'Microsoft.ApiManagement/service/properties@2019-01-01' = {
  parent: service_mfapim_name_resource
  name: '60e078d14ce5720a942b9ff0'
  properties: {
    displayName: 'Logger-Credentials--60e078d14ce5720a942b9ff1'
    value: 'Endpoint=sb://mfapimeventhub.servicebus.windows.net/;SharedAccessKeyName=RootManageSharedAccessKey;SharedAccessKey=NZT1s2L7LyXLPIh9qFS+Jb6lFUvJyXBSQc43jb3dGTk='
    secret: true
  }
}

resource Microsoft_ApiManagement_service_properties_service_mfapim_name_626a5b72bb95920cd0baff73 'Microsoft.ApiManagement/service/properties@2019-01-01' = {
  parent: service_mfapim_name_resource
  name: '626a5b72bb95920cd0baff73'
  properties: {
    displayName: 'Logger-Credentials--626a5b72bb95920cd0baff74'
    value: 'Endpoint=sb://mf-apim-hub.servicebus.windows.net/;SharedAccessKeyName=RootManageSharedAccessKey;SharedAccessKey=M7jmv/Ah1u/XS1BsX4ZbzbXNjcYqclI6+rwvWDUlOHA='
    secret: true
  }
}

resource Microsoft_ApiManagement_service_properties_service_mfapim_name_applicationinsightsinstrumentationkey 'Microsoft.ApiManagement/service/properties@2019-01-01' = {
  parent: service_mfapim_name_resource
  name: 'applicationinsightsinstrumentationkey'
  properties: {
    displayName: 'applicationinsightsinstrumentationkey'
    value: 'caa8f0b0-34cf-48d0-a2fc-f39379313ffa'
    tags: []
    secret: true
  }
}

resource Microsoft_ApiManagement_service_properties_service_mfapim_name_blobcontainer 'Microsoft.ApiManagement/service/properties@2019-01-01' = {
  parent: service_mfapim_name_resource
  name: 'blobcontainer'
  properties: {
    displayName: 'blobcontainer'
    value: 'apimwrite'
    tags: []
    secret: false
  }
}

resource Microsoft_ApiManagement_service_properties_service_mfapim_name_blobstorageaccount 'Microsoft.ApiManagement/service/properties@2019-01-01' = {
  parent: service_mfapim_name_resource
  name: 'blobstorageaccount'
  properties: {
    displayName: 'blobstorageaccount'
    value: 'mfapimdevportal'
    tags: []
    secret: false
  }
}

resource Microsoft_ApiManagement_service_properties_service_mfapim_name_DadJokePageLimit 'Microsoft.ApiManagement/service/properties@2019-01-01' = {
  parent: service_mfapim_name_resource
  name: 'DadJokePageLimit'
  properties: {
    displayName: 'DadJokePageLimit'
    value: '10'
    secret: false
  }
}

resource Microsoft_ApiManagement_service_properties_service_mfapim_name_keyvaulturl 'Microsoft.ApiManagement/service/properties@2019-01-01' = {
  parent: service_mfapim_name_resource
  name: 'keyvaulturl'
  properties: {
    displayName: 'keyvaulturl'
    value: 'mfapimkv'
    tags: []
    secret: false
  }
}

resource Microsoft_ApiManagement_service_properties_service_mfapim_name_KVSecret1a 'Microsoft.ApiManagement/service/properties@2019-01-01' = {
  parent: service_mfapim_name_resource
  name: 'KVSecret1a'
  properties: {
    displayName: 'KVSecret1a'
    value: 'This is a secret value'
    tags: []
    secret: true
  }
}

resource Microsoft_ApiManagement_service_properties_service_mfapim_name_KVSecret2a 'Microsoft.ApiManagement/service/properties@2019-01-01' = {
  parent: service_mfapim_name_resource
  name: 'KVSecret2a'
  properties: {
    displayName: 'KVSecret2a'
    value: 'This is a secret value 2'
    tags: []
    secret: true
  }
}

resource Microsoft_ApiManagement_service_properties_service_mfapim_name_KVSecret3 'Microsoft.ApiManagement/service/properties@2019-01-01' = {
  parent: service_mfapim_name_resource
  name: 'KVSecret3'
  properties: {
    displayName: 'KVSecret3'
    value: 'This is a secret value 3'
    tags: []
    secret: true
  }
}

resource Microsoft_ApiManagement_service_properties_service_mfapim_name_KVSecret4 'Microsoft.ApiManagement/service/properties@2019-01-01' = {
  parent: service_mfapim_name_resource
  name: 'KVSecret4'
  properties: {
    displayName: 'KVSecret4'
    value: 'This is a secret value 4'
    tags: []
    secret: true
  }
}

resource Microsoft_ApiManagement_service_properties_service_mfapim_name_mfohch1_key 'Microsoft.ApiManagement/service/properties@2019-01-01' = {
  parent: service_mfapim_name_resource
  name: 'mfohch1-key'
  properties: {
    displayName: 'mfohch1-key'
    value: 'bXWtTPOCkmBPsdXFC70dlY69MGZVm/1oUtDwmdmpYaMWqKPAnhxx3g=='
    tags: [
      'key'
      'function'
      'auto'
    ]
    secret: true
  }
}

resource Microsoft_ApiManagement_service_properties_service_mfapim_name_mfsimplefunction_key 'Microsoft.ApiManagement/service/properties@2019-01-01' = {
  parent: service_mfapim_name_resource
  name: 'mfsimplefunction-key'
  properties: {
    displayName: 'mfsimplefunction-key'
    value: 'jgU0tCVx9++JaNy+Ndnsr6V89R1iXdk683PBReW5kqbbmeda4fo0Rg=='
    tags: [
      'key'
      'function'
      'auto'
    ]
    secret: true
  }
}

resource Microsoft_ApiManagement_service_properties_service_mfapim_name_my_send_request 'Microsoft.ApiManagement/service/properties@2019-01-01' = {
  parent: service_mfapim_name_resource
  name: 'my-send-request'
  properties: {
    displayName: 'my-send-request'
    value: 'https://mfapim.azure-api.net/test/mocksendrequest'
    tags: []
    secret: false
  }
}

resource Microsoft_ApiManagement_service_properties_service_mfapim_name_queuePath 'Microsoft.ApiManagement/service/properties@2019-01-01' = {
  parent: service_mfapim_name_resource
  name: 'queuePath'
  properties: {
    displayName: 'queuePath'
    value: 'demo1'
    tags: []
    secret: false
  }
}

resource Microsoft_ApiManagement_service_properties_service_mfapim_name_resourceGroupName 'Microsoft.ApiManagement/service/properties@2019-01-01' = {
  parent: service_mfapim_name_resource
  name: 'resourceGroupName'
  properties: {
    displayName: 'resourceGroupName'
    value: 'apim-kv-pl'
    tags: []
    secret: false
  }
}

resource Microsoft_ApiManagement_service_properties_service_mfapim_name_servicebusnamespace 'Microsoft.ApiManagement/service/properties@2019-01-01' = {
  parent: service_mfapim_name_resource
  name: 'servicebusnamespace'
  properties: {
    displayName: 'servicebusnamespace'
    value: 'mfapimdemo'
    tags: []
    secret: false
  }
}

resource Microsoft_ApiManagement_service_properties_service_mfapim_name_subscriptionId 'Microsoft.ApiManagement/service/properties@2019-01-01' = {
  parent: service_mfapim_name_resource
  name: 'subscriptionId'
  properties: {
    displayName: 'subscriptionId'
    value: '44e1dac0-0651-4835-8781-ee7b6e6f238f'
    tags: []
    secret: false
  }
}

resource service_mfapim_name_master 'Microsoft.ApiManagement/service/subscriptions@2021-12-01-preview' = {
  parent: service_mfapim_name_resource
  name: 'master'
  properties: {
    scope: '${service_mfapim_name_resource.id}/'
    displayName: 'Built-in all-access subscription'
    state: 'active'
    allowTracing: false
  }
}

resource service_mfapim_name_apitag1 'Microsoft.ApiManagement/service/tags@2021-12-01-preview' = {
  parent: service_mfapim_name_resource
  name: 'apitag1'
  properties: {
    displayName: 'APITag1'
  }
}

resource service_mfapim_name_apitag2 'Microsoft.ApiManagement/service/tags@2021-12-01-preview' = {
  parent: service_mfapim_name_resource
  name: 'apitag2'
  properties: {
    displayName: 'APITag2'
  }
}

resource service_mfapim_name_apitag3 'Microsoft.ApiManagement/service/tags@2021-12-01-preview' = {
  parent: service_mfapim_name_resource
  name: 'apitag3'
  properties: {
    displayName: 'APITag3'
  }
}

resource service_mfapim_name_Joke 'Microsoft.ApiManagement/service/tags@2021-12-01-preview' = {
  parent: service_mfapim_name_resource
  name: 'Joke'
  properties: {
    displayName: 'Joke'
  }
}

resource service_mfapim_name_operation1 'Microsoft.ApiManagement/service/tags@2021-12-01-preview' = {
  parent: service_mfapim_name_resource
  name: 'operation1'
  properties: {
    displayName: 'Operation1'
  }
}

resource service_mfapim_name_operation2 'Microsoft.ApiManagement/service/tags@2021-12-01-preview' = {
  parent: service_mfapim_name_resource
  name: 'operation2'
  properties: {
    displayName: 'Operation2'
  }
}

resource service_mfapim_name_Search 'Microsoft.ApiManagement/service/tags@2021-12-01-preview' = {
  parent: service_mfapim_name_resource
  name: 'Search'
  properties: {
    displayName: 'Search'
  }
}

resource Microsoft_ApiManagement_service_tags_service_mfapim_name_test 'Microsoft.ApiManagement/service/tags@2021-12-01-preview' = {
  parent: service_mfapim_name_resource
  name: 'test'
  properties: {
    displayName: 'test'
  }
}

resource service_mfapim_name_Todo 'Microsoft.ApiManagement/service/tags@2021-12-01-preview' = {
  parent: service_mfapim_name_resource
  name: 'Todo'
  properties: {
    displayName: 'Todo'
  }
}

resource service_mfapim_name_AccountClosedDeveloper 'Microsoft.ApiManagement/service/templates@2021-12-01-preview' = {
  parent: service_mfapim_name_resource
  name: 'AccountClosedDeveloper'
  properties: {
    subject: 'Thank you for using the $OrganizationName API!'
    body: '<!DOCTYPE html >\r\n<html>\r\n  <head />\r\n  <body>\r\n    <p style="font-size:12pt;font-family:\'Segoe UI\'">Dear $DevFirstName $DevLastName,</p>\r\n    <p style="font-size:12pt;font-family:\'Segoe UI\'">\r\n          On behalf of $OrganizationName and our customers we thank you for giving us a try. Your $OrganizationName API account is now closed.\r\n        </p>\r\n    <p style="font-size:12pt;font-family:\'Segoe UI\'">Thank you,</p>\r\n    <p style="font-size:12pt;font-family:\'Segoe UI\'">Your $OrganizationName Team</p>\r\n    <a href="$DevPortalUrl">$DevPortalUrl</a>\r\n    <p />\r\n  </body>\r\n</html>'
    title: 'Developer farewell letter'
    description: 'Developers receive this farewell email after they close their account.'
    parameters: [
      {
        name: 'DevFirstName'
        title: 'Developer first name'
      }
      {
        name: 'DevLastName'
        title: 'Developer last name'
      }
      {
        name: 'OrganizationName'
        title: 'Organization name'
      }
      {
        name: 'DevPortalUrl'
        title: 'Developer portal URL'
      }
    ]
  }
}

resource service_mfapim_name_ApplicationApprovedNotificationMessage 'Microsoft.ApiManagement/service/templates@2021-12-01-preview' = {
  parent: service_mfapim_name_resource
  name: 'ApplicationApprovedNotificationMessage'
  properties: {
    subject: 'Your application $AppName is published in the application gallery'
    body: '<!DOCTYPE html >\r\n<html>\r\n  <head />\r\n  <body>\r\n    <p style="font-size:12pt;font-family:\'Segoe UI\'">Dear $DevFirstName $DevLastName,</p>\r\n    <p style="font-size:12pt;font-family:\'Segoe UI\'">\r\n          We are happy to let you know that your request to publish the $AppName application in the application gallery has been approved. Your application has been published and can be viewed <a href="http://$DevPortalUrl/Applications/Details/$AppId">here</a>.\r\n        </p>\r\n    <p style="font-size:12pt;font-family:\'Segoe UI\'">Best,</p>\r\n    <p style="font-size:12pt;font-family:\'Segoe UI\'">The $OrganizationName API Team</p>\r\n  </body>\r\n</html>'
    title: 'Application gallery submission approved (deprecated)'
    description: 'Developers who submitted their application for publication in the application gallery on the developer portal receive this email after their submission is approved.'
    parameters: [
      {
        name: 'AppId'
        title: 'Application id'
      }
      {
        name: 'AppName'
        title: 'Application name'
      }
      {
        name: 'DevFirstName'
        title: 'Developer first name'
      }
      {
        name: 'DevLastName'
        title: 'Developer last name'
      }
      {
        name: 'OrganizationName'
        title: 'Organization name'
      }
      {
        name: 'DevPortalUrl'
        title: 'Developer portal URL'
      }
    ]
  }
}

resource service_mfapim_name_ConfirmSignUpIdentityDefault 'Microsoft.ApiManagement/service/templates@2021-12-01-preview' = {
  parent: service_mfapim_name_resource
  name: 'ConfirmSignUpIdentityDefault'
  properties: {
    subject: 'Please confirm your new $OrganizationName API account'
    body: '<!DOCTYPE html >\r\n<html>\r\n  <head>\r\n    <meta charset="UTF-8" />\r\n    <title>Letter</title>\r\n  </head>\r\n  <body>\r\n    <table width="100%">\r\n      <tr>\r\n        <td>\r\n          <p style="font-size:12pt;font-family:\'Segoe UI\'">Dear $DevFirstName $DevLastName,</p>\r\n          <p style="font-size:12pt;font-family:\'Segoe UI\'"></p>\r\n          <p style="font-size:12pt;font-family:\'Segoe UI\'">Thank you for joining the $OrganizationName API program! We host a growing number of cool APIs and strive to provide an awesome experience for API developers.</p>\r\n          <p style="font-size:12pt;font-family:\'Segoe UI\'">First order of business is to activate your account and get you going. To that end, please click on the following link:</p>\r\n          <p style="font-size:12pt;font-family:\'Segoe UI\'">\r\n            <a id="confirmUrl" href="$ConfirmUrl" style="text-decoration:none">\r\n              <strong>$ConfirmUrl</strong>\r\n            </a>\r\n          </p>\r\n          <p style="font-size:12pt;font-family:\'Segoe UI\'">If clicking the link does not work, please copy-and-paste or re-type it into your browser\'s address bar and hit "Enter".</p>\r\n          <p style="font-size:12pt;font-family:\'Segoe UI\'">Thank you,</p>\r\n          <p style="font-size:12pt;font-family:\'Segoe UI\'">$OrganizationName API Team</p>\r\n          <p style="font-size:12pt;font-family:\'Segoe UI\'">\r\n            <a href="$DevPortalUrl">$DevPortalUrl</a>\r\n          </p>\r\n        </td>\r\n      </tr>\r\n    </table>\r\n  </body>\r\n</html>'
    title: 'New developer account confirmation'
    description: 'Developers receive this email to confirm their e-mail address after they sign up for a new account.'
    parameters: [
      {
        name: 'DevFirstName'
        title: 'Developer first name'
      }
      {
        name: 'DevLastName'
        title: 'Developer last name'
      }
      {
        name: 'OrganizationName'
        title: 'Organization name'
      }
      {
        name: 'DevPortalUrl'
        title: 'Developer portal URL'
      }
      {
        name: 'ConfirmUrl'
        title: 'Developer activation URL'
      }
      {
        name: 'DevPortalHost'
        title: 'Developer portal hostname'
      }
      {
        name: 'ConfirmQuery'
        title: 'Query string part of the activation URL'
      }
    ]
  }
}

resource service_mfapim_name_EmailChangeIdentityDefault 'Microsoft.ApiManagement/service/templates@2021-12-01-preview' = {
  parent: service_mfapim_name_resource
  name: 'EmailChangeIdentityDefault'
  properties: {
    subject: 'Please confirm the new email associated with your $OrganizationName API account'
    body: '<!DOCTYPE html >\r\n<html>\r\n  <head>\r\n    <meta charset="UTF-8" />\r\n    <title>Letter</title>\r\n  </head>\r\n  <body>\r\n    <table width="100%">\r\n      <tr>\r\n        <td>\r\n          <p style="font-size:12pt;font-family:\'Segoe UI\'">Dear $DevFirstName $DevLastName,</p>\r\n          <p style="font-size:12pt;font-family:\'Segoe UI\'"></p>\r\n          <p style="font-size:12pt;font-family:\'Segoe UI\'">You are receiving this email because you made a change to the email address on your $OrganizationName API account.</p>\r\n          <p style="font-size:12pt;font-family:\'Segoe UI\'">Please click on the following link to confirm the change:</p>\r\n          <p style="font-size:12pt;font-family:\'Segoe UI\'">\r\n            <a id="confirmUrl" href="$ConfirmUrl" style="text-decoration:none">\r\n              <strong>$ConfirmUrl</strong>\r\n            </a>\r\n          </p>\r\n          <p style="font-size:12pt;font-family:\'Segoe UI\'">If clicking the link does not work, please copy-and-paste or re-type it into your browser\'s address bar and hit "Enter".</p>\r\n          <p style="font-size:12pt;font-family:\'Segoe UI\'">Thank you,</p>\r\n          <p style="font-size:12pt;font-family:\'Segoe UI\'">$OrganizationName API Team</p>\r\n          <p style="font-size:12pt;font-family:\'Segoe UI\'">\r\n            <a href="$DevPortalUrl">$DevPortalUrl</a>\r\n          </p>\r\n        </td>\r\n      </tr>\r\n    </table>\r\n  </body>\r\n</html>'
    title: 'Email change confirmation'
    description: 'Developers receive this email to confirm a new e-mail address after they change their existing one associated with their account.'
    parameters: [
      {
        name: 'DevFirstName'
        title: 'Developer first name'
      }
      {
        name: 'DevLastName'
        title: 'Developer last name'
      }
      {
        name: 'OrganizationName'
        title: 'Organization name'
      }
      {
        name: 'DevPortalUrl'
        title: 'Developer portal URL'
      }
      {
        name: 'ConfirmUrl'
        title: 'Developer confirmation URL'
      }
      {
        name: 'DevPortalHost'
        title: 'Developer portal hostname'
      }
      {
        name: 'ConfirmQuery'
        title: 'Query string part of the confirmation URL'
      }
    ]
  }
}

resource service_mfapim_name_InviteUserNotificationMessage 'Microsoft.ApiManagement/service/templates@2021-12-01-preview' = {
  parent: service_mfapim_name_resource
  name: 'InviteUserNotificationMessage'
  properties: {
    subject: 'You are invited to join the $OrganizationName developer network'
    body: '<!DOCTYPE html >\r\n<html>\r\n  <head />\r\n  <body>\r\n    <p style="font-size:12pt;font-family:\'Segoe UI\'">Dear $DevFirstName $DevLastName,</p>\r\n    <p style="font-size:12pt;font-family:\'Segoe UI\'">\r\n          Your account has been created. Please follow the link below to visit the $OrganizationName developer portal and claim it:\r\n        </p>\r\n    <p style="font-size:12pt;font-family:\'Segoe UI\'">\r\n      <a href="$ConfirmUrl">$ConfirmUrl</a>\r\n    </p>\r\n    <p style="font-size:12pt;font-family:\'Segoe UI\'">Best,</p>\r\n    <p style="font-size:12pt;font-family:\'Segoe UI\'">The $OrganizationName API Team</p>\r\n  </body>\r\n</html>'
    title: 'Invite user'
    description: 'An e-mail invitation to create an account, sent on request by API publishers.'
    parameters: [
      {
        name: 'OrganizationName'
        title: 'Organization name'
      }
      {
        name: 'DevFirstName'
        title: 'Developer first name'
      }
      {
        name: 'DevLastName'
        title: 'Developer last name'
      }
      {
        name: 'ConfirmUrl'
        title: 'Confirmation link'
      }
      {
        name: 'DevPortalHost'
        title: 'Developer portal hostname'
      }
      {
        name: 'ConfirmQuery'
        title: 'Query string part of the confirmation link'
      }
    ]
  }
}

resource service_mfapim_name_NewCommentNotificationMessage 'Microsoft.ApiManagement/service/templates@2021-12-01-preview' = {
  parent: service_mfapim_name_resource
  name: 'NewCommentNotificationMessage'
  properties: {
    subject: '$IssueName issue has a new comment'
    body: '<!DOCTYPE html >\r\n<html>\r\n  <head />\r\n  <body>\r\n    <p style="font-size:12pt;font-family:\'Segoe UI\'">Dear $DevFirstName $DevLastName,</p>\r\n    <p style="font-size:12pt;font-family:\'Segoe UI\'">This is a brief note to let you know that $CommenterFirstName $CommenterLastName made the following comment on the issue $IssueName you created:</p>\r\n    <p style="font-size:12pt;font-family:\'Segoe UI\'">$CommentText</p>\r\n    <p style="font-size:12pt;font-family:\'Segoe UI\'">\r\n          To view the issue on the developer portal click <a href="http://$DevPortalUrl/issues/$IssueId">here</a>.\r\n        </p>\r\n    <p style="font-size:12pt;font-family:\'Segoe UI\'">Best,</p>\r\n    <p style="font-size:12pt;font-family:\'Segoe UI\'">The $OrganizationName API Team</p>\r\n  </body>\r\n</html>'
    title: 'New comment added to an issue (deprecated)'
    description: 'Developers receive this email when someone comments on the issue they created on the Issues page of the developer portal.'
    parameters: [
      {
        name: 'DevFirstName'
        title: 'Developer first name'
      }
      {
        name: 'DevLastName'
        title: 'Developer last name'
      }
      {
        name: 'CommenterFirstName'
        title: 'Commenter first name'
      }
      {
        name: 'CommenterLastName'
        title: 'Commenter last name'
      }
      {
        name: 'IssueId'
        title: 'Issue id'
      }
      {
        name: 'IssueName'
        title: 'Issue name'
      }
      {
        name: 'CommentText'
        title: 'Comment text'
      }
      {
        name: 'OrganizationName'
        title: 'Organization name'
      }
      {
        name: 'DevPortalUrl'
        title: 'Developer portal URL'
      }
    ]
  }
}

resource service_mfapim_name_NewDeveloperNotificationMessage 'Microsoft.ApiManagement/service/templates@2021-12-01-preview' = {
  parent: service_mfapim_name_resource
  name: 'NewDeveloperNotificationMessage'
  properties: {
    subject: 'Welcome to the $OrganizationName API!'
    body: '<!DOCTYPE html >\r\n<html>\r\n  <head>\r\n    <meta charset="UTF-8" />\r\n    <title>Letter</title>\r\n  </head>\r\n  <body>\r\n    <h1 style="color:#000505;font-size:18pt;font-family:\'Segoe UI\'">\r\n          Welcome to <span style="color:#003363">$OrganizationName API!</span></h1>\r\n    <p style="font-size:12pt;font-family:\'Segoe UI\'">Dear $DevFirstName $DevLastName,</p>\r\n    <p style="font-size:12pt;font-family:\'Segoe UI\'">Your $OrganizationName API program registration is completed and we are thrilled to have you as a customer. Here are a few important bits of information for your reference:</p>\r\n    <table width="100%" style="margin:20px 0">\r\n      <tr>\r\n            #if ($IdentityProvider == "Basic")\r\n            <td width="50%" style="height:40px;vertical-align:top;font-family:\'Segoe UI\';font-size:12pt">\r\n              Please use the following <strong>username</strong> when signing into any of the \${OrganizationName}-hosted developer portals:\r\n            </td><td style="vertical-align:top;font-family:\'Segoe UI\';font-size:12pt"><strong>$DevUsername</strong></td>\r\n            #else\r\n            <td width="50%" style="height:40px;vertical-align:top;font-family:\'Segoe UI\';font-size:12pt">\r\n              Please use the following <strong>$IdentityProvider account</strong> when signing into any of the \${OrganizationName}-hosted developer portals:\r\n            </td><td style="vertical-align:top;font-family:\'Segoe UI\';font-size:12pt"><strong>$DevUsername</strong></td>            \r\n            #end\r\n          </tr>\r\n      <tr>\r\n        <td style="height:40px;vertical-align:top;font-family:\'Segoe UI\';font-size:12pt">\r\n              We will direct all communications to the following <strong>email address</strong>:\r\n            </td>\r\n        <td style="vertical-align:top;font-family:\'Segoe UI\';font-size:12pt">\r\n          <a href="mailto:$DevEmail" style="text-decoration:none">\r\n            <strong>$DevEmail</strong>\r\n          </a>\r\n        </td>\r\n      </tr>\r\n    </table>\r\n    <p style="font-size:12pt;font-family:\'Segoe UI\'">Best of luck in your API pursuits!</p>\r\n    <p style="font-size:12pt;font-family:\'Segoe UI\'">$OrganizationName API Team</p>\r\n    <p style="font-size:12pt;font-family:\'Segoe UI\'">\r\n      <a href="http://$DevPortalUrl">$DevPortalUrl</a>\r\n    </p>\r\n  </body>\r\n</html>'
    title: 'Developer welcome letter'
    description: 'Developers receive this “welcome” email after they confirm their new account.'
    parameters: [
      {
        name: 'DevFirstName'
        title: 'Developer first name'
      }
      {
        name: 'DevLastName'
        title: 'Developer last name'
      }
      {
        name: 'DevUsername'
        title: 'Developer user name'
      }
      {
        name: 'DevEmail'
        title: 'Developer email'
      }
      {
        name: 'OrganizationName'
        title: 'Organization name'
      }
      {
        name: 'DevPortalUrl'
        title: 'Developer portal URL'
      }
      {
        name: 'IdentityProvider'
        title: 'Identity Provider selected by Organization'
      }
    ]
  }
}

resource service_mfapim_name_NewIssueNotificationMessage 'Microsoft.ApiManagement/service/templates@2021-12-01-preview' = {
  parent: service_mfapim_name_resource
  name: 'NewIssueNotificationMessage'
  properties: {
    subject: 'Your request $IssueName was received'
    body: '<!DOCTYPE html >\r\n<html>\r\n  <head />\r\n  <body>\r\n    <p style="font-size:12pt;font-family:\'Segoe UI\'">Dear $DevFirstName $DevLastName,</p>\r\n    <p style="font-size:12pt;font-family:\'Segoe UI\'">Thank you for contacting us. Our API team will review your issue and get back to you soon.</p>\r\n    <p style="font-size:12pt;font-family:\'Segoe UI\'">\r\n          Click this <a href="http://$DevPortalUrl/issues/$IssueId">link</a> to view or edit your request.\r\n        </p>\r\n    <p style="font-size:12pt;font-family:\'Segoe UI\'">Best,</p>\r\n    <p style="font-size:12pt;font-family:\'Segoe UI\'">The $OrganizationName API Team</p>\r\n  </body>\r\n</html>'
    title: 'New issue received (deprecated)'
    description: 'This email is sent to developers after they create a new topic on the Issues page of the developer portal.'
    parameters: [
      {
        name: 'DevFirstName'
        title: 'Developer first name'
      }
      {
        name: 'DevLastName'
        title: 'Developer last name'
      }
      {
        name: 'IssueId'
        title: 'Issue id'
      }
      {
        name: 'IssueName'
        title: 'Issue name'
      }
      {
        name: 'OrganizationName'
        title: 'Organization name'
      }
      {
        name: 'DevPortalUrl'
        title: 'Developer portal URL'
      }
    ]
  }
}

resource service_mfapim_name_PasswordResetByAdminNotificationMessage 'Microsoft.ApiManagement/service/templates@2021-12-01-preview' = {
  parent: service_mfapim_name_resource
  name: 'PasswordResetByAdminNotificationMessage'
  properties: {
    subject: 'Your password was reset'
    body: '<!DOCTYPE html >\r\n<html>\r\n  <head />\r\n  <body>\r\n    <table width="100%">\r\n      <tr>\r\n        <td>\r\n          <p style="font-size:12pt;font-family:\'Segoe UI\'">Dear $DevFirstName $DevLastName,</p>\r\n          <p style="font-size:12pt;font-family:\'Segoe UI\'"></p>\r\n          <p style="font-size:12pt;font-family:\'Segoe UI\'">The password of your $OrganizationName API account has been reset, per your request.</p>\r\n          <p style="font-size:12pt;font-family:\'Segoe UI\'">\r\n                Your new password is: <strong>$DevPassword</strong></p>\r\n          <p style="font-size:12pt;font-family:\'Segoe UI\'">Please make sure to change it next time you sign in.</p>\r\n          <p style="font-size:12pt;font-family:\'Segoe UI\'">Thank you,</p>\r\n          <p style="font-size:12pt;font-family:\'Segoe UI\'">$OrganizationName API Team</p>\r\n          <p style="font-size:12pt;font-family:\'Segoe UI\'">\r\n            <a href="$DevPortalUrl">$DevPortalUrl</a>\r\n          </p>\r\n        </td>\r\n      </tr>\r\n    </table>\r\n  </body>\r\n</html>'
    title: 'Password reset by publisher notification (Password reset by admin)'
    description: 'Developers receive this email when the publisher resets their password.'
    parameters: [
      {
        name: 'DevFirstName'
        title: 'Developer first name'
      }
      {
        name: 'DevLastName'
        title: 'Developer last name'
      }
      {
        name: 'DevPassword'
        title: 'New Developer password'
      }
      {
        name: 'OrganizationName'
        title: 'Organization name'
      }
      {
        name: 'DevPortalUrl'
        title: 'Developer portal URL'
      }
    ]
  }
}

resource service_mfapim_name_PasswordResetIdentityDefault 'Microsoft.ApiManagement/service/templates@2021-12-01-preview' = {
  parent: service_mfapim_name_resource
  name: 'PasswordResetIdentityDefault'
  properties: {
    subject: 'Your password change request'
    body: '<!DOCTYPE html >\r\n<html>\r\n  <head>\r\n    <meta charset="UTF-8" />\r\n    <title>Letter</title>\r\n  </head>\r\n  <body>\r\n    <table width="100%">\r\n      <tr>\r\n        <td>\r\n          <p style="font-size:12pt;font-family:\'Segoe UI\'">Dear $DevFirstName $DevLastName,</p>\r\n          <p style="font-size:12pt;font-family:\'Segoe UI\'"></p>\r\n          <p style="font-size:12pt;font-family:\'Segoe UI\'">You are receiving this email because you requested to change the password on your $OrganizationName API account.</p>\r\n          <p style="font-size:12pt;font-family:\'Segoe UI\'">Please click on the link below and follow instructions to create your new password:</p>\r\n          <p style="font-size:12pt;font-family:\'Segoe UI\'">\r\n            <a id="resetUrl" href="$ConfirmUrl" style="text-decoration:none">\r\n              <strong>$ConfirmUrl</strong>\r\n            </a>\r\n          </p>\r\n          <p style="font-size:12pt;font-family:\'Segoe UI\'">If clicking the link does not work, please copy-and-paste or re-type it into your browser\'s address bar and hit "Enter".</p>\r\n          <p style="font-size:12pt;font-family:\'Segoe UI\'">Thank you,</p>\r\n          <p style="font-size:12pt;font-family:\'Segoe UI\'">$OrganizationName API Team</p>\r\n          <p style="font-size:12pt;font-family:\'Segoe UI\'">\r\n            <a href="$DevPortalUrl">$DevPortalUrl</a>\r\n          </p>\r\n        </td>\r\n      </tr>\r\n    </table>\r\n  </body>\r\n</html>'
    title: 'Password change confirmation'
    description: 'Developers receive this email when they request a password change of their account. The purpose of the email is to verify that the account owner made the request and to provide a one-time perishable URL for changing the password.'
    parameters: [
      {
        name: 'DevFirstName'
        title: 'Developer first name'
      }
      {
        name: 'DevLastName'
        title: 'Developer last name'
      }
      {
        name: 'OrganizationName'
        title: 'Organization name'
      }
      {
        name: 'DevPortalUrl'
        title: 'Developer portal URL'
      }
      {
        name: 'ConfirmUrl'
        title: 'Developer new password instruction URL'
      }
      {
        name: 'DevPortalHost'
        title: 'Developer portal hostname'
      }
      {
        name: 'ConfirmQuery'
        title: 'Query string part of the instruction URL'
      }
    ]
  }
}

resource service_mfapim_name_PurchaseDeveloperNotificationMessage 'Microsoft.ApiManagement/service/templates@2021-12-01-preview' = {
  parent: service_mfapim_name_resource
  name: 'PurchaseDeveloperNotificationMessage'
  properties: {
    subject: 'Your subscription to the $ProdName'
    body: '<!DOCTYPE html >\r\n<html>\r\n  <head />\r\n  <body>\r\n    <p style="font-size:12pt;font-family:\'Segoe UI\'">Greetings $DevFirstName $DevLastName!</p>\r\n    <p style="font-size:12pt;font-family:\'Segoe UI\'">\r\n          Thank you for subscribing to the <a href="http://$DevPortalUrl/products/$ProdId"><strong>$ProdName</strong></a> and welcome to the $OrganizationName developer community. We are delighted to have you as part of the team and are looking forward to the amazing applications you will build using our API!\r\n        </p>\r\n    <p style="font-size:12pt;font-family:\'Segoe UI\'">Below are a few subscription details for your reference:</p>\r\n    <p style="font-size:12pt;font-family:\'Segoe UI\'">\r\n      <ul>\r\n            #if ($SubStartDate != "")\r\n            <li style="font-size:12pt;font-family:\'Segoe UI\'">Start date: $SubStartDate</li>\r\n            #end\r\n            \r\n            #if ($SubTerm != "")\r\n            <li style="font-size:12pt;font-family:\'Segoe UI\'">Subscription term: $SubTerm</li>\r\n            #end\r\n          </ul>\r\n    </p>\r\n    <p style="font-size:12pt;font-family:\'Segoe UI\'">\r\n            Visit the developer <a href="http://$DevPortalUrl/developer">profile area</a> to manage your subscription and subscription keys\r\n        </p>\r\n    <p style="font-size:12pt;font-family:\'Segoe UI\'">A couple of pointers to help get you started:</p>\r\n    <p style="font-size:12pt;font-family:\'Segoe UI\'">\r\n      <strong>\r\n        <a href="http://$DevPortalUrl/docs/services?product=$ProdId">Learn about the API</a>\r\n      </strong>\r\n    </p>\r\n    <p style="font-size:12pt;font-family:\'Segoe UI\'">The API documentation provides all information necessary to make a request and to process a response. Code samples are provided per API operation in a variety of languages. Moreover, an interactive console allows making API calls directly from the developer portal without writing any code.</p>\r\n    <p style="font-size:12pt;font-family:\'Segoe UI\'">\r\n      <strong>\r\n        <a href="http://$DevPortalUrl/applications">Feature your app in the app gallery</a>\r\n      </strong>\r\n    </p>\r\n    <p style="font-size:12pt;font-family:\'Segoe UI\'">You can publish your application on our gallery for increased visibility to potential new users.</p>\r\n    <p style="font-size:12pt;font-family:\'Segoe UI\'">\r\n      <strong>\r\n        <a href="http://$DevPortalUrl/issues">Stay in touch</a>\r\n      </strong>\r\n    </p>\r\n    <p style="font-size:12pt;font-family:\'Segoe UI\'">\r\n          If you have an issue, a question, a suggestion, a request, or if you just want to tell us something, go to the <a href="http://$DevPortalUrl/issues">Issues</a> page on the developer portal and create a new topic.\r\n        </p>\r\n    <p style="font-size:12pt;font-family:\'Segoe UI\'">Happy hacking,</p>\r\n    <p style="font-size:12pt;font-family:\'Segoe UI\'">The $OrganizationName API Team</p>\r\n    <a style="font-size:12pt;font-family:\'Segoe UI\'" href="http://$DevPortalUrl">$DevPortalUrl</a>\r\n  </body>\r\n</html>'
    title: 'New subscription activated'
    description: 'Developers receive this acknowledgement email after subscribing to a product.'
    parameters: [
      {
        name: 'DevFirstName'
        title: 'Developer first name'
      }
      {
        name: 'DevLastName'
        title: 'Developer last name'
      }
      {
        name: 'ProdId'
        title: 'Product ID'
      }
      {
        name: 'ProdName'
        title: 'Product name'
      }
      {
        name: 'OrganizationName'
        title: 'Organization name'
      }
      {
        name: 'SubStartDate'
        title: 'Subscription start date'
      }
      {
        name: 'SubTerm'
        title: 'Subscription term'
      }
      {
        name: 'DevPortalUrl'
        title: 'Developer portal URL'
      }
    ]
  }
}

resource service_mfapim_name_QuotaLimitApproachingDeveloperNotificationMessage 'Microsoft.ApiManagement/service/templates@2021-12-01-preview' = {
  parent: service_mfapim_name_resource
  name: 'QuotaLimitApproachingDeveloperNotificationMessage'
  properties: {
    subject: 'You are approaching an API quota limit'
    body: '<!DOCTYPE html >\r\n<html>\r\n  <head>\r\n    <style>\r\n          body {font-size:12pt; font-family:"Segoe UI","Segoe WP","Tahoma","Arial","sans-serif";}\r\n          .alert { color: red; }\r\n          .child1 { padding-left: 20px; }\r\n          .child2 { padding-left: 40px; }\r\n          .number { text-align: right; }\r\n          .text { text-align: left; }\r\n          th, td { padding: 4px 10px; min-width: 100px; }\r\n          th { background-color: #DDDDDD;}\r\n        </style>\r\n  </head>\r\n  <body>\r\n    <p>Greetings $DevFirstName $DevLastName!</p>\r\n    <p>\r\n          You are approaching the quota limit on you subscription to the <strong>$ProdName</strong> product (primary key $SubPrimaryKey).\r\n          #if ($QuotaResetDate != "")\r\n          This quota will be renewed on $QuotaResetDate.\r\n          #else\r\n          This quota will not be renewed.\r\n          #end\r\n        </p>\r\n    <p>Below are details on quota usage for the subscription:</p>\r\n    <p>\r\n      <table>\r\n        <thead>\r\n          <th class="text">Quota Scope</th>\r\n          <th class="number">Calls</th>\r\n          <th class="number">Call Quota</th>\r\n          <th class="number">Bandwidth</th>\r\n          <th class="number">Bandwidth Quota</th>\r\n        </thead>\r\n        <tbody>\r\n          <tr>\r\n            <td class="text">Subscription</td>\r\n            <td class="number">\r\n                  #if ($CallsAlert == true)\r\n                  <span class="alert">$Calls</span>\r\n                  #else\r\n                  $Calls\r\n                  #end\r\n                </td>\r\n            <td class="number">$CallQuota</td>\r\n            <td class="number">\r\n                  #if ($BandwidthAlert == true)\r\n                  <span class="alert">$Bandwidth</span>\r\n                  #else\r\n                  $Bandwidth\r\n                  #end\r\n                </td>\r\n            <td class="number">$BandwidthQuota</td>\r\n          </tr>\r\n              #foreach ($api in $Apis)\r\n              <tr><td class="child1 text">API: $api.Name</td><td class="number">\r\n                  #if ($api.CallsAlert == true)\r\n                  <span class="alert">$api.Calls</span>\r\n                  #else\r\n                  $api.Calls\r\n                  #end\r\n                </td><td class="number">$api.CallQuota</td><td class="number">\r\n                  #if ($api.BandwidthAlert == true)\r\n                  <span class="alert">$api.Bandwidth</span>\r\n                  #else\r\n                  $api.Bandwidth\r\n                  #end\r\n                </td><td class="number">$api.BandwidthQuota</td></tr>\r\n              #foreach ($operation in $api.Operations)\r\n              <tr><td class="child2 text">Operation: $operation.Name</td><td class="number">\r\n                  #if ($operation.CallsAlert == true)\r\n                  <span class="alert">$operation.Calls</span>\r\n                  #else\r\n                  $operation.Calls\r\n                  #end\r\n                </td><td class="number">$operation.CallQuota</td><td class="number">\r\n                  #if ($operation.BandwidthAlert == true)\r\n                  <span class="alert">$operation.Bandwidth</span>\r\n                  #else\r\n                  $operation.Bandwidth\r\n                  #end\r\n                </td><td class="number">$operation.BandwidthQuota</td></tr>\r\n              #end\r\n              #end\r\n            </tbody>\r\n      </table>\r\n    </p>\r\n    <p>Thank you,</p>\r\n    <p>$OrganizationName API Team</p>\r\n    <a href="$DevPortalUrl">$DevPortalUrl</a>\r\n    <p />\r\n  </body>\r\n</html>'
    title: 'Developer quota limit approaching notification'
    description: 'Developers receive this email to alert them when they are approaching a quota limit.'
    parameters: [
      {
        name: 'DevFirstName'
        title: 'Developer first name'
      }
      {
        name: 'DevLastName'
        title: 'Developer last name'
      }
      {
        name: 'ProdName'
        title: 'Product name'
      }
      {
        name: 'OrganizationName'
        title: 'Organization name'
      }
      {
        name: 'SubPrimaryKey'
        title: 'Primary Subscription key'
      }
      {
        name: 'DevPortalUrl'
        title: 'Developer portal URL'
      }
      {
        name: 'QuotaResetDate'
        title: 'Quota reset date'
      }
    ]
  }
}

resource service_mfapim_name_RejectDeveloperNotificationMessage 'Microsoft.ApiManagement/service/templates@2021-12-01-preview' = {
  parent: service_mfapim_name_resource
  name: 'RejectDeveloperNotificationMessage'
  properties: {
    subject: 'Your subscription request for the $ProdName'
    body: '<!DOCTYPE html >\r\n<html>\r\n  <head />\r\n  <body>\r\n    <p style="font-size:12pt;font-family:\'Segoe UI\'">Dear $DevFirstName $DevLastName,</p>\r\n    <p style="font-size:12pt;font-family:\'Segoe UI\'">\r\n          We would like to inform you that we reviewed your subscription request for the <strong>$ProdName</strong>.\r\n        </p>\r\n        #if ($SubDeclineReason == "")\r\n        <p style="font-size:12pt;font-family:\'Segoe UI\'">Regretfully, we were unable to approve it, as subscriptions are temporarily suspended at this time.</p>\r\n        #else\r\n        <p style="font-size:12pt;font-family:\'Segoe UI\'">\r\n          Regretfully, we were unable to approve it at this time for the following reason:\r\n          <div style="margin-left: 1.5em;"> $SubDeclineReason </div></p>\r\n        #end\r\n        <p style="font-size:12pt;font-family:\'Segoe UI\'"> We truly appreciate your interest. </p><p style="font-size:12pt;font-family:\'Segoe UI\'">All the best,</p><p style="font-size:12pt;font-family:\'Segoe UI\'">The $OrganizationName API Team</p><a style="font-size:12pt;font-family:\'Segoe UI\'" href="http://$DevPortalUrl">$DevPortalUrl</a></body>\r\n</html>'
    title: 'Subscription request declined'
    description: 'This email is sent to developers when their subscription requests for products requiring publisher approval is declined.'
    parameters: [
      {
        name: 'DevFirstName'
        title: 'Developer first name'
      }
      {
        name: 'DevLastName'
        title: 'Developer last name'
      }
      {
        name: 'SubDeclineReason'
        title: 'Reason for declining subscription'
      }
      {
        name: 'ProdName'
        title: 'Product name'
      }
      {
        name: 'OrganizationName'
        title: 'Organization name'
      }
      {
        name: 'DevPortalUrl'
        title: 'Developer portal URL'
      }
    ]
  }
}

resource service_mfapim_name_RequestDeveloperNotificationMessage 'Microsoft.ApiManagement/service/templates@2021-12-01-preview' = {
  parent: service_mfapim_name_resource
  name: 'RequestDeveloperNotificationMessage'
  properties: {
    subject: 'Your subscription request for the $ProdName'
    body: '<!DOCTYPE html >\r\n<html>\r\n  <head />\r\n  <body>\r\n    <p style="font-size:12pt;font-family:\'Segoe UI\'">Dear $DevFirstName $DevLastName,</p>\r\n    <p style="font-size:12pt;font-family:\'Segoe UI\'">\r\n          Thank you for your interest in our <strong>$ProdName</strong> API product!\r\n        </p>\r\n    <p style="font-size:12pt;font-family:\'Segoe UI\'">\r\n          We were delighted to receive your subscription request. We will promptly review it and get back to you at <strong>$DevEmail</strong>.\r\n        </p>\r\n    <p style="font-size:12pt;font-family:\'Segoe UI\'">Thank you,</p>\r\n    <p style="font-size:12pt;font-family:\'Segoe UI\'">The $OrganizationName API Team</p>\r\n    <a style="font-size:12pt;font-family:\'Segoe UI\'" href="http://$DevPortalUrl">$DevPortalUrl</a>\r\n  </body>\r\n</html>'
    title: 'Subscription request received'
    description: 'This email is sent to developers to acknowledge receipt of their subscription requests for products requiring publisher approval.'
    parameters: [
      {
        name: 'DevFirstName'
        title: 'Developer first name'
      }
      {
        name: 'DevLastName'
        title: 'Developer last name'
      }
      {
        name: 'DevEmail'
        title: 'Developer email'
      }
      {
        name: 'ProdName'
        title: 'Product name'
      }
      {
        name: 'OrganizationName'
        title: 'Organization name'
      }
      {
        name: 'DevPortalUrl'
        title: 'Developer portal URL'
      }
    ]
  }
}

resource service_mfapim_name_1 'Microsoft.ApiManagement/service/users@2021-12-01-preview' = {
  parent: service_mfapim_name_resource
  name: '1'
  properties: {
    firstName: 'Administrator'
    email: 'matthew.fortunka@microsoft.com'
    state: 'active'
    identities: [
      {
        provider: 'Azure'
        id: 'matthew.fortunka@microsoft.com'
      }
    ]
    lastName: users_1_lastName
  }
}

resource service_mfapim_name_60b8d2cd4ce5720ed8dfcfc6 'Microsoft.ApiManagement/service/users@2021-12-01-preview' = {
  parent: service_mfapim_name_resource
  name: '60b8d2cd4ce5720ed8dfcfc6'
  properties: {
    firstName: 'Matt'
    lastName: 'Fortunka'
    email: 'matthew@fortunka.co.uk'
    state: 'active'
    identities: [
      {
        provider: 'Basic'
        id: 'matthew@fortunka.co.uk'
      }
    ]
  }
}

resource components_apim_kv_ai_name_resource 'microsoft.insights/components@2020-02-02' = {
  name: components_apim_kv_ai_name
  location: 'uksouth'
  kind: 'web'
  properties: {
    Application_Type: 'web'
    Flow_Type: 'Redfield'
    Request_Source: 'IbizaAIExtension'
    RetentionInDays: 90
    WorkspaceResourceId: workspaces_apim_lv_la_name_resource.id
    IngestionMode: 'LogAnalytics'
    publicNetworkAccessForIngestion: 'Enabled'
    publicNetworkAccessForQuery: 'Enabled'
  }
}

resource components_apim_kv_ai_name_degradationindependencyduration 'microsoft.insights/components/ProactiveDetectionConfigs@2018-05-01-preview' = {
  parent: components_apim_kv_ai_name_resource
  name: 'degradationindependencyduration'
  location: 'uksouth'
  properties: {
    RuleDefinitions: {
      Name: 'degradationindependencyduration'
      DisplayName: 'Degradation in dependency duration'
      Description: 'Smart Detection rules notify you of performance anomaly issues.'
      HelpUrl: 'https://docs.microsoft.com/en-us/azure/application-insights/app-insights-proactive-performance-diagnostics'
      IsHidden: false
      IsEnabledByDefault: true
      IsInPreview: false
      SupportsEmailNotifications: true
    }
    Enabled: true
    SendEmailsToSubscriptionOwners: true
    CustomEmails: []
  }
}

resource components_apim_kv_ai_name_degradationinserverresponsetime 'microsoft.insights/components/ProactiveDetectionConfigs@2018-05-01-preview' = {
  parent: components_apim_kv_ai_name_resource
  name: 'degradationinserverresponsetime'
  location: 'uksouth'
  properties: {
    RuleDefinitions: {
      Name: 'degradationinserverresponsetime'
      DisplayName: 'Degradation in server response time'
      Description: 'Smart Detection rules notify you of performance anomaly issues.'
      HelpUrl: 'https://docs.microsoft.com/en-us/azure/application-insights/app-insights-proactive-performance-diagnostics'
      IsHidden: false
      IsEnabledByDefault: true
      IsInPreview: false
      SupportsEmailNotifications: true
    }
    Enabled: true
    SendEmailsToSubscriptionOwners: true
    CustomEmails: []
  }
}

resource components_apim_kv_ai_name_digestMailConfiguration 'microsoft.insights/components/ProactiveDetectionConfigs@2018-05-01-preview' = {
  parent: components_apim_kv_ai_name_resource
  name: 'digestMailConfiguration'
  location: 'uksouth'
  properties: {
    RuleDefinitions: {
      Name: 'digestMailConfiguration'
      DisplayName: 'Digest Mail Configuration'
      Description: 'This rule describes the digest mail preferences'
      HelpUrl: 'www.homail.com'
      IsHidden: true
      IsEnabledByDefault: true
      IsInPreview: false
      SupportsEmailNotifications: true
    }
    Enabled: true
    SendEmailsToSubscriptionOwners: true
    CustomEmails: []
  }
}

resource components_apim_kv_ai_name_extension_billingdatavolumedailyspikeextension 'microsoft.insights/components/ProactiveDetectionConfigs@2018-05-01-preview' = {
  parent: components_apim_kv_ai_name_resource
  name: 'extension_billingdatavolumedailyspikeextension'
  location: 'uksouth'
  properties: {
    RuleDefinitions: {
      Name: 'extension_billingdatavolumedailyspikeextension'
      DisplayName: 'Abnormal rise in daily data volume (preview)'
      Description: 'This detection rule automatically analyzes the billing data generated by your application, and can warn you about an unusual increase in your application\'s billing costs'
      HelpUrl: 'https://github.com/Microsoft/ApplicationInsights-Home/tree/master/SmartDetection/billing-data-volume-daily-spike.md'
      IsHidden: false
      IsEnabledByDefault: true
      IsInPreview: true
      SupportsEmailNotifications: false
    }
    Enabled: true
    SendEmailsToSubscriptionOwners: true
    CustomEmails: []
  }
}

resource components_apim_kv_ai_name_extension_canaryextension 'microsoft.insights/components/ProactiveDetectionConfigs@2018-05-01-preview' = {
  parent: components_apim_kv_ai_name_resource
  name: 'extension_canaryextension'
  location: 'uksouth'
  properties: {
    RuleDefinitions: {
      Name: 'extension_canaryextension'
      DisplayName: 'Canary extension'
      Description: 'Canary extension'
      HelpUrl: 'https://github.com/Microsoft/ApplicationInsights-Home/blob/master/SmartDetection/'
      IsHidden: true
      IsEnabledByDefault: true
      IsInPreview: true
      SupportsEmailNotifications: false
    }
    Enabled: true
    SendEmailsToSubscriptionOwners: true
    CustomEmails: []
  }
}

resource components_apim_kv_ai_name_extension_exceptionchangeextension 'microsoft.insights/components/ProactiveDetectionConfigs@2018-05-01-preview' = {
  parent: components_apim_kv_ai_name_resource
  name: 'extension_exceptionchangeextension'
  location: 'uksouth'
  properties: {
    RuleDefinitions: {
      Name: 'extension_exceptionchangeextension'
      DisplayName: 'Abnormal rise in exception volume (preview)'
      Description: 'This detection rule automatically analyzes the exceptions thrown in your application, and can warn you about unusual patterns in your exception telemetry.'
      HelpUrl: 'https://github.com/Microsoft/ApplicationInsights-Home/blob/master/SmartDetection/abnormal-rise-in-exception-volume.md'
      IsHidden: false
      IsEnabledByDefault: true
      IsInPreview: true
      SupportsEmailNotifications: false
    }
    Enabled: true
    SendEmailsToSubscriptionOwners: true
    CustomEmails: []
  }
}

resource components_apim_kv_ai_name_extension_memoryleakextension 'microsoft.insights/components/ProactiveDetectionConfigs@2018-05-01-preview' = {
  parent: components_apim_kv_ai_name_resource
  name: 'extension_memoryleakextension'
  location: 'uksouth'
  properties: {
    RuleDefinitions: {
      Name: 'extension_memoryleakextension'
      DisplayName: 'Potential memory leak detected (preview)'
      Description: 'This detection rule automatically analyzes the memory consumption of each process in your application, and can warn you about potential memory leaks or increased memory consumption.'
      HelpUrl: 'https://github.com/Microsoft/ApplicationInsights-Home/tree/master/SmartDetection/memory-leak.md'
      IsHidden: false
      IsEnabledByDefault: true
      IsInPreview: true
      SupportsEmailNotifications: false
    }
    Enabled: true
    SendEmailsToSubscriptionOwners: true
    CustomEmails: []
  }
}

resource components_apim_kv_ai_name_extension_securityextensionspackage 'microsoft.insights/components/ProactiveDetectionConfigs@2018-05-01-preview' = {
  parent: components_apim_kv_ai_name_resource
  name: 'extension_securityextensionspackage'
  location: 'uksouth'
  properties: {
    RuleDefinitions: {
      Name: 'extension_securityextensionspackage'
      DisplayName: 'Potential security issue detected (preview)'
      Description: 'This detection rule automatically analyzes the telemetry generated by your application and detects potential security issues.'
      HelpUrl: 'https://github.com/Microsoft/ApplicationInsights-Home/blob/master/SmartDetection/application-security-detection-pack.md'
      IsHidden: false
      IsEnabledByDefault: true
      IsInPreview: true
      SupportsEmailNotifications: false
    }
    Enabled: true
    SendEmailsToSubscriptionOwners: true
    CustomEmails: []
  }
}

resource components_apim_kv_ai_name_extension_traceseveritydetector 'microsoft.insights/components/ProactiveDetectionConfigs@2018-05-01-preview' = {
  parent: components_apim_kv_ai_name_resource
  name: 'extension_traceseveritydetector'
  location: 'uksouth'
  properties: {
    RuleDefinitions: {
      Name: 'extension_traceseveritydetector'
      DisplayName: 'Degradation in trace severity ratio (preview)'
      Description: 'This detection rule automatically analyzes the trace logs emitted from your application, and can warn you about unusual patterns in the severity of your trace telemetry.'
      HelpUrl: 'https://github.com/Microsoft/ApplicationInsights-Home/blob/master/SmartDetection/degradation-in-trace-severity-ratio.md'
      IsHidden: false
      IsEnabledByDefault: true
      IsInPreview: true
      SupportsEmailNotifications: false
    }
    Enabled: true
    SendEmailsToSubscriptionOwners: true
    CustomEmails: []
  }
}

resource components_apim_kv_ai_name_longdependencyduration 'microsoft.insights/components/ProactiveDetectionConfigs@2018-05-01-preview' = {
  parent: components_apim_kv_ai_name_resource
  name: 'longdependencyduration'
  location: 'uksouth'
  properties: {
    RuleDefinitions: {
      Name: 'longdependencyduration'
      DisplayName: 'Long dependency duration'
      Description: 'Smart Detection rules notify you of performance anomaly issues.'
      HelpUrl: 'https://docs.microsoft.com/en-us/azure/application-insights/app-insights-proactive-performance-diagnostics'
      IsHidden: false
      IsEnabledByDefault: true
      IsInPreview: false
      SupportsEmailNotifications: true
    }
    Enabled: true
    SendEmailsToSubscriptionOwners: true
    CustomEmails: []
  }
}

resource components_apim_kv_ai_name_migrationToAlertRulesCompleted 'microsoft.insights/components/ProactiveDetectionConfigs@2018-05-01-preview' = {
  parent: components_apim_kv_ai_name_resource
  name: 'migrationToAlertRulesCompleted'
  location: 'uksouth'
  properties: {
    RuleDefinitions: {
      Name: 'migrationToAlertRulesCompleted'
      DisplayName: 'Migration To Alert Rules Completed'
      Description: 'A configuration that controls the migration state of Smart Detection to Smart Alerts'
      HelpUrl: 'https://docs.microsoft.com/en-us/azure/application-insights/app-insights-proactive-performance-diagnostics'
      IsHidden: true
      IsEnabledByDefault: false
      IsInPreview: true
      SupportsEmailNotifications: false
    }
    Enabled: false
    SendEmailsToSubscriptionOwners: true
    CustomEmails: []
  }
}

resource components_apim_kv_ai_name_slowpageloadtime 'microsoft.insights/components/ProactiveDetectionConfigs@2018-05-01-preview' = {
  parent: components_apim_kv_ai_name_resource
  name: 'slowpageloadtime'
  location: 'uksouth'
  properties: {
    RuleDefinitions: {
      Name: 'slowpageloadtime'
      DisplayName: 'Slow page load time'
      Description: 'Smart Detection rules notify you of performance anomaly issues.'
      HelpUrl: 'https://docs.microsoft.com/en-us/azure/application-insights/app-insights-proactive-performance-diagnostics'
      IsHidden: false
      IsEnabledByDefault: true
      IsInPreview: false
      SupportsEmailNotifications: true
    }
    Enabled: true
    SendEmailsToSubscriptionOwners: true
    CustomEmails: []
  }
}

resource components_apim_kv_ai_name_slowserverresponsetime 'microsoft.insights/components/ProactiveDetectionConfigs@2018-05-01-preview' = {
  parent: components_apim_kv_ai_name_resource
  name: 'slowserverresponsetime'
  location: 'uksouth'
  properties: {
    RuleDefinitions: {
      Name: 'slowserverresponsetime'
      DisplayName: 'Slow server response time'
      Description: 'Smart Detection rules notify you of performance anomaly issues.'
      HelpUrl: 'https://docs.microsoft.com/en-us/azure/application-insights/app-insights-proactive-performance-diagnostics'
      IsHidden: false
      IsEnabledByDefault: true
      IsInPreview: false
      SupportsEmailNotifications: true
    }
    Enabled: true
    SendEmailsToSubscriptionOwners: true
    CustomEmails: []
  }
}

resource workbooks_3ca52d27_5d21_4bc9_b11e_a7310e8aebbf_name_resource 'microsoft.insights/workbooks@2022-04-01' = {
  name: workbooks_3ca52d27_5d21_4bc9_b11e_a7310e8aebbf_name
  location: 'uksouth'
  tags: {
    'hidden-title': 'Azure Activity - apim-lv-la'
  }
  kind: 'shared'
  properties: {
    displayName: 'Azure Activity - apim-lv-la'
    version: '1.0'
    category: 'sentinel'
    sourceId: workspaces_apim_lv_la_name_resource.id
    tags: [
      'AzureActivityWorkbook'
      '1.4'
    ]
    serializedData: workbooks_3ca52d27_5d21_4bc9_b11e_a7310e8aebbf_serializedData
  }
}

resource vaults_mfapimkv_name_resource 'Microsoft.KeyVault/vaults@2021-11-01-preview' = {
  name: vaults_mfapimkv_name
  location: 'uksouth'
  properties: {
    sku: {
      family: 'A'
      name: 'standard'
    }
    tenantId: '72f988bf-86f1-41af-91ab-2d7cd011db47'
    networkAcls: {
      bypass: 'AzureServices'
      defaultAction: 'Deny'
      ipRules: [
        {
          value: '51.104.26.0/24'
        }
        {
          value: '212.56.109.15/32'
        }
      ]
      virtualNetworkRules: [
        {
          id: virtualNetworks_vnet_name_apim.id
          ignoreMissingVnetServiceEndpoint: false
        }
      ]
    }
    accessPolicies: [
      {
        tenantId: '72f988bf-86f1-41af-91ab-2d7cd011db47'
        objectId: '76b0a518-d176-4bc9-8afb-f3fa31723d2f'
        permissions: {
          keys: []
          secrets: [
            'Get'
            'List'
          ]
          certificates: []
        }
      }
      {
        tenantId: '72f988bf-86f1-41af-91ab-2d7cd011db47'
        objectId: 'c2b0048c-6e64-40a2-b780-fde9ed71d1b6'
        permissions: {
          keys: []
          secrets: [
            'Get'
            'List'
          ]
          certificates: []
        }
      }
      {
        tenantId: '72f988bf-86f1-41af-91ab-2d7cd011db47'
        objectId: 'd3ba4202-2338-444c-99fd-419bb26788cd'
        permissions: {
          keys: [
            'Get'
            'List'
            'Update'
            'Create'
            'Import'
            'Delete'
            'Recover'
            'Backup'
            'Restore'
          ]
          secrets: [
            'Get'
            'List'
            'Set'
            'Delete'
            'Recover'
            'Backup'
            'Restore'
          ]
          certificates: [
            'Get'
            'List'
            'Update'
            'Create'
            'Import'
            'Delete'
            'Recover'
            'Backup'
            'Restore'
            'ManageContacts'
            'ManageIssuers'
            'GetIssuers'
            'ListIssuers'
            'SetIssuers'
            'DeleteIssuers'
          ]
        }
      }
      {
        tenantId: '72f988bf-86f1-41af-91ab-2d7cd011db47'
        objectId: '507cf986-7564-490a-b539-2188f5dfe677'
        permissions: {
          keys: []
          secrets: [
            'Get'
            'List'
          ]
          certificates: []
        }
      }
    ]
    enabledForDeployment: false
    enabledForDiskEncryption: false
    enabledForTemplateDeployment: true
    enableSoftDelete: true
    softDeleteRetentionInDays: 90
    enableRbacAuthorization: false
    vaultUri: 'https://${vaults_mfapimkv_name}.vault.azure.net/'
    provisioningState: 'Succeeded'
    publicNetworkAccess: 'Enabled'
  }
}

resource vaults_mfapimkv_name_APIMTest1 'Microsoft.KeyVault/vaults/secrets@2021-11-01-preview' = {
  parent: vaults_mfapimkv_name_resource
  name: 'APIMTest1'
  location: 'uksouth'
  properties: {
    attributes: {
      enabled: true
    }
  }
}

resource networkSecurityGroups_vnet_apim_nsg_uksouth_name_Allow_AAD_Out 'Microsoft.Network/networkSecurityGroups/securityRules@2020-11-01' = {
  parent: networkSecurityGroups_vnet_apim_nsg_uksouth_name_resource
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

resource networkSecurityGroups_vnet_apim_nsg_uksouth_name_Allow_APIM_3443 'Microsoft.Network/networkSecurityGroups/securityRules@2020-11-01' = {
  parent: networkSecurityGroups_vnet_apim_nsg_uksouth_name_resource
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

resource networkSecurityGroups_vnet_apim_nsg_uksouth_name_Allow_AzureCloud_Https_Out 'Microsoft.Network/networkSecurityGroups/securityRules@2020-11-01' = {
  parent: networkSecurityGroups_vnet_apim_nsg_uksouth_name_resource
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

resource networkSecurityGroups_vnet_apim_nsg_uksouth_name_Allow_Http 'Microsoft.Network/networkSecurityGroups/securityRules@2020-11-01' = {
  parent: networkSecurityGroups_vnet_apim_nsg_uksouth_name_resource
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

resource networkSecurityGroups_vnet_apim_nsg_uksouth_name_Allow_Https 'Microsoft.Network/networkSecurityGroups/securityRules@2020-11-01' = {
  parent: networkSecurityGroups_vnet_apim_nsg_uksouth_name_resource
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

resource networkSecurityGroups_vnet_apim_nsg_uksouth_name_Allow_KeyVault_Out 'Microsoft.Network/networkSecurityGroups/securityRules@2020-11-01' = {
  parent: networkSecurityGroups_vnet_apim_nsg_uksouth_name_resource
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

resource networkSecurityGroups_vnet_apim_nsg_uksouth_name_Allow_Monitor_Out 'Microsoft.Network/networkSecurityGroups/securityRules@2020-11-01' = {
  parent: networkSecurityGroups_vnet_apim_nsg_uksouth_name_resource
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

resource networkSecurityGroups_vnet_apim_nsg_uksouth_name_Allow_SQL_Out 'Microsoft.Network/networkSecurityGroups/securityRules@2020-11-01' = {
  parent: networkSecurityGroups_vnet_apim_nsg_uksouth_name_resource
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

resource networkSecurityGroups_vnet_apim_nsg_uksouth_name_Allow_Storage_Out 'Microsoft.Network/networkSecurityGroups/securityRules@2020-11-01' = {
  parent: networkSecurityGroups_vnet_apim_nsg_uksouth_name_resource
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

resource Microsoft_Network_privateDnsZones_SOA_privateDnsZones_privatelink_vaultcore_azure_net_name 'Microsoft.Network/privateDnsZones/SOA@2018-09-01' = {
  parent: privateDnsZones_privatelink_vaultcore_azure_net_name_resource
  name: '@'
  properties: {
    ttl: 3600
    soaRecord: {
      email: 'azureprivatedns-host.microsoft.com'
      expireTime: 2419200
      host: 'azureprivatedns.net'
      minimumTtl: 10
      refreshTime: 3600
      retryTime: 300
      serialNumber: 1
    }
  }
}

resource workspaces_apim_lv_la_name_LogManagement_workspaces_apim_lv_la_name_General_AlphabeticallySortedComputers 'Microsoft.OperationalInsights/workspaces/savedSearches@2020-08-01' = {
  parent: workspaces_apim_lv_la_name_resource
  name: 'LogManagement(${workspaces_apim_lv_la_name})_General|AlphabeticallySortedComputers'
  properties: {
    displayName: 'All Computers with their most recent data'
    category: 'General Exploration'
    query: 'search not(ObjectName == "Advisor Metrics" or ObjectName == "ManagedSpace") | summarize AggregatedValue = max(TimeGenerated) by Computer | limit 500000 | sort by Computer asc\r\n// Oql: NOT(ObjectName="Advisor Metrics" OR ObjectName=ManagedSpace) | measure max(TimeGenerated) by Computer | top 500000 | Sort Computer // Args: {OQ: True; WorkspaceId: 00000000-0000-0000-0000-000000000000} // Settings: {PTT: True; SortI: True; SortF: True} // Version: 0.1.122'
    version: 2
  }
}

resource workspaces_apim_lv_la_name_LogManagement_workspaces_apim_lv_la_name_General_dataPointsPerManagementGroup 'Microsoft.OperationalInsights/workspaces/savedSearches@2020-08-01' = {
  parent: workspaces_apim_lv_la_name_resource
  name: 'LogManagement(${workspaces_apim_lv_la_name})_General|dataPointsPerManagementGroup'
  properties: {
    displayName: 'Which Management Group is generating the most data points?'
    category: 'General Exploration'
    query: 'search * | summarize AggregatedValue = count() by ManagementGroupName\r\n// Oql: * | Measure count() by ManagementGroupName // Args: {OQ: True; WorkspaceId: 00000000-0000-0000-0000-000000000000} // Settings: {PTT: True; SortI: True; SortF: True} // Version: 0.1.122'
    version: 2
  }
}

resource workspaces_apim_lv_la_name_LogManagement_workspaces_apim_lv_la_name_General_dataTypeDistribution 'Microsoft.OperationalInsights/workspaces/savedSearches@2020-08-01' = {
  parent: workspaces_apim_lv_la_name_resource
  name: 'LogManagement(${workspaces_apim_lv_la_name})_General|dataTypeDistribution'
  properties: {
    displayName: 'Distribution of data Types'
    category: 'General Exploration'
    query: 'search * | extend Type = $table | summarize AggregatedValue = count() by Type\r\n// Oql: * | Measure count() by Type // Args: {OQ: True; WorkspaceId: 00000000-0000-0000-0000-000000000000} // Settings: {PTT: True; SortI: True; SortF: True} // Version: 0.1.122'
    version: 2
  }
}

resource workspaces_apim_lv_la_name_LogManagement_workspaces_apim_lv_la_name_General_StaleComputers 'Microsoft.OperationalInsights/workspaces/savedSearches@2020-08-01' = {
  parent: workspaces_apim_lv_la_name_resource
  name: 'LogManagement(${workspaces_apim_lv_la_name})_General|StaleComputers'
  properties: {
    displayName: 'Stale Computers (data older than 24 hours)'
    category: 'General Exploration'
    query: 'search not(ObjectName == "Advisor Metrics" or ObjectName == "ManagedSpace") | summarize lastdata = max(TimeGenerated) by Computer | limit 500000 | where lastdata < ago(24h)\r\n// Oql: NOT(ObjectName="Advisor Metrics" OR ObjectName=ManagedSpace) | measure max(TimeGenerated) as lastdata by Computer | top 500000 | where lastdata < NOW-24HOURS // Args: {OQ: True; WorkspaceId: 00000000-0000-0000-0000-000000000000} // Settings: {PTT: True; SortI: True; SortF: True} // Version: 0.1.122'
    version: 2
  }
}

resource workspaces_apim_lv_la_name_LogManagement_workspaces_apim_lv_la_name_LogManagement_AllEvents 'Microsoft.OperationalInsights/workspaces/savedSearches@2020-08-01' = {
  parent: workspaces_apim_lv_la_name_resource
  name: 'LogManagement(${workspaces_apim_lv_la_name})_LogManagement|AllEvents'
  properties: {
    displayName: 'All Events'
    category: 'Log Management'
    query: 'Event | sort by TimeGenerated desc\r\n// Oql: Type=Event // Args: {OQ: True; WorkspaceId: 00000000-0000-0000-0000-000000000000} // Settings: {PTT: True; SortI: True; SortF: True} // Version: 0.1.122'
    version: 2
  }
}

resource workspaces_apim_lv_la_name_LogManagement_workspaces_apim_lv_la_name_LogManagement_AllSyslog 'Microsoft.OperationalInsights/workspaces/savedSearches@2020-08-01' = {
  parent: workspaces_apim_lv_la_name_resource
  name: 'LogManagement(${workspaces_apim_lv_la_name})_LogManagement|AllSyslog'
  properties: {
    displayName: 'All Syslogs'
    category: 'Log Management'
    query: 'Syslog | sort by TimeGenerated desc\r\n// Oql: Type=Syslog // Args: {OQ: True; WorkspaceId: 00000000-0000-0000-0000-000000000000} // Settings: {PTT: True; SortI: True; SortF: True} // Version: 0.1.122'
    version: 2
  }
}

resource workspaces_apim_lv_la_name_LogManagement_workspaces_apim_lv_la_name_LogManagement_AllSyslogByFacility 'Microsoft.OperationalInsights/workspaces/savedSearches@2020-08-01' = {
  parent: workspaces_apim_lv_la_name_resource
  name: 'LogManagement(${workspaces_apim_lv_la_name})_LogManagement|AllSyslogByFacility'
  properties: {
    displayName: 'All Syslog Records grouped by Facility'
    category: 'Log Management'
    query: 'Syslog | summarize AggregatedValue = count() by Facility\r\n// Oql: Type=Syslog | Measure count() by Facility // Args: {OQ: True; WorkspaceId: 00000000-0000-0000-0000-000000000000} // Settings: {PTT: True; SortI: True; SortF: True} // Version: 0.1.122'
    version: 2
  }
}

resource workspaces_apim_lv_la_name_LogManagement_workspaces_apim_lv_la_name_LogManagement_AllSyslogByProcessName 'Microsoft.OperationalInsights/workspaces/savedSearches@2020-08-01' = {
  parent: workspaces_apim_lv_la_name_resource
  name: 'LogManagement(${workspaces_apim_lv_la_name})_LogManagement|AllSyslogByProcessName'
  properties: {
    displayName: 'All Syslog Records grouped by ProcessName'
    category: 'Log Management'
    query: 'Syslog | summarize AggregatedValue = count() by ProcessName\r\n// Oql: Type=Syslog | Measure count() by ProcessName // Args: {OQ: True; WorkspaceId: 00000000-0000-0000-0000-000000000000} // Settings: {PTT: True; SortI: True; SortF: True} // Version: 0.1.122'
    version: 2
  }
}

resource workspaces_apim_lv_la_name_LogManagement_workspaces_apim_lv_la_name_LogManagement_AllSyslogsWithErrors 'Microsoft.OperationalInsights/workspaces/savedSearches@2020-08-01' = {
  parent: workspaces_apim_lv_la_name_resource
  name: 'LogManagement(${workspaces_apim_lv_la_name})_LogManagement|AllSyslogsWithErrors'
  properties: {
    displayName: 'All Syslog Records with Errors'
    category: 'Log Management'
    query: 'Syslog | where SeverityLevel == "error" | sort by TimeGenerated desc\r\n// Oql: Type=Syslog SeverityLevel=error // Args: {OQ: True; WorkspaceId: 00000000-0000-0000-0000-000000000000} // Settings: {PTT: True; SortI: True; SortF: True} // Version: 0.1.122'
    version: 2
  }
}

resource workspaces_apim_lv_la_name_LogManagement_workspaces_apim_lv_la_name_LogManagement_AverageHTTPRequestTimeByClientIPAddress 'Microsoft.OperationalInsights/workspaces/savedSearches@2020-08-01' = {
  parent: workspaces_apim_lv_la_name_resource
  name: 'LogManagement(${workspaces_apim_lv_la_name})_LogManagement|AverageHTTPRequestTimeByClientIPAddress'
  properties: {
    displayName: 'Average HTTP Request time by Client IP Address'
    category: 'Log Management'
    query: 'search * | extend Type = $table | where Type == W3CIISLog | summarize AggregatedValue = avg(TimeTaken) by cIP\r\n// Oql: Type=W3CIISLog | Measure Avg(TimeTaken) by cIP // Args: {OQ: True; WorkspaceId: 00000000-0000-0000-0000-000000000000} // Settings: {PEF: True; SortI: True; SortF: True} // Version: 0.1.122'
    version: 2
  }
}

resource workspaces_apim_lv_la_name_LogManagement_workspaces_apim_lv_la_name_LogManagement_AverageHTTPRequestTimeHTTPMethod 'Microsoft.OperationalInsights/workspaces/savedSearches@2020-08-01' = {
  parent: workspaces_apim_lv_la_name_resource
  name: 'LogManagement(${workspaces_apim_lv_la_name})_LogManagement|AverageHTTPRequestTimeHTTPMethod'
  properties: {
    displayName: 'Average HTTP Request time by HTTP Method'
    category: 'Log Management'
    query: 'search * | extend Type = $table | where Type == W3CIISLog | summarize AggregatedValue = avg(TimeTaken) by csMethod\r\n// Oql: Type=W3CIISLog | Measure Avg(TimeTaken) by csMethod // Args: {OQ: True; WorkspaceId: 00000000-0000-0000-0000-000000000000} // Settings: {PEF: True; SortI: True; SortF: True} // Version: 0.1.122'
    version: 2
  }
}

resource workspaces_apim_lv_la_name_LogManagement_workspaces_apim_lv_la_name_LogManagement_CountIISLogEntriesClientIPAddress 'Microsoft.OperationalInsights/workspaces/savedSearches@2020-08-01' = {
  parent: workspaces_apim_lv_la_name_resource
  name: 'LogManagement(${workspaces_apim_lv_la_name})_LogManagement|CountIISLogEntriesClientIPAddress'
  properties: {
    displayName: 'Count of IIS Log Entries by Client IP Address'
    category: 'Log Management'
    query: 'search * | extend Type = $table | where Type == W3CIISLog | summarize AggregatedValue = count() by cIP\r\n// Oql: Type=W3CIISLog | Measure count() by cIP // Args: {OQ: True; WorkspaceId: 00000000-0000-0000-0000-000000000000} // Settings: {PEF: True; SortI: True; SortF: True} // Version: 0.1.122'
    version: 2
  }
}

resource workspaces_apim_lv_la_name_LogManagement_workspaces_apim_lv_la_name_LogManagement_CountIISLogEntriesHTTPRequestMethod 'Microsoft.OperationalInsights/workspaces/savedSearches@2020-08-01' = {
  parent: workspaces_apim_lv_la_name_resource
  name: 'LogManagement(${workspaces_apim_lv_la_name})_LogManagement|CountIISLogEntriesHTTPRequestMethod'
  properties: {
    displayName: 'Count of IIS Log Entries by HTTP Request Method'
    category: 'Log Management'
    query: 'search * | extend Type = $table | where Type == W3CIISLog | summarize AggregatedValue = count() by csMethod\r\n// Oql: Type=W3CIISLog | Measure count() by csMethod // Args: {OQ: True; WorkspaceId: 00000000-0000-0000-0000-000000000000} // Settings: {PEF: True; SortI: True; SortF: True} // Version: 0.1.122'
    version: 2
  }
}

resource workspaces_apim_lv_la_name_LogManagement_workspaces_apim_lv_la_name_LogManagement_CountIISLogEntriesHTTPUserAgent 'Microsoft.OperationalInsights/workspaces/savedSearches@2020-08-01' = {
  parent: workspaces_apim_lv_la_name_resource
  name: 'LogManagement(${workspaces_apim_lv_la_name})_LogManagement|CountIISLogEntriesHTTPUserAgent'
  properties: {
    displayName: 'Count of IIS Log Entries by HTTP User Agent'
    category: 'Log Management'
    query: 'search * | extend Type = $table | where Type == W3CIISLog | summarize AggregatedValue = count() by csUserAgent\r\n// Oql: Type=W3CIISLog | Measure count() by csUserAgent // Args: {OQ: True; WorkspaceId: 00000000-0000-0000-0000-000000000000} // Settings: {PEF: True; SortI: True; SortF: True} // Version: 0.1.122'
    version: 2
  }
}

resource workspaces_apim_lv_la_name_LogManagement_workspaces_apim_lv_la_name_LogManagement_CountOfIISLogEntriesByHostRequestedByClient 'Microsoft.OperationalInsights/workspaces/savedSearches@2020-08-01' = {
  parent: workspaces_apim_lv_la_name_resource
  name: 'LogManagement(${workspaces_apim_lv_la_name})_LogManagement|CountOfIISLogEntriesByHostRequestedByClient'
  properties: {
    displayName: 'Count of IIS Log Entries by Host requested by client'
    category: 'Log Management'
    query: 'search * | extend Type = $table | where Type == W3CIISLog | summarize AggregatedValue = count() by csHost\r\n// Oql: Type=W3CIISLog | Measure count() by csHost // Args: {OQ: True; WorkspaceId: 00000000-0000-0000-0000-000000000000} // Settings: {PEF: True; SortI: True; SortF: True} // Version: 0.1.122'
    version: 2
  }
}

resource workspaces_apim_lv_la_name_LogManagement_workspaces_apim_lv_la_name_LogManagement_CountOfIISLogEntriesByURLForHost 'Microsoft.OperationalInsights/workspaces/savedSearches@2020-08-01' = {
  parent: workspaces_apim_lv_la_name_resource
  name: 'LogManagement(${workspaces_apim_lv_la_name})_LogManagement|CountOfIISLogEntriesByURLForHost'
  properties: {
    displayName: 'Count of IIS Log Entries by URL for the host "www.contoso.com" (replace with your own)'
    category: 'Log Management'
    query: 'search csHost == "www.contoso.com" | extend Type = $table | where Type == W3CIISLog | summarize AggregatedValue = count() by csUriStem\r\n// Oql: Type=W3CIISLog csHost="www.contoso.com" | Measure count() by csUriStem // Args: {OQ: True; WorkspaceId: 00000000-0000-0000-0000-000000000000} // Settings: {PEF: True; SortI: True; SortF: True} // Version: 0.1.122'
    version: 2
  }
}

resource workspaces_apim_lv_la_name_LogManagement_workspaces_apim_lv_la_name_LogManagement_CountOfIISLogEntriesByURLRequestedByClient 'Microsoft.OperationalInsights/workspaces/savedSearches@2020-08-01' = {
  parent: workspaces_apim_lv_la_name_resource
  name: 'LogManagement(${workspaces_apim_lv_la_name})_LogManagement|CountOfIISLogEntriesByURLRequestedByClient'
  properties: {
    displayName: 'Count of IIS Log Entries by URL requested by client (without query strings)'
    category: 'Log Management'
    query: 'search * | extend Type = $table | where Type == W3CIISLog | summarize AggregatedValue = count() by csUriStem\r\n// Oql: Type=W3CIISLog | Measure count() by csUriStem // Args: {OQ: True; WorkspaceId: 00000000-0000-0000-0000-000000000000} // Settings: {PEF: True; SortI: True; SortF: True} // Version: 0.1.122'
    version: 2
  }
}

resource workspaces_apim_lv_la_name_LogManagement_workspaces_apim_lv_la_name_LogManagement_CountOfWarningEvents 'Microsoft.OperationalInsights/workspaces/savedSearches@2020-08-01' = {
  parent: workspaces_apim_lv_la_name_resource
  name: 'LogManagement(${workspaces_apim_lv_la_name})_LogManagement|CountOfWarningEvents'
  properties: {
    displayName: 'Count of Events with level "Warning" grouped by Event ID'
    category: 'Log Management'
    query: 'Event | where EventLevelName == "warning" | summarize AggregatedValue = count() by EventID\r\n// Oql: Type=Event EventLevelName=warning | Measure count() by EventID // Args: {OQ: True; WorkspaceId: 00000000-0000-0000-0000-000000000000} // Settings: {PTT: True; SortI: True; SortF: True} // Version: 0.1.122'
    version: 2
  }
}

resource workspaces_apim_lv_la_name_LogManagement_workspaces_apim_lv_la_name_LogManagement_DisplayBreakdownRespondCodes 'Microsoft.OperationalInsights/workspaces/savedSearches@2020-08-01' = {
  parent: workspaces_apim_lv_la_name_resource
  name: 'LogManagement(${workspaces_apim_lv_la_name})_LogManagement|DisplayBreakdownRespondCodes'
  properties: {
    displayName: 'Shows breakdown of response codes'
    category: 'Log Management'
    query: 'search * | extend Type = $table | where Type == W3CIISLog | summarize AggregatedValue = count() by scStatus\r\n// Oql: Type=W3CIISLog | Measure count() by scStatus // Args: {OQ: True; WorkspaceId: 00000000-0000-0000-0000-000000000000} // Settings: {PEF: True; SortI: True; SortF: True} // Version: 0.1.122'
    version: 2
  }
}

resource workspaces_apim_lv_la_name_LogManagement_workspaces_apim_lv_la_name_LogManagement_EventsByEventLog 'Microsoft.OperationalInsights/workspaces/savedSearches@2020-08-01' = {
  parent: workspaces_apim_lv_la_name_resource
  name: 'LogManagement(${workspaces_apim_lv_la_name})_LogManagement|EventsByEventLog'
  properties: {
    displayName: 'Count of Events grouped by Event Log'
    category: 'Log Management'
    query: 'Event | summarize AggregatedValue = count() by EventLog\r\n// Oql: Type=Event | Measure count() by EventLog // Args: {OQ: True; WorkspaceId: 00000000-0000-0000-0000-000000000000} // Settings: {PTT: True; SortI: True; SortF: True} // Version: 0.1.122'
    version: 2
  }
}

resource workspaces_apim_lv_la_name_LogManagement_workspaces_apim_lv_la_name_LogManagement_EventsByEventsID 'Microsoft.OperationalInsights/workspaces/savedSearches@2020-08-01' = {
  parent: workspaces_apim_lv_la_name_resource
  name: 'LogManagement(${workspaces_apim_lv_la_name})_LogManagement|EventsByEventsID'
  properties: {
    displayName: 'Count of Events grouped by Event ID'
    category: 'Log Management'
    query: 'Event | summarize AggregatedValue = count() by EventID\r\n// Oql: Type=Event | Measure count() by EventID // Args: {OQ: True; WorkspaceId: 00000000-0000-0000-0000-000000000000} // Settings: {PTT: True; SortI: True; SortF: True} // Version: 0.1.122'
    version: 2
  }
}

resource workspaces_apim_lv_la_name_LogManagement_workspaces_apim_lv_la_name_LogManagement_EventsByEventSource 'Microsoft.OperationalInsights/workspaces/savedSearches@2020-08-01' = {
  parent: workspaces_apim_lv_la_name_resource
  name: 'LogManagement(${workspaces_apim_lv_la_name})_LogManagement|EventsByEventSource'
  properties: {
    displayName: 'Count of Events grouped by Event Source'
    category: 'Log Management'
    query: 'Event | summarize AggregatedValue = count() by Source\r\n// Oql: Type=Event | Measure count() by Source // Args: {OQ: True; WorkspaceId: 00000000-0000-0000-0000-000000000000} // Settings: {PTT: True; SortI: True; SortF: True} // Version: 0.1.122'
    version: 2
  }
}

resource workspaces_apim_lv_la_name_LogManagement_workspaces_apim_lv_la_name_LogManagement_EventsInOMBetween2000to3000 'Microsoft.OperationalInsights/workspaces/savedSearches@2020-08-01' = {
  parent: workspaces_apim_lv_la_name_resource
  name: 'LogManagement(${workspaces_apim_lv_la_name})_LogManagement|EventsInOMBetween2000to3000'
  properties: {
    displayName: 'Events in the Operations Manager Event Log whose Event ID is in the range between 2000 and 3000'
    category: 'Log Management'
    query: 'Event | where EventLog == "Operations Manager" and EventID >= 2000 and EventID <= 3000 | sort by TimeGenerated desc\r\n// Oql: Type=Event EventLog="Operations Manager" EventID:[2000..3000] // Args: {OQ: True; WorkspaceId: 00000000-0000-0000-0000-000000000000} // Settings: {PTT: True; SortI: True; SortF: True} // Version: 0.1.122'
    version: 2
  }
}

resource workspaces_apim_lv_la_name_LogManagement_workspaces_apim_lv_la_name_LogManagement_EventsWithStartedinEventID 'Microsoft.OperationalInsights/workspaces/savedSearches@2020-08-01' = {
  parent: workspaces_apim_lv_la_name_resource
  name: 'LogManagement(${workspaces_apim_lv_la_name})_LogManagement|EventsWithStartedinEventID'
  properties: {
    displayName: 'Count of Events containing the word "started" grouped by EventID'
    category: 'Log Management'
    query: 'search in (Event) "started" | summarize AggregatedValue = count() by EventID\r\n// Oql: Type=Event "started" | Measure count() by EventID // Args: {OQ: True; WorkspaceId: 00000000-0000-0000-0000-000000000000} // Settings: {PTT: True; SortI: True; SortF: True} // Version: 0.1.122'
    version: 2
  }
}

resource workspaces_apim_lv_la_name_LogManagement_workspaces_apim_lv_la_name_LogManagement_FindMaximumTimeTakenForEachPage 'Microsoft.OperationalInsights/workspaces/savedSearches@2020-08-01' = {
  parent: workspaces_apim_lv_la_name_resource
  name: 'LogManagement(${workspaces_apim_lv_la_name})_LogManagement|FindMaximumTimeTakenForEachPage'
  properties: {
    displayName: 'Find the maximum time taken for each page'
    category: 'Log Management'
    query: 'search * | extend Type = $table | where Type == W3CIISLog | summarize AggregatedValue = max(TimeTaken) by csUriStem\r\n// Oql: Type=W3CIISLog | Measure Max(TimeTaken) by csUriStem // Args: {OQ: True; WorkspaceId: 00000000-0000-0000-0000-000000000000} // Settings: {PEF: True; SortI: True; SortF: True} // Version: 0.1.122'
    version: 2
  }
}

resource workspaces_apim_lv_la_name_LogManagement_workspaces_apim_lv_la_name_LogManagement_IISLogEntriesForClientIP 'Microsoft.OperationalInsights/workspaces/savedSearches@2020-08-01' = {
  parent: workspaces_apim_lv_la_name_resource
  name: 'LogManagement(${workspaces_apim_lv_la_name})_LogManagement|IISLogEntriesForClientIP'
  properties: {
    displayName: 'IIS Log Entries for a specific client IP Address (replace with your own)'
    category: 'Log Management'
    query: 'search cIP == "192.168.0.1" | extend Type = $table | where Type == W3CIISLog | sort by TimeGenerated desc | project csUriStem, scBytes, csBytes, TimeTaken, scStatus\r\n// Oql: Type=W3CIISLog cIP="192.168.0.1" | Select csUriStem,scBytes,csBytes,TimeTaken,scStatus // Args: {OQ: True; WorkspaceId: 00000000-0000-0000-0000-000000000000} // Settings: {PEF: True; SortI: True; SortF: True} // Version: 0.1.122'
    version: 2
  }
}

resource workspaces_apim_lv_la_name_LogManagement_workspaces_apim_lv_la_name_LogManagement_ListAllIISLogEntries 'Microsoft.OperationalInsights/workspaces/savedSearches@2020-08-01' = {
  parent: workspaces_apim_lv_la_name_resource
  name: 'LogManagement(${workspaces_apim_lv_la_name})_LogManagement|ListAllIISLogEntries'
  properties: {
    displayName: 'All IIS Log Entries'
    category: 'Log Management'
    query: 'search * | extend Type = $table | where Type == W3CIISLog | sort by TimeGenerated desc\r\n// Oql: Type=W3CIISLog // Args: {OQ: True; WorkspaceId: 00000000-0000-0000-0000-000000000000} // Settings: {PEF: True; SortI: True; SortF: True} // Version: 0.1.122'
    version: 2
  }
}

resource workspaces_apim_lv_la_name_LogManagement_workspaces_apim_lv_la_name_LogManagement_NoOfConnectionsToOMSDKService 'Microsoft.OperationalInsights/workspaces/savedSearches@2020-08-01' = {
  parent: workspaces_apim_lv_la_name_resource
  name: 'LogManagement(${workspaces_apim_lv_la_name})_LogManagement|NoOfConnectionsToOMSDKService'
  properties: {
    displayName: 'How many connections to Operations Manager\'s SDK service by day'
    category: 'Log Management'
    query: 'Event | where EventID == 26328 and EventLog == "Operations Manager" | summarize AggregatedValue = count() by bin(TimeGenerated, 1d) | sort by TimeGenerated desc\r\n// Oql: Type=Event EventID=26328 EventLog="Operations Manager" | Measure count() interval 1DAY // Args: {OQ: True; WorkspaceId: 00000000-0000-0000-0000-000000000000} // Settings: {PTT: True; SortI: True; SortF: True} // Version: 0.1.122'
    version: 2
  }
}

resource workspaces_apim_lv_la_name_LogManagement_workspaces_apim_lv_la_name_LogManagement_ServerRestartTime 'Microsoft.OperationalInsights/workspaces/savedSearches@2020-08-01' = {
  parent: workspaces_apim_lv_la_name_resource
  name: 'LogManagement(${workspaces_apim_lv_la_name})_LogManagement|ServerRestartTime'
  properties: {
    displayName: 'When did my servers initiate restart?'
    category: 'Log Management'
    query: 'search in (Event) "shutdown" and EventLog == "System" and Source == "User32" and EventID == 1074 | sort by TimeGenerated desc | project TimeGenerated, Computer\r\n// Oql: shutdown Type=Event EventLog=System Source=User32 EventID=1074 | Select TimeGenerated,Computer // Args: {OQ: True; WorkspaceId: 00000000-0000-0000-0000-000000000000} // Settings: {PTT: True; SortI: True; SortF: True} // Version: 0.1.122'
    version: 2
  }
}

resource workspaces_apim_lv_la_name_LogManagement_workspaces_apim_lv_la_name_LogManagement_Show404PagesList 'Microsoft.OperationalInsights/workspaces/savedSearches@2020-08-01' = {
  parent: workspaces_apim_lv_la_name_resource
  name: 'LogManagement(${workspaces_apim_lv_la_name})_LogManagement|Show404PagesList'
  properties: {
    displayName: 'Shows which pages people are getting a 404 for'
    category: 'Log Management'
    query: 'search scStatus == 404 | extend Type = $table | where Type == W3CIISLog | summarize AggregatedValue = count() by csUriStem\r\n// Oql: Type=W3CIISLog scStatus=404 | Measure count() by csUriStem // Args: {OQ: True; WorkspaceId: 00000000-0000-0000-0000-000000000000} // Settings: {PEF: True; SortI: True; SortF: True} // Version: 0.1.122'
    version: 2
  }
}

resource workspaces_apim_lv_la_name_LogManagement_workspaces_apim_lv_la_name_LogManagement_ShowServersThrowingInternalServerError 'Microsoft.OperationalInsights/workspaces/savedSearches@2020-08-01' = {
  parent: workspaces_apim_lv_la_name_resource
  name: 'LogManagement(${workspaces_apim_lv_la_name})_LogManagement|ShowServersThrowingInternalServerError'
  properties: {
    displayName: 'Shows servers that are throwing internal server error'
    category: 'Log Management'
    query: 'search scStatus == 500 | extend Type = $table | where Type == W3CIISLog | summarize AggregatedValue = count() by sComputerName\r\n// Oql: Type=W3CIISLog scStatus=500 | Measure count() by sComputerName // Args: {OQ: True; WorkspaceId: 00000000-0000-0000-0000-000000000000} // Settings: {PEF: True; SortI: True; SortF: True} // Version: 0.1.122'
    version: 2
  }
}

resource workspaces_apim_lv_la_name_LogManagement_workspaces_apim_lv_la_name_LogManagement_TotalBytesReceivedByEachAzureRoleInstance 'Microsoft.OperationalInsights/workspaces/savedSearches@2020-08-01' = {
  parent: workspaces_apim_lv_la_name_resource
  name: 'LogManagement(${workspaces_apim_lv_la_name})_LogManagement|TotalBytesReceivedByEachAzureRoleInstance'
  properties: {
    displayName: 'Total Bytes received by each Azure Role Instance'
    category: 'Log Management'
    query: 'search * | extend Type = $table | where Type == W3CIISLog | summarize AggregatedValue = sum(csBytes) by RoleInstance\r\n// Oql: Type=W3CIISLog | Measure Sum(csBytes) by RoleInstance // Args: {OQ: True; WorkspaceId: 00000000-0000-0000-0000-000000000000} // Settings: {PEF: True; SortI: True; SortF: True} // Version: 0.1.122'
    version: 2
  }
}

resource workspaces_apim_lv_la_name_LogManagement_workspaces_apim_lv_la_name_LogManagement_TotalBytesReceivedByEachIISComputer 'Microsoft.OperationalInsights/workspaces/savedSearches@2020-08-01' = {
  parent: workspaces_apim_lv_la_name_resource
  name: 'LogManagement(${workspaces_apim_lv_la_name})_LogManagement|TotalBytesReceivedByEachIISComputer'
  properties: {
    displayName: 'Total Bytes received by each IIS Computer'
    category: 'Log Management'
    query: 'search * | extend Type = $table | where Type == W3CIISLog | summarize AggregatedValue = sum(csBytes) by Computer | limit 500000\r\n// Oql: Type=W3CIISLog | Measure Sum(csBytes) by Computer | top 500000 // Args: {OQ: True; WorkspaceId: 00000000-0000-0000-0000-000000000000} // Settings: {PEF: True; SortI: True; SortF: True} // Version: 0.1.122'
    version: 2
  }
}

resource workspaces_apim_lv_la_name_LogManagement_workspaces_apim_lv_la_name_LogManagement_TotalBytesRespondedToClientsByClientIPAddress 'Microsoft.OperationalInsights/workspaces/savedSearches@2020-08-01' = {
  parent: workspaces_apim_lv_la_name_resource
  name: 'LogManagement(${workspaces_apim_lv_la_name})_LogManagement|TotalBytesRespondedToClientsByClientIPAddress'
  properties: {
    displayName: 'Total Bytes responded back to clients by Client IP Address'
    category: 'Log Management'
    query: 'search * | extend Type = $table | where Type == W3CIISLog | summarize AggregatedValue = sum(scBytes) by cIP\r\n// Oql: Type=W3CIISLog | Measure Sum(scBytes) by cIP // Args: {OQ: True; WorkspaceId: 00000000-0000-0000-0000-000000000000} // Settings: {PEF: True; SortI: True; SortF: True} // Version: 0.1.122'
    version: 2
  }
}

resource workspaces_apim_lv_la_name_LogManagement_workspaces_apim_lv_la_name_LogManagement_TotalBytesRespondedToClientsByEachIISServerIPAddress 'Microsoft.OperationalInsights/workspaces/savedSearches@2020-08-01' = {
  parent: workspaces_apim_lv_la_name_resource
  name: 'LogManagement(${workspaces_apim_lv_la_name})_LogManagement|TotalBytesRespondedToClientsByEachIISServerIPAddress'
  properties: {
    displayName: 'Total Bytes responded back to clients by each IIS ServerIP Address'
    category: 'Log Management'
    query: 'search * | extend Type = $table | where Type == W3CIISLog | summarize AggregatedValue = sum(scBytes) by sIP\r\n// Oql: Type=W3CIISLog | Measure Sum(scBytes) by sIP // Args: {OQ: True; WorkspaceId: 00000000-0000-0000-0000-000000000000} // Settings: {PEF: True; SortI: True; SortF: True} // Version: 0.1.122'
    version: 2
  }
}

resource workspaces_apim_lv_la_name_LogManagement_workspaces_apim_lv_la_name_LogManagement_TotalBytesSentByClientIPAddress 'Microsoft.OperationalInsights/workspaces/savedSearches@2020-08-01' = {
  parent: workspaces_apim_lv_la_name_resource
  name: 'LogManagement(${workspaces_apim_lv_la_name})_LogManagement|TotalBytesSentByClientIPAddress'
  properties: {
    displayName: 'Total Bytes sent by Client IP Address'
    category: 'Log Management'
    query: 'search * | extend Type = $table | where Type == W3CIISLog | summarize AggregatedValue = sum(csBytes) by cIP\r\n// Oql: Type=W3CIISLog | Measure Sum(csBytes) by cIP // Args: {OQ: True; WorkspaceId: 00000000-0000-0000-0000-000000000000} // Settings: {PEF: True; SortI: True; SortF: True} // Version: 0.1.122'
    version: 2
  }
}

resource workspaces_apim_lv_la_name_LogManagement_workspaces_apim_lv_la_name_LogManagement_WarningEvents 'Microsoft.OperationalInsights/workspaces/savedSearches@2020-08-01' = {
  parent: workspaces_apim_lv_la_name_resource
  name: 'LogManagement(${workspaces_apim_lv_la_name})_LogManagement|WarningEvents'
  properties: {
    displayName: 'All Events with level "Warning"'
    category: 'Log Management'
    query: 'Event | where EventLevelName == "warning" | sort by TimeGenerated desc\r\n// Oql: Type=Event EventLevelName=warning // Args: {OQ: True; WorkspaceId: 00000000-0000-0000-0000-000000000000} // Settings: {PTT: True; SortI: True; SortF: True} // Version: 0.1.122'
    version: 2
  }
}

resource workspaces_apim_lv_la_name_LogManagement_workspaces_apim_lv_la_name_LogManagement_WindowsFireawallPolicySettingsChanged 'Microsoft.OperationalInsights/workspaces/savedSearches@2020-08-01' = {
  parent: workspaces_apim_lv_la_name_resource
  name: 'LogManagement(${workspaces_apim_lv_la_name})_LogManagement|WindowsFireawallPolicySettingsChanged'
  properties: {
    displayName: 'Windows Firewall Policy settings have changed'
    category: 'Log Management'
    query: 'Event | where EventLog == "Microsoft-Windows-Windows Firewall With Advanced Security/Firewall" and EventID == 2008 | sort by TimeGenerated desc\r\n// Oql: Type=Event EventLog="Microsoft-Windows-Windows Firewall With Advanced Security/Firewall" EventID=2008 // Args: {OQ: True; WorkspaceId: 00000000-0000-0000-0000-000000000000} // Settings: {PTT: True; SortI: True; SortF: True} // Version: 0.1.122'
    version: 2
  }
}

resource workspaces_apim_lv_la_name_LogManagement_workspaces_apim_lv_la_name_LogManagement_WindowsFireawallPolicySettingsChangedByMachines 'Microsoft.OperationalInsights/workspaces/savedSearches@2020-08-01' = {
  parent: workspaces_apim_lv_la_name_resource
  name: 'LogManagement(${workspaces_apim_lv_la_name})_LogManagement|WindowsFireawallPolicySettingsChangedByMachines'
  properties: {
    displayName: 'On which machines and how many times have Windows Firewall Policy settings changed'
    category: 'Log Management'
    query: 'Event | where EventLog == "Microsoft-Windows-Windows Firewall With Advanced Security/Firewall" and EventID == 2008 | summarize AggregatedValue = count() by Computer | limit 500000\r\n// Oql: Type=Event EventLog="Microsoft-Windows-Windows Firewall With Advanced Security/Firewall" EventID=2008 | measure count() by Computer | top 500000 // Args: {OQ: True; WorkspaceId: 00000000-0000-0000-0000-000000000000} // Settings: {PTT: True; SortI: True; SortF: True} // Version: 0.1.122'
    version: 2
  }
}

resource workspaces_apim_lv_la_name_AACAudit 'Microsoft.OperationalInsights/workspaces/tables@2021-12-01-preview' = {
  parent: workspaces_apim_lv_la_name_resource
  name: 'AACAudit'
  properties: {
    totalRetentionInDays: 30
    plan: 'Analytics'
    schema: {
      name: 'AACAudit'
    }
    retentionInDays: 30
  }
}

resource workspaces_apim_lv_la_name_AACHttpRequest 'Microsoft.OperationalInsights/workspaces/tables@2021-12-01-preview' = {
  parent: workspaces_apim_lv_la_name_resource
  name: 'AACHttpRequest'
  properties: {
    totalRetentionInDays: 30
    plan: 'Analytics'
    schema: {
      name: 'AACHttpRequest'
    }
    retentionInDays: 30
  }
}

resource workspaces_apim_lv_la_name_AADB2CRequestLogs 'Microsoft.OperationalInsights/workspaces/tables@2021-12-01-preview' = {
  parent: workspaces_apim_lv_la_name_resource
  name: 'AADB2CRequestLogs'
  properties: {
    totalRetentionInDays: 30
    plan: 'Analytics'
    schema: {
      name: 'AADB2CRequestLogs'
    }
    retentionInDays: 30
  }
}

resource workspaces_apim_lv_la_name_AADDomainServicesAccountLogon 'Microsoft.OperationalInsights/workspaces/tables@2021-12-01-preview' = {
  parent: workspaces_apim_lv_la_name_resource
  name: 'AADDomainServicesAccountLogon'
  properties: {
    totalRetentionInDays: 30
    plan: 'Analytics'
    schema: {
      name: 'AADDomainServicesAccountLogon'
    }
    retentionInDays: 30
  }
}

resource workspaces_apim_lv_la_name_AADDomainServicesAccountManagement 'Microsoft.OperationalInsights/workspaces/tables@2021-12-01-preview' = {
  parent: workspaces_apim_lv_la_name_resource
  name: 'AADDomainServicesAccountManagement'
  properties: {
    totalRetentionInDays: 30
    plan: 'Analytics'
    schema: {
      name: 'AADDomainServicesAccountManagement'
    }
    retentionInDays: 30
  }
}

resource workspaces_apim_lv_la_name_AADDomainServicesDirectoryServiceAccess 'Microsoft.OperationalInsights/workspaces/tables@2021-12-01-preview' = {
  parent: workspaces_apim_lv_la_name_resource
  name: 'AADDomainServicesDirectoryServiceAccess'
  properties: {
    totalRetentionInDays: 30
    plan: 'Analytics'
    schema: {
      name: 'AADDomainServicesDirectoryServiceAccess'
    }
    retentionInDays: 30
  }
}

resource workspaces_apim_lv_la_name_AADDomainServicesLogonLogoff 'Microsoft.OperationalInsights/workspaces/tables@2021-12-01-preview' = {
  parent: workspaces_apim_lv_la_name_resource
  name: 'AADDomainServicesLogonLogoff'
  properties: {
    totalRetentionInDays: 30
    plan: 'Analytics'
    schema: {
      name: 'AADDomainServicesLogonLogoff'
    }
    retentionInDays: 30
  }
}

resource workspaces_apim_lv_la_name_AADDomainServicesPolicyChange 'Microsoft.OperationalInsights/workspaces/tables@2021-12-01-preview' = {
  parent: workspaces_apim_lv_la_name_resource
  name: 'AADDomainServicesPolicyChange'
  properties: {
    totalRetentionInDays: 30
    plan: 'Analytics'
    schema: {
      name: 'AADDomainServicesPolicyChange'
    }
    retentionInDays: 30
  }
}

resource workspaces_apim_lv_la_name_AADDomainServicesPrivilegeUse 'Microsoft.OperationalInsights/workspaces/tables@2021-12-01-preview' = {
  parent: workspaces_apim_lv_la_name_resource
  name: 'AADDomainServicesPrivilegeUse'
  properties: {
    totalRetentionInDays: 30
    plan: 'Analytics'
    schema: {
      name: 'AADDomainServicesPrivilegeUse'
    }
    retentionInDays: 30
  }
}

resource workspaces_apim_lv_la_name_AADDomainServicesSystemSecurity 'Microsoft.OperationalInsights/workspaces/tables@2021-12-01-preview' = {
  parent: workspaces_apim_lv_la_name_resource
  name: 'AADDomainServicesSystemSecurity'
  properties: {
    totalRetentionInDays: 30
    plan: 'Analytics'
    schema: {
      name: 'AADDomainServicesSystemSecurity'
    }
    retentionInDays: 30
  }
}

resource workspaces_apim_lv_la_name_AADManagedIdentitySignInLogs 'Microsoft.OperationalInsights/workspaces/tables@2021-12-01-preview' = {
  parent: workspaces_apim_lv_la_name_resource
  name: 'AADManagedIdentitySignInLogs'
  properties: {
    totalRetentionInDays: 30
    plan: 'Analytics'
    schema: {
      name: 'AADManagedIdentitySignInLogs'
    }
    retentionInDays: 30
  }
}

resource workspaces_apim_lv_la_name_AADNonInteractiveUserSignInLogs 'Microsoft.OperationalInsights/workspaces/tables@2021-12-01-preview' = {
  parent: workspaces_apim_lv_la_name_resource
  name: 'AADNonInteractiveUserSignInLogs'
  properties: {
    totalRetentionInDays: 30
    plan: 'Analytics'
    schema: {
      name: 'AADNonInteractiveUserSignInLogs'
    }
    retentionInDays: 30
  }
}

resource workspaces_apim_lv_la_name_AADProvisioningLogs 'Microsoft.OperationalInsights/workspaces/tables@2021-12-01-preview' = {
  parent: workspaces_apim_lv_la_name_resource
  name: 'AADProvisioningLogs'
  properties: {
    totalRetentionInDays: 30
    plan: 'Analytics'
    schema: {
      name: 'AADProvisioningLogs'
    }
    retentionInDays: 30
  }
}

resource workspaces_apim_lv_la_name_AADRiskyServicePrincipals 'Microsoft.OperationalInsights/workspaces/tables@2021-12-01-preview' = {
  parent: workspaces_apim_lv_la_name_resource
  name: 'AADRiskyServicePrincipals'
  properties: {
    totalRetentionInDays: 30
    plan: 'Analytics'
    schema: {
      name: 'AADRiskyServicePrincipals'
    }
    retentionInDays: 30
  }
}

resource workspaces_apim_lv_la_name_AADRiskyUsers 'Microsoft.OperationalInsights/workspaces/tables@2021-12-01-preview' = {
  parent: workspaces_apim_lv_la_name_resource
  name: 'AADRiskyUsers'
  properties: {
    totalRetentionInDays: 30
    plan: 'Analytics'
    schema: {
      name: 'AADRiskyUsers'
    }
    retentionInDays: 30
  }
}

resource workspaces_apim_lv_la_name_AADServicePrincipalRiskEvents 'Microsoft.OperationalInsights/workspaces/tables@2021-12-01-preview' = {
  parent: workspaces_apim_lv_la_name_resource
  name: 'AADServicePrincipalRiskEvents'
  properties: {
    totalRetentionInDays: 30
    plan: 'Analytics'
    schema: {
      name: 'AADServicePrincipalRiskEvents'
    }
    retentionInDays: 30
  }
}

resource workspaces_apim_lv_la_name_AADServicePrincipalSignInLogs 'Microsoft.OperationalInsights/workspaces/tables@2021-12-01-preview' = {
  parent: workspaces_apim_lv_la_name_resource
  name: 'AADServicePrincipalSignInLogs'
  properties: {
    totalRetentionInDays: 30
    plan: 'Analytics'
    schema: {
      name: 'AADServicePrincipalSignInLogs'
    }
    retentionInDays: 30
  }
}

resource workspaces_apim_lv_la_name_AADUserRiskEvents 'Microsoft.OperationalInsights/workspaces/tables@2021-12-01-preview' = {
  parent: workspaces_apim_lv_la_name_resource
  name: 'AADUserRiskEvents'
  properties: {
    totalRetentionInDays: 30
    plan: 'Analytics'
    schema: {
      name: 'AADUserRiskEvents'
    }
    retentionInDays: 30
  }
}

resource workspaces_apim_lv_la_name_ABSBotRequests 'Microsoft.OperationalInsights/workspaces/tables@2021-12-01-preview' = {
  parent: workspaces_apim_lv_la_name_resource
  name: 'ABSBotRequests'
  properties: {
    totalRetentionInDays: 30
    plan: 'Analytics'
    schema: {
      name: 'ABSBotRequests'
    }
    retentionInDays: 30
  }
}

resource workspaces_apim_lv_la_name_ABSChannelToBotRequests 'Microsoft.OperationalInsights/workspaces/tables@2021-12-01-preview' = {
  parent: workspaces_apim_lv_la_name_resource
  name: 'ABSChannelToBotRequests'
  properties: {
    totalRetentionInDays: 30
    plan: 'Analytics'
    schema: {
      name: 'ABSChannelToBotRequests'
    }
    retentionInDays: 30
  }
}

resource workspaces_apim_lv_la_name_ABSDependenciesRequests 'Microsoft.OperationalInsights/workspaces/tables@2021-12-01-preview' = {
  parent: workspaces_apim_lv_la_name_resource
  name: 'ABSDependenciesRequests'
  properties: {
    totalRetentionInDays: 30
    plan: 'Analytics'
    schema: {
      name: 'ABSDependenciesRequests'
    }
    retentionInDays: 30
  }
}

resource workspaces_apim_lv_la_name_ACICollaborationAudit 'Microsoft.OperationalInsights/workspaces/tables@2021-12-01-preview' = {
  parent: workspaces_apim_lv_la_name_resource
  name: 'ACICollaborationAudit'
  properties: {
    totalRetentionInDays: 30
    plan: 'Analytics'
    schema: {
      name: 'ACICollaborationAudit'
    }
    retentionInDays: 30
  }
}

resource workspaces_apim_lv_la_name_ACRConnectedClientList 'Microsoft.OperationalInsights/workspaces/tables@2021-12-01-preview' = {
  parent: workspaces_apim_lv_la_name_resource
  name: 'ACRConnectedClientList'
  properties: {
    totalRetentionInDays: 30
    plan: 'Analytics'
    schema: {
      name: 'ACRConnectedClientList'
    }
    retentionInDays: 30
  }
}

resource workspaces_apim_lv_la_name_ACSAuthIncomingOperations 'Microsoft.OperationalInsights/workspaces/tables@2021-12-01-preview' = {
  parent: workspaces_apim_lv_la_name_resource
  name: 'ACSAuthIncomingOperations'
  properties: {
    totalRetentionInDays: 30
    plan: 'Analytics'
    schema: {
      name: 'ACSAuthIncomingOperations'
    }
    retentionInDays: 30
  }
}

resource workspaces_apim_lv_la_name_ACSBillingUsage 'Microsoft.OperationalInsights/workspaces/tables@2021-12-01-preview' = {
  parent: workspaces_apim_lv_la_name_resource
  name: 'ACSBillingUsage'
  properties: {
    totalRetentionInDays: 30
    plan: 'Analytics'
    schema: {
      name: 'ACSBillingUsage'
    }
    retentionInDays: 30
  }
}

resource workspaces_apim_lv_la_name_ACSCallDiagnostics 'Microsoft.OperationalInsights/workspaces/tables@2021-12-01-preview' = {
  parent: workspaces_apim_lv_la_name_resource
  name: 'ACSCallDiagnostics'
  properties: {
    totalRetentionInDays: 30
    plan: 'Analytics'
    schema: {
      name: 'ACSCallDiagnostics'
    }
    retentionInDays: 30
  }
}

resource workspaces_apim_lv_la_name_ACSCallSummary 'Microsoft.OperationalInsights/workspaces/tables@2021-12-01-preview' = {
  parent: workspaces_apim_lv_la_name_resource
  name: 'ACSCallSummary'
  properties: {
    totalRetentionInDays: 30
    plan: 'Analytics'
    schema: {
      name: 'ACSCallSummary'
    }
    retentionInDays: 30
  }
}

resource workspaces_apim_lv_la_name_ACSChatIncomingOperations 'Microsoft.OperationalInsights/workspaces/tables@2021-12-01-preview' = {
  parent: workspaces_apim_lv_la_name_resource
  name: 'ACSChatIncomingOperations'
  properties: {
    totalRetentionInDays: 30
    plan: 'Analytics'
    schema: {
      name: 'ACSChatIncomingOperations'
    }
    retentionInDays: 30
  }
}

resource workspaces_apim_lv_la_name_ACSEmailSendMailOperational 'Microsoft.OperationalInsights/workspaces/tables@2021-12-01-preview' = {
  parent: workspaces_apim_lv_la_name_resource
  name: 'ACSEmailSendMailOperational'
  properties: {
    totalRetentionInDays: 30
    plan: 'Analytics'
    schema: {
      name: 'ACSEmailSendMailOperational'
    }
    retentionInDays: 30
  }
}

resource workspaces_apim_lv_la_name_ACSEmailStatusUpdateOperational 'Microsoft.OperationalInsights/workspaces/tables@2021-12-01-preview' = {
  parent: workspaces_apim_lv_la_name_resource
  name: 'ACSEmailStatusUpdateOperational'
  properties: {
    totalRetentionInDays: 30
    plan: 'Analytics'
    schema: {
      name: 'ACSEmailStatusUpdateOperational'
    }
    retentionInDays: 30
  }
}

resource workspaces_apim_lv_la_name_ACSEmailUserEngagementOperational 'Microsoft.OperationalInsights/workspaces/tables@2021-12-01-preview' = {
  parent: workspaces_apim_lv_la_name_resource
  name: 'ACSEmailUserEngagementOperational'
  properties: {
    totalRetentionInDays: 30
    plan: 'Analytics'
    schema: {
      name: 'ACSEmailUserEngagementOperational'
    }
    retentionInDays: 30
  }
}

resource workspaces_apim_lv_la_name_ACSNetworkTraversalDiagnostics 'Microsoft.OperationalInsights/workspaces/tables@2021-12-01-preview' = {
  parent: workspaces_apim_lv_la_name_resource
  name: 'ACSNetworkTraversalDiagnostics'
  properties: {
    totalRetentionInDays: 30
    plan: 'Analytics'
    schema: {
      name: 'ACSNetworkTraversalDiagnostics'
    }
    retentionInDays: 30
  }
}

resource workspaces_apim_lv_la_name_ACSNetworkTraversalIncomingOperations 'Microsoft.OperationalInsights/workspaces/tables@2021-12-01-preview' = {
  parent: workspaces_apim_lv_la_name_resource
  name: 'ACSNetworkTraversalIncomingOperations'
  properties: {
    totalRetentionInDays: 30
    plan: 'Analytics'
    schema: {
      name: 'ACSNetworkTraversalIncomingOperations'
    }
    retentionInDays: 30
  }
}

resource workspaces_apim_lv_la_name_ACSSMSIncomingOperations 'Microsoft.OperationalInsights/workspaces/tables@2021-12-01-preview' = {
  parent: workspaces_apim_lv_la_name_resource
  name: 'ACSSMSIncomingOperations'
  properties: {
    totalRetentionInDays: 30
    plan: 'Analytics'
    schema: {
      name: 'ACSSMSIncomingOperations'
    }
    retentionInDays: 30
  }
}

resource workspaces_apim_lv_la_name_AddonAzureBackupAlerts 'Microsoft.OperationalInsights/workspaces/tables@2021-12-01-preview' = {
  parent: workspaces_apim_lv_la_name_resource
  name: 'AddonAzureBackupAlerts'
  properties: {
    totalRetentionInDays: 30
    plan: 'Analytics'
    schema: {
      name: 'AddonAzureBackupAlerts'
    }
    retentionInDays: 30
  }
}

resource workspaces_apim_lv_la_name_AddonAzureBackupJobs 'Microsoft.OperationalInsights/workspaces/tables@2021-12-01-preview' = {
  parent: workspaces_apim_lv_la_name_resource
  name: 'AddonAzureBackupJobs'
  properties: {
    totalRetentionInDays: 30
    plan: 'Analytics'
    schema: {
      name: 'AddonAzureBackupJobs'
    }
    retentionInDays: 30
  }
}

resource workspaces_apim_lv_la_name_AddonAzureBackupPolicy 'Microsoft.OperationalInsights/workspaces/tables@2021-12-01-preview' = {
  parent: workspaces_apim_lv_la_name_resource
  name: 'AddonAzureBackupPolicy'
  properties: {
    totalRetentionInDays: 30
    plan: 'Analytics'
    schema: {
      name: 'AddonAzureBackupPolicy'
    }
    retentionInDays: 30
  }
}

resource workspaces_apim_lv_la_name_AddonAzureBackupProtectedInstance 'Microsoft.OperationalInsights/workspaces/tables@2021-12-01-preview' = {
  parent: workspaces_apim_lv_la_name_resource
  name: 'AddonAzureBackupProtectedInstance'
  properties: {
    totalRetentionInDays: 30
    plan: 'Analytics'
    schema: {
      name: 'AddonAzureBackupProtectedInstance'
    }
    retentionInDays: 30
  }
}

resource workspaces_apim_lv_la_name_AddonAzureBackupStorage 'Microsoft.OperationalInsights/workspaces/tables@2021-12-01-preview' = {
  parent: workspaces_apim_lv_la_name_resource
  name: 'AddonAzureBackupStorage'
  properties: {
    totalRetentionInDays: 30
    plan: 'Analytics'
    schema: {
      name: 'AddonAzureBackupStorage'
    }
    retentionInDays: 30
  }
}

resource workspaces_apim_lv_la_name_ADFActivityRun 'Microsoft.OperationalInsights/workspaces/tables@2021-12-01-preview' = {
  parent: workspaces_apim_lv_la_name_resource
  name: 'ADFActivityRun'
  properties: {
    totalRetentionInDays: 30
    plan: 'Analytics'
    schema: {
      name: 'ADFActivityRun'
    }
    retentionInDays: 30
  }
}

resource workspaces_apim_lv_la_name_ADFAirflowSchedulerLogs 'Microsoft.OperationalInsights/workspaces/tables@2021-12-01-preview' = {
  parent: workspaces_apim_lv_la_name_resource
  name: 'ADFAirflowSchedulerLogs'
  properties: {
    totalRetentionInDays: 30
    plan: 'Analytics'
    schema: {
      name: 'ADFAirflowSchedulerLogs'
    }
    retentionInDays: 30
  }
}

resource workspaces_apim_lv_la_name_ADFAirflowTaskLogs 'Microsoft.OperationalInsights/workspaces/tables@2021-12-01-preview' = {
  parent: workspaces_apim_lv_la_name_resource
  name: 'ADFAirflowTaskLogs'
  properties: {
    totalRetentionInDays: 30
    plan: 'Analytics'
    schema: {
      name: 'ADFAirflowTaskLogs'
    }
    retentionInDays: 30
  }
}

resource workspaces_apim_lv_la_name_ADFAirflowWebLogs 'Microsoft.OperationalInsights/workspaces/tables@2021-12-01-preview' = {
  parent: workspaces_apim_lv_la_name_resource
  name: 'ADFAirflowWebLogs'
  properties: {
    totalRetentionInDays: 30
    plan: 'Analytics'
    schema: {
      name: 'ADFAirflowWebLogs'
    }
    retentionInDays: 30
  }
}

resource workspaces_apim_lv_la_name_ADFAirflowWorkerLogs 'Microsoft.OperationalInsights/workspaces/tables@2021-12-01-preview' = {
  parent: workspaces_apim_lv_la_name_resource
  name: 'ADFAirflowWorkerLogs'
  properties: {
    totalRetentionInDays: 30
    plan: 'Analytics'
    schema: {
      name: 'ADFAirflowWorkerLogs'
    }
    retentionInDays: 30
  }
}

resource workspaces_apim_lv_la_name_ADFPipelineRun 'Microsoft.OperationalInsights/workspaces/tables@2021-12-01-preview' = {
  parent: workspaces_apim_lv_la_name_resource
  name: 'ADFPipelineRun'
  properties: {
    totalRetentionInDays: 30
    plan: 'Analytics'
    schema: {
      name: 'ADFPipelineRun'
    }
    retentionInDays: 30
  }
}

resource workspaces_apim_lv_la_name_ADFSandboxActivityRun 'Microsoft.OperationalInsights/workspaces/tables@2021-12-01-preview' = {
  parent: workspaces_apim_lv_la_name_resource
  name: 'ADFSandboxActivityRun'
  properties: {
    totalRetentionInDays: 30
    plan: 'Analytics'
    schema: {
      name: 'ADFSandboxActivityRun'
    }
    retentionInDays: 30
  }
}

resource workspaces_apim_lv_la_name_ADFSandboxPipelineRun 'Microsoft.OperationalInsights/workspaces/tables@2021-12-01-preview' = {
  parent: workspaces_apim_lv_la_name_resource
  name: 'ADFSandboxPipelineRun'
  properties: {
    totalRetentionInDays: 30
    plan: 'Analytics'
    schema: {
      name: 'ADFSandboxPipelineRun'
    }
    retentionInDays: 30
  }
}

resource workspaces_apim_lv_la_name_ADFSSignInLogs 'Microsoft.OperationalInsights/workspaces/tables@2021-12-01-preview' = {
  parent: workspaces_apim_lv_la_name_resource
  name: 'ADFSSignInLogs'
  properties: {
    totalRetentionInDays: 30
    plan: 'Analytics'
    schema: {
      name: 'ADFSSignInLogs'
    }
    retentionInDays: 30
  }
}

resource workspaces_apim_lv_la_name_ADFSSISIntegrationRuntimeLogs 'Microsoft.OperationalInsights/workspaces/tables@2021-12-01-preview' = {
  parent: workspaces_apim_lv_la_name_resource
  name: 'ADFSSISIntegrationRuntimeLogs'
  properties: {
    totalRetentionInDays: 30
    plan: 'Analytics'
    schema: {
      name: 'ADFSSISIntegrationRuntimeLogs'
    }
    retentionInDays: 30
  }
}

resource workspaces_apim_lv_la_name_ADFSSISPackageEventMessageContext 'Microsoft.OperationalInsights/workspaces/tables@2021-12-01-preview' = {
  parent: workspaces_apim_lv_la_name_resource
  name: 'ADFSSISPackageEventMessageContext'
  properties: {
    totalRetentionInDays: 30
    plan: 'Analytics'
    schema: {
      name: 'ADFSSISPackageEventMessageContext'
    }
    retentionInDays: 30
  }
}

resource workspaces_apim_lv_la_name_ADFSSISPackageEventMessages 'Microsoft.OperationalInsights/workspaces/tables@2021-12-01-preview' = {
  parent: workspaces_apim_lv_la_name_resource
  name: 'ADFSSISPackageEventMessages'
  properties: {
    totalRetentionInDays: 30
    plan: 'Analytics'
    schema: {
      name: 'ADFSSISPackageEventMessages'
    }
    retentionInDays: 30
  }
}

resource workspaces_apim_lv_la_name_ADFSSISPackageExecutableStatistics 'Microsoft.OperationalInsights/workspaces/tables@2021-12-01-preview' = {
  parent: workspaces_apim_lv_la_name_resource
  name: 'ADFSSISPackageExecutableStatistics'
  properties: {
    totalRetentionInDays: 30
    plan: 'Analytics'
    schema: {
      name: 'ADFSSISPackageExecutableStatistics'
    }
    retentionInDays: 30
  }
}

resource workspaces_apim_lv_la_name_ADFSSISPackageExecutionComponentPhases 'Microsoft.OperationalInsights/workspaces/tables@2021-12-01-preview' = {
  parent: workspaces_apim_lv_la_name_resource
  name: 'ADFSSISPackageExecutionComponentPhases'
  properties: {
    totalRetentionInDays: 30
    plan: 'Analytics'
    schema: {
      name: 'ADFSSISPackageExecutionComponentPhases'
    }
    retentionInDays: 30
  }
}

resource workspaces_apim_lv_la_name_ADFSSISPackageExecutionDataStatistics 'Microsoft.OperationalInsights/workspaces/tables@2021-12-01-preview' = {
  parent: workspaces_apim_lv_la_name_resource
  name: 'ADFSSISPackageExecutionDataStatistics'
  properties: {
    totalRetentionInDays: 30
    plan: 'Analytics'
    schema: {
      name: 'ADFSSISPackageExecutionDataStatistics'
    }
    retentionInDays: 30
  }
}

resource workspaces_apim_lv_la_name_ADFTriggerRun 'Microsoft.OperationalInsights/workspaces/tables@2021-12-01-preview' = {
  parent: workspaces_apim_lv_la_name_resource
  name: 'ADFTriggerRun'
  properties: {
    totalRetentionInDays: 30
    plan: 'Analytics'
    schema: {
      name: 'ADFTriggerRun'
    }
    retentionInDays: 30
  }
}

resource workspaces_apim_lv_la_name_ADPAudit 'Microsoft.OperationalInsights/workspaces/tables@2021-12-01-preview' = {
  parent: workspaces_apim_lv_la_name_resource
  name: 'ADPAudit'
  properties: {
    totalRetentionInDays: 30
    plan: 'Analytics'
    schema: {
      name: 'ADPAudit'
    }
    retentionInDays: 30
  }
}

resource workspaces_apim_lv_la_name_ADPDiagnostics 'Microsoft.OperationalInsights/workspaces/tables@2021-12-01-preview' = {
  parent: workspaces_apim_lv_la_name_resource
  name: 'ADPDiagnostics'
  properties: {
    totalRetentionInDays: 30
    plan: 'Analytics'
    schema: {
      name: 'ADPDiagnostics'
    }
    retentionInDays: 30
  }
}

resource workspaces_apim_lv_la_name_ADPRequests 'Microsoft.OperationalInsights/workspaces/tables@2021-12-01-preview' = {
  parent: workspaces_apim_lv_la_name_resource
  name: 'ADPRequests'
  properties: {
    totalRetentionInDays: 30
    plan: 'Analytics'
    schema: {
      name: 'ADPRequests'
    }
    retentionInDays: 30
  }
}

resource workspaces_apim_lv_la_name_ADTDataHistoryOperation 'Microsoft.OperationalInsights/workspaces/tables@2021-12-01-preview' = {
  parent: workspaces_apim_lv_la_name_resource
  name: 'ADTDataHistoryOperation'
  properties: {
    totalRetentionInDays: 30
    plan: 'Analytics'
    schema: {
      name: 'ADTDataHistoryOperation'
    }
    retentionInDays: 30
  }
}

resource workspaces_apim_lv_la_name_ADTDigitalTwinsOperation 'Microsoft.OperationalInsights/workspaces/tables@2021-12-01-preview' = {
  parent: workspaces_apim_lv_la_name_resource
  name: 'ADTDigitalTwinsOperation'
  properties: {
    totalRetentionInDays: 30
    plan: 'Analytics'
    schema: {
      name: 'ADTDigitalTwinsOperation'
    }
    retentionInDays: 30
  }
}

resource workspaces_apim_lv_la_name_ADTEventRoutesOperation 'Microsoft.OperationalInsights/workspaces/tables@2021-12-01-preview' = {
  parent: workspaces_apim_lv_la_name_resource
  name: 'ADTEventRoutesOperation'
  properties: {
    totalRetentionInDays: 30
    plan: 'Analytics'
    schema: {
      name: 'ADTEventRoutesOperation'
    }
    retentionInDays: 30
  }
}

resource workspaces_apim_lv_la_name_ADTModelsOperation 'Microsoft.OperationalInsights/workspaces/tables@2021-12-01-preview' = {
  parent: workspaces_apim_lv_la_name_resource
  name: 'ADTModelsOperation'
  properties: {
    totalRetentionInDays: 30
    plan: 'Analytics'
    schema: {
      name: 'ADTModelsOperation'
    }
    retentionInDays: 30
  }
}

resource workspaces_apim_lv_la_name_ADTQueryOperation 'Microsoft.OperationalInsights/workspaces/tables@2021-12-01-preview' = {
  parent: workspaces_apim_lv_la_name_resource
  name: 'ADTQueryOperation'
  properties: {
    totalRetentionInDays: 30
    plan: 'Analytics'
    schema: {
      name: 'ADTQueryOperation'
    }
    retentionInDays: 30
  }
}

resource workspaces_apim_lv_la_name_ADXCommand 'Microsoft.OperationalInsights/workspaces/tables@2021-12-01-preview' = {
  parent: workspaces_apim_lv_la_name_resource
  name: 'ADXCommand'
  properties: {
    totalRetentionInDays: 30
    plan: 'Analytics'
    schema: {
      name: 'ADXCommand'
    }
    retentionInDays: 30
  }
}

resource workspaces_apim_lv_la_name_ADXIngestionBatching 'Microsoft.OperationalInsights/workspaces/tables@2021-12-01-preview' = {
  parent: workspaces_apim_lv_la_name_resource
  name: 'ADXIngestionBatching'
  properties: {
    totalRetentionInDays: 30
    plan: 'Analytics'
    schema: {
      name: 'ADXIngestionBatching'
    }
    retentionInDays: 30
  }
}

resource workspaces_apim_lv_la_name_ADXJournal 'Microsoft.OperationalInsights/workspaces/tables@2021-12-01-preview' = {
  parent: workspaces_apim_lv_la_name_resource
  name: 'ADXJournal'
  properties: {
    totalRetentionInDays: 30
    plan: 'Analytics'
    schema: {
      name: 'ADXJournal'
    }
    retentionInDays: 30
  }
}

resource workspaces_apim_lv_la_name_ADXQuery 'Microsoft.OperationalInsights/workspaces/tables@2021-12-01-preview' = {
  parent: workspaces_apim_lv_la_name_resource
  name: 'ADXQuery'
  properties: {
    totalRetentionInDays: 30
    plan: 'Analytics'
    schema: {
      name: 'ADXQuery'
    }
    retentionInDays: 30
  }
}

resource workspaces_apim_lv_la_name_ADXTableDetails 'Microsoft.OperationalInsights/workspaces/tables@2021-12-01-preview' = {
  parent: workspaces_apim_lv_la_name_resource
  name: 'ADXTableDetails'
  properties: {
    totalRetentionInDays: 30
    plan: 'Analytics'
    schema: {
      name: 'ADXTableDetails'
    }
    retentionInDays: 30
  }
}

resource workspaces_apim_lv_la_name_ADXTableUsageStatistics 'Microsoft.OperationalInsights/workspaces/tables@2021-12-01-preview' = {
  parent: workspaces_apim_lv_la_name_resource
  name: 'ADXTableUsageStatistics'
  properties: {
    totalRetentionInDays: 30
    plan: 'Analytics'
    schema: {
      name: 'ADXTableUsageStatistics'
    }
    retentionInDays: 30
  }
}

resource workspaces_apim_lv_la_name_AegDataPlaneRequests 'Microsoft.OperationalInsights/workspaces/tables@2021-12-01-preview' = {
  parent: workspaces_apim_lv_la_name_resource
  name: 'AegDataPlaneRequests'
  properties: {
    totalRetentionInDays: 30
    plan: 'Analytics'
    schema: {
      name: 'AegDataPlaneRequests'
    }
    retentionInDays: 30
  }
}

resource workspaces_apim_lv_la_name_AegDeliveryFailureLogs 'Microsoft.OperationalInsights/workspaces/tables@2021-12-01-preview' = {
  parent: workspaces_apim_lv_la_name_resource
  name: 'AegDeliveryFailureLogs'
  properties: {
    totalRetentionInDays: 30
    plan: 'Analytics'
    schema: {
      name: 'AegDeliveryFailureLogs'
    }
    retentionInDays: 30
  }
}

resource workspaces_apim_lv_la_name_AegPublishFailureLogs 'Microsoft.OperationalInsights/workspaces/tables@2021-12-01-preview' = {
  parent: workspaces_apim_lv_la_name_resource
  name: 'AegPublishFailureLogs'
  properties: {
    totalRetentionInDays: 30
    plan: 'Analytics'
    schema: {
      name: 'AegPublishFailureLogs'
    }
    retentionInDays: 30
  }
}

resource workspaces_apim_lv_la_name_AEWAuditLogs 'Microsoft.OperationalInsights/workspaces/tables@2021-12-01-preview' = {
  parent: workspaces_apim_lv_la_name_resource
  name: 'AEWAuditLogs'
  properties: {
    totalRetentionInDays: 30
    plan: 'Analytics'
    schema: {
      name: 'AEWAuditLogs'
    }
    retentionInDays: 30
  }
}

resource workspaces_apim_lv_la_name_AEWComputePipelinesLogs 'Microsoft.OperationalInsights/workspaces/tables@2021-12-01-preview' = {
  parent: workspaces_apim_lv_la_name_resource
  name: 'AEWComputePipelinesLogs'
  properties: {
    totalRetentionInDays: 30
    plan: 'Analytics'
    schema: {
      name: 'AEWComputePipelinesLogs'
    }
    retentionInDays: 30
  }
}

resource workspaces_apim_lv_la_name_AgriFoodApplicationAuditLogs 'Microsoft.OperationalInsights/workspaces/tables@2021-12-01-preview' = {
  parent: workspaces_apim_lv_la_name_resource
  name: 'AgriFoodApplicationAuditLogs'
  properties: {
    totalRetentionInDays: 30
    plan: 'Analytics'
    schema: {
      name: 'AgriFoodApplicationAuditLogs'
    }
    retentionInDays: 30
  }
}

resource workspaces_apim_lv_la_name_AgriFoodFarmManagementLogs 'Microsoft.OperationalInsights/workspaces/tables@2021-12-01-preview' = {
  parent: workspaces_apim_lv_la_name_resource
  name: 'AgriFoodFarmManagementLogs'
  properties: {
    totalRetentionInDays: 30
    plan: 'Analytics'
    schema: {
      name: 'AgriFoodFarmManagementLogs'
    }
    retentionInDays: 30
  }
}

resource workspaces_apim_lv_la_name_AgriFoodFarmOperationLogs 'Microsoft.OperationalInsights/workspaces/tables@2021-12-01-preview' = {
  parent: workspaces_apim_lv_la_name_resource
  name: 'AgriFoodFarmOperationLogs'
  properties: {
    totalRetentionInDays: 30
    plan: 'Analytics'
    schema: {
      name: 'AgriFoodFarmOperationLogs'
    }
    retentionInDays: 30
  }
}

resource workspaces_apim_lv_la_name_AgriFoodInsightLogs 'Microsoft.OperationalInsights/workspaces/tables@2021-12-01-preview' = {
  parent: workspaces_apim_lv_la_name_resource
  name: 'AgriFoodInsightLogs'
  properties: {
    totalRetentionInDays: 30
    plan: 'Analytics'
    schema: {
      name: 'AgriFoodInsightLogs'
    }
    retentionInDays: 30
  }
}

resource workspaces_apim_lv_la_name_AgriFoodJobProcessedLogs 'Microsoft.OperationalInsights/workspaces/tables@2021-12-01-preview' = {
  parent: workspaces_apim_lv_la_name_resource
  name: 'AgriFoodJobProcessedLogs'
  properties: {
    totalRetentionInDays: 30
    plan: 'Analytics'
    schema: {
      name: 'AgriFoodJobProcessedLogs'
    }
    retentionInDays: 30
  }
}

resource workspaces_apim_lv_la_name_AgriFoodModelInferenceLogs 'Microsoft.OperationalInsights/workspaces/tables@2021-12-01-preview' = {
  parent: workspaces_apim_lv_la_name_resource
  name: 'AgriFoodModelInferenceLogs'
  properties: {
    totalRetentionInDays: 30
    plan: 'Analytics'
    schema: {
      name: 'AgriFoodModelInferenceLogs'
    }
    retentionInDays: 30
  }
}

resource workspaces_apim_lv_la_name_AgriFoodProviderAuthLogs 'Microsoft.OperationalInsights/workspaces/tables@2021-12-01-preview' = {
  parent: workspaces_apim_lv_la_name_resource
  name: 'AgriFoodProviderAuthLogs'
  properties: {
    totalRetentionInDays: 30
    plan: 'Analytics'
    schema: {
      name: 'AgriFoodProviderAuthLogs'
    }
    retentionInDays: 30
  }
}

resource workspaces_apim_lv_la_name_AgriFoodSatelliteLogs 'Microsoft.OperationalInsights/workspaces/tables@2021-12-01-preview' = {
  parent: workspaces_apim_lv_la_name_resource
  name: 'AgriFoodSatelliteLogs'
  properties: {
    totalRetentionInDays: 30
    plan: 'Analytics'
    schema: {
      name: 'AgriFoodSatelliteLogs'
    }
    retentionInDays: 30
  }
}

resource workspaces_apim_lv_la_name_AgriFoodWeatherLogs 'Microsoft.OperationalInsights/workspaces/tables@2021-12-01-preview' = {
  parent: workspaces_apim_lv_la_name_resource
  name: 'AgriFoodWeatherLogs'
  properties: {
    totalRetentionInDays: 30
    plan: 'Analytics'
    schema: {
      name: 'AgriFoodWeatherLogs'
    }
    retentionInDays: 30
  }
}

resource workspaces_apim_lv_la_name_AGSGrafanaLoginEvents 'Microsoft.OperationalInsights/workspaces/tables@2021-12-01-preview' = {
  parent: workspaces_apim_lv_la_name_resource
  name: 'AGSGrafanaLoginEvents'
  properties: {
    totalRetentionInDays: 30
    plan: 'Analytics'
    schema: {
      name: 'AGSGrafanaLoginEvents'
    }
    retentionInDays: 30
  }
}

resource workspaces_apim_lv_la_name_AirflowDagProcessingLogs 'Microsoft.OperationalInsights/workspaces/tables@2021-12-01-preview' = {
  parent: workspaces_apim_lv_la_name_resource
  name: 'AirflowDagProcessingLogs'
  properties: {
    totalRetentionInDays: 30
    plan: 'Analytics'
    schema: {
      name: 'AirflowDagProcessingLogs'
    }
    retentionInDays: 30
  }
}

resource workspaces_apim_lv_la_name_Alert 'Microsoft.OperationalInsights/workspaces/tables@2021-12-01-preview' = {
  parent: workspaces_apim_lv_la_name_resource
  name: 'Alert'
  properties: {
    totalRetentionInDays: 30
    plan: 'Analytics'
    schema: {
      name: 'Alert'
    }
    retentionInDays: 30
  }
}

resource workspaces_apim_lv_la_name_AlertEvidence 'Microsoft.OperationalInsights/workspaces/tables@2021-12-01-preview' = {
  parent: workspaces_apim_lv_la_name_resource
  name: 'AlertEvidence'
  properties: {
    totalRetentionInDays: 30
    plan: 'Analytics'
    schema: {
      name: 'AlertEvidence'
    }
    retentionInDays: 30
  }
}

resource workspaces_apim_lv_la_name_AlertInfo 'Microsoft.OperationalInsights/workspaces/tables@2021-12-01-preview' = {
  parent: workspaces_apim_lv_la_name_resource
  name: 'AlertInfo'
  properties: {
    totalRetentionInDays: 30
    plan: 'Analytics'
    schema: {
      name: 'AlertInfo'
    }
    retentionInDays: 30
  }
}

resource workspaces_apim_lv_la_name_AmlComputeClusterEvent 'Microsoft.OperationalInsights/workspaces/tables@2021-12-01-preview' = {
  parent: workspaces_apim_lv_la_name_resource
  name: 'AmlComputeClusterEvent'
  properties: {
    totalRetentionInDays: 30
    plan: 'Analytics'
    schema: {
      name: 'AmlComputeClusterEvent'
    }
    retentionInDays: 30
  }
}

resource workspaces_apim_lv_la_name_AmlComputeClusterNodeEvent 'Microsoft.OperationalInsights/workspaces/tables@2021-12-01-preview' = {
  parent: workspaces_apim_lv_la_name_resource
  name: 'AmlComputeClusterNodeEvent'
  properties: {
    totalRetentionInDays: 30
    plan: 'Analytics'
    schema: {
      name: 'AmlComputeClusterNodeEvent'
    }
    retentionInDays: 30
  }
}

resource workspaces_apim_lv_la_name_AmlComputeCpuGpuUtilization 'Microsoft.OperationalInsights/workspaces/tables@2021-12-01-preview' = {
  parent: workspaces_apim_lv_la_name_resource
  name: 'AmlComputeCpuGpuUtilization'
  properties: {
    totalRetentionInDays: 30
    plan: 'Analytics'
    schema: {
      name: 'AmlComputeCpuGpuUtilization'
    }
    retentionInDays: 30
  }
}

resource workspaces_apim_lv_la_name_AmlComputeInstanceEvent 'Microsoft.OperationalInsights/workspaces/tables@2021-12-01-preview' = {
  parent: workspaces_apim_lv_la_name_resource
  name: 'AmlComputeInstanceEvent'
  properties: {
    totalRetentionInDays: 30
    plan: 'Analytics'
    schema: {
      name: 'AmlComputeInstanceEvent'
    }
    retentionInDays: 30
  }
}

resource workspaces_apim_lv_la_name_AmlComputeJobEvent 'Microsoft.OperationalInsights/workspaces/tables@2021-12-01-preview' = {
  parent: workspaces_apim_lv_la_name_resource
  name: 'AmlComputeJobEvent'
  properties: {
    totalRetentionInDays: 30
    plan: 'Analytics'
    schema: {
      name: 'AmlComputeJobEvent'
    }
    retentionInDays: 30
  }
}

resource workspaces_apim_lv_la_name_AmlDataLabelEvent 'Microsoft.OperationalInsights/workspaces/tables@2021-12-01-preview' = {
  parent: workspaces_apim_lv_la_name_resource
  name: 'AmlDataLabelEvent'
  properties: {
    totalRetentionInDays: 30
    plan: 'Analytics'
    schema: {
      name: 'AmlDataLabelEvent'
    }
    retentionInDays: 30
  }
}

resource workspaces_apim_lv_la_name_AmlDataSetEvent 'Microsoft.OperationalInsights/workspaces/tables@2021-12-01-preview' = {
  parent: workspaces_apim_lv_la_name_resource
  name: 'AmlDataSetEvent'
  properties: {
    totalRetentionInDays: 30
    plan: 'Analytics'
    schema: {
      name: 'AmlDataSetEvent'
    }
    retentionInDays: 30
  }
}

resource workspaces_apim_lv_la_name_AmlDataStoreEvent 'Microsoft.OperationalInsights/workspaces/tables@2021-12-01-preview' = {
  parent: workspaces_apim_lv_la_name_resource
  name: 'AmlDataStoreEvent'
  properties: {
    totalRetentionInDays: 30
    plan: 'Analytics'
    schema: {
      name: 'AmlDataStoreEvent'
    }
    retentionInDays: 30
  }
}

resource workspaces_apim_lv_la_name_AmlDeploymentEvent 'Microsoft.OperationalInsights/workspaces/tables@2021-12-01-preview' = {
  parent: workspaces_apim_lv_la_name_resource
  name: 'AmlDeploymentEvent'
  properties: {
    totalRetentionInDays: 30
    plan: 'Analytics'
    schema: {
      name: 'AmlDeploymentEvent'
    }
    retentionInDays: 30
  }
}

resource workspaces_apim_lv_la_name_AmlEnvironmentEvent 'Microsoft.OperationalInsights/workspaces/tables@2021-12-01-preview' = {
  parent: workspaces_apim_lv_la_name_resource
  name: 'AmlEnvironmentEvent'
  properties: {
    totalRetentionInDays: 30
    plan: 'Analytics'
    schema: {
      name: 'AmlEnvironmentEvent'
    }
    retentionInDays: 30
  }
}

resource workspaces_apim_lv_la_name_AmlInferencingEvent 'Microsoft.OperationalInsights/workspaces/tables@2021-12-01-preview' = {
  parent: workspaces_apim_lv_la_name_resource
  name: 'AmlInferencingEvent'
  properties: {
    totalRetentionInDays: 30
    plan: 'Analytics'
    schema: {
      name: 'AmlInferencingEvent'
    }
    retentionInDays: 30
  }
}

resource workspaces_apim_lv_la_name_AmlModelsEvent 'Microsoft.OperationalInsights/workspaces/tables@2021-12-01-preview' = {
  parent: workspaces_apim_lv_la_name_resource
  name: 'AmlModelsEvent'
  properties: {
    totalRetentionInDays: 30
    plan: 'Analytics'
    schema: {
      name: 'AmlModelsEvent'
    }
    retentionInDays: 30
  }
}

resource workspaces_apim_lv_la_name_AmlOnlineEndpointConsoleLog 'Microsoft.OperationalInsights/workspaces/tables@2021-12-01-preview' = {
  parent: workspaces_apim_lv_la_name_resource
  name: 'AmlOnlineEndpointConsoleLog'
  properties: {
    totalRetentionInDays: 30
    plan: 'Analytics'
    schema: {
      name: 'AmlOnlineEndpointConsoleLog'
    }
    retentionInDays: 30
  }
}

resource workspaces_apim_lv_la_name_AmlOnlineEndpointEventLog 'Microsoft.OperationalInsights/workspaces/tables@2021-12-01-preview' = {
  parent: workspaces_apim_lv_la_name_resource
  name: 'AmlOnlineEndpointEventLog'
  properties: {
    totalRetentionInDays: 30
    plan: 'Analytics'
    schema: {
      name: 'AmlOnlineEndpointEventLog'
    }
    retentionInDays: 30
  }
}

resource workspaces_apim_lv_la_name_AmlOnlineEndpointTrafficLog 'Microsoft.OperationalInsights/workspaces/tables@2021-12-01-preview' = {
  parent: workspaces_apim_lv_la_name_resource
  name: 'AmlOnlineEndpointTrafficLog'
  properties: {
    totalRetentionInDays: 30
    plan: 'Analytics'
    schema: {
      name: 'AmlOnlineEndpointTrafficLog'
    }
    retentionInDays: 30
  }
}

resource workspaces_apim_lv_la_name_AmlPipelineEvent 'Microsoft.OperationalInsights/workspaces/tables@2021-12-01-preview' = {
  parent: workspaces_apim_lv_la_name_resource
  name: 'AmlPipelineEvent'
  properties: {
    totalRetentionInDays: 30
    plan: 'Analytics'
    schema: {
      name: 'AmlPipelineEvent'
    }
    retentionInDays: 30
  }
}

resource workspaces_apim_lv_la_name_AmlRunEvent 'Microsoft.OperationalInsights/workspaces/tables@2021-12-01-preview' = {
  parent: workspaces_apim_lv_la_name_resource
  name: 'AmlRunEvent'
  properties: {
    totalRetentionInDays: 30
    plan: 'Analytics'
    schema: {
      name: 'AmlRunEvent'
    }
    retentionInDays: 30
  }
}

resource workspaces_apim_lv_la_name_AmlRunStatusChangedEvent 'Microsoft.OperationalInsights/workspaces/tables@2021-12-01-preview' = {
  parent: workspaces_apim_lv_la_name_resource
  name: 'AmlRunStatusChangedEvent'
  properties: {
    totalRetentionInDays: 30
    plan: 'Analytics'
    schema: {
      name: 'AmlRunStatusChangedEvent'
    }
    retentionInDays: 30
  }
}

resource workspaces_apim_lv_la_name_Anomalies 'Microsoft.OperationalInsights/workspaces/tables@2021-12-01-preview' = {
  parent: workspaces_apim_lv_la_name_resource
  name: 'Anomalies'
  properties: {
    totalRetentionInDays: 30
    plan: 'Analytics'
    schema: {
      name: 'Anomalies'
    }
    retentionInDays: 30
  }
}

resource workspaces_apim_lv_la_name_ApiManagementGatewayLogs 'Microsoft.OperationalInsights/workspaces/tables@2021-12-01-preview' = {
  parent: workspaces_apim_lv_la_name_resource
  name: 'ApiManagementGatewayLogs'
  properties: {
    totalRetentionInDays: 30
    plan: 'Analytics'
    schema: {
      name: 'ApiManagementGatewayLogs'
    }
    retentionInDays: 30
  }
}

resource workspaces_apim_lv_la_name_AppAvailabilityResults 'Microsoft.OperationalInsights/workspaces/tables@2021-12-01-preview' = {
  parent: workspaces_apim_lv_la_name_resource
  name: 'AppAvailabilityResults'
  properties: {
    totalRetentionInDays: 90
    plan: 'Analytics'
    schema: {
      name: 'AppAvailabilityResults'
    }
    retentionInDays: 90
  }
}

resource workspaces_apim_lv_la_name_AppBrowserTimings 'Microsoft.OperationalInsights/workspaces/tables@2021-12-01-preview' = {
  parent: workspaces_apim_lv_la_name_resource
  name: 'AppBrowserTimings'
  properties: {
    totalRetentionInDays: 90
    plan: 'Analytics'
    schema: {
      name: 'AppBrowserTimings'
    }
    retentionInDays: 90
  }
}

resource workspaces_apim_lv_la_name_AppCenterError 'Microsoft.OperationalInsights/workspaces/tables@2021-12-01-preview' = {
  parent: workspaces_apim_lv_la_name_resource
  name: 'AppCenterError'
  properties: {
    totalRetentionInDays: 30
    plan: 'Analytics'
    schema: {
      name: 'AppCenterError'
    }
    retentionInDays: 30
  }
}

resource workspaces_apim_lv_la_name_AppDependencies 'Microsoft.OperationalInsights/workspaces/tables@2021-12-01-preview' = {
  parent: workspaces_apim_lv_la_name_resource
  name: 'AppDependencies'
  properties: {
    totalRetentionInDays: 90
    plan: 'Analytics'
    schema: {
      name: 'AppDependencies'
    }
    retentionInDays: 90
  }
}

resource workspaces_apim_lv_la_name_AppEvents 'Microsoft.OperationalInsights/workspaces/tables@2021-12-01-preview' = {
  parent: workspaces_apim_lv_la_name_resource
  name: 'AppEvents'
  properties: {
    totalRetentionInDays: 90
    plan: 'Analytics'
    schema: {
      name: 'AppEvents'
    }
    retentionInDays: 90
  }
}

resource workspaces_apim_lv_la_name_AppExceptions 'Microsoft.OperationalInsights/workspaces/tables@2021-12-01-preview' = {
  parent: workspaces_apim_lv_la_name_resource
  name: 'AppExceptions'
  properties: {
    totalRetentionInDays: 90
    plan: 'Analytics'
    schema: {
      name: 'AppExceptions'
    }
    retentionInDays: 90
  }
}

resource workspaces_apim_lv_la_name_AppMetrics 'Microsoft.OperationalInsights/workspaces/tables@2021-12-01-preview' = {
  parent: workspaces_apim_lv_la_name_resource
  name: 'AppMetrics'
  properties: {
    totalRetentionInDays: 90
    plan: 'Analytics'
    schema: {
      name: 'AppMetrics'
    }
    retentionInDays: 90
  }
}

resource workspaces_apim_lv_la_name_AppPageViews 'Microsoft.OperationalInsights/workspaces/tables@2021-12-01-preview' = {
  parent: workspaces_apim_lv_la_name_resource
  name: 'AppPageViews'
  properties: {
    totalRetentionInDays: 90
    plan: 'Analytics'
    schema: {
      name: 'AppPageViews'
    }
    retentionInDays: 90
  }
}

resource workspaces_apim_lv_la_name_AppPerformanceCounters 'Microsoft.OperationalInsights/workspaces/tables@2021-12-01-preview' = {
  parent: workspaces_apim_lv_la_name_resource
  name: 'AppPerformanceCounters'
  properties: {
    totalRetentionInDays: 90
    plan: 'Analytics'
    schema: {
      name: 'AppPerformanceCounters'
    }
    retentionInDays: 90
  }
}

resource workspaces_apim_lv_la_name_AppPlatformBuildLogs 'Microsoft.OperationalInsights/workspaces/tables@2021-12-01-preview' = {
  parent: workspaces_apim_lv_la_name_resource
  name: 'AppPlatformBuildLogs'
  properties: {
    totalRetentionInDays: 30
    plan: 'Analytics'
    schema: {
      name: 'AppPlatformBuildLogs'
    }
    retentionInDays: 30
  }
}

resource workspaces_apim_lv_la_name_AppPlatformContainerEventLogs 'Microsoft.OperationalInsights/workspaces/tables@2021-12-01-preview' = {
  parent: workspaces_apim_lv_la_name_resource
  name: 'AppPlatformContainerEventLogs'
  properties: {
    totalRetentionInDays: 30
    plan: 'Analytics'
    schema: {
      name: 'AppPlatformContainerEventLogs'
    }
    retentionInDays: 30
  }
}

resource workspaces_apim_lv_la_name_AppPlatformIngressLogs 'Microsoft.OperationalInsights/workspaces/tables@2021-12-01-preview' = {
  parent: workspaces_apim_lv_la_name_resource
  name: 'AppPlatformIngressLogs'
  properties: {
    totalRetentionInDays: 30
    plan: 'Analytics'
    schema: {
      name: 'AppPlatformIngressLogs'
    }
    retentionInDays: 30
  }
}

resource workspaces_apim_lv_la_name_AppPlatformLogsforSpring 'Microsoft.OperationalInsights/workspaces/tables@2021-12-01-preview' = {
  parent: workspaces_apim_lv_la_name_resource
  name: 'AppPlatformLogsforSpring'
  properties: {
    totalRetentionInDays: 30
    plan: 'Analytics'
    schema: {
      name: 'AppPlatformLogsforSpring'
    }
    retentionInDays: 30
  }
}

resource workspaces_apim_lv_la_name_AppPlatformSystemLogs 'Microsoft.OperationalInsights/workspaces/tables@2021-12-01-preview' = {
  parent: workspaces_apim_lv_la_name_resource
  name: 'AppPlatformSystemLogs'
  properties: {
    totalRetentionInDays: 30
    plan: 'Analytics'
    schema: {
      name: 'AppPlatformSystemLogs'
    }
    retentionInDays: 30
  }
}

resource workspaces_apim_lv_la_name_AppRequests 'Microsoft.OperationalInsights/workspaces/tables@2021-12-01-preview' = {
  parent: workspaces_apim_lv_la_name_resource
  name: 'AppRequests'
  properties: {
    totalRetentionInDays: 90
    plan: 'Analytics'
    schema: {
      name: 'AppRequests'
    }
    retentionInDays: 90
  }
}

resource workspaces_apim_lv_la_name_AppServiceAntivirusScanAuditLogs 'Microsoft.OperationalInsights/workspaces/tables@2021-12-01-preview' = {
  parent: workspaces_apim_lv_la_name_resource
  name: 'AppServiceAntivirusScanAuditLogs'
  properties: {
    totalRetentionInDays: 30
    plan: 'Analytics'
    schema: {
      name: 'AppServiceAntivirusScanAuditLogs'
    }
    retentionInDays: 30
  }
}

resource workspaces_apim_lv_la_name_AppServiceAppLogs 'Microsoft.OperationalInsights/workspaces/tables@2021-12-01-preview' = {
  parent: workspaces_apim_lv_la_name_resource
  name: 'AppServiceAppLogs'
  properties: {
    totalRetentionInDays: 30
    plan: 'Analytics'
    schema: {
      name: 'AppServiceAppLogs'
    }
    retentionInDays: 30
  }
}

resource workspaces_apim_lv_la_name_AppServiceAuditLogs 'Microsoft.OperationalInsights/workspaces/tables@2021-12-01-preview' = {
  parent: workspaces_apim_lv_la_name_resource
  name: 'AppServiceAuditLogs'
  properties: {
    totalRetentionInDays: 30
    plan: 'Analytics'
    schema: {
      name: 'AppServiceAuditLogs'
    }
    retentionInDays: 30
  }
}

resource workspaces_apim_lv_la_name_AppServiceConsoleLogs 'Microsoft.OperationalInsights/workspaces/tables@2021-12-01-preview' = {
  parent: workspaces_apim_lv_la_name_resource
  name: 'AppServiceConsoleLogs'
  properties: {
    totalRetentionInDays: 30
    plan: 'Analytics'
    schema: {
      name: 'AppServiceConsoleLogs'
    }
    retentionInDays: 30
  }
}

resource workspaces_apim_lv_la_name_AppServiceEnvironmentPlatformLogs 'Microsoft.OperationalInsights/workspaces/tables@2021-12-01-preview' = {
  parent: workspaces_apim_lv_la_name_resource
  name: 'AppServiceEnvironmentPlatformLogs'
  properties: {
    totalRetentionInDays: 30
    plan: 'Analytics'
    schema: {
      name: 'AppServiceEnvironmentPlatformLogs'
    }
    retentionInDays: 30
  }
}

resource workspaces_apim_lv_la_name_AppServiceFileAuditLogs 'Microsoft.OperationalInsights/workspaces/tables@2021-12-01-preview' = {
  parent: workspaces_apim_lv_la_name_resource
  name: 'AppServiceFileAuditLogs'
  properties: {
    totalRetentionInDays: 30
    plan: 'Analytics'
    schema: {
      name: 'AppServiceFileAuditLogs'
    }
    retentionInDays: 30
  }
}

resource workspaces_apim_lv_la_name_AppServiceHTTPLogs 'Microsoft.OperationalInsights/workspaces/tables@2021-12-01-preview' = {
  parent: workspaces_apim_lv_la_name_resource
  name: 'AppServiceHTTPLogs'
  properties: {
    totalRetentionInDays: 30
    plan: 'Analytics'
    schema: {
      name: 'AppServiceHTTPLogs'
    }
    retentionInDays: 30
  }
}

resource workspaces_apim_lv_la_name_AppServiceIPSecAuditLogs 'Microsoft.OperationalInsights/workspaces/tables@2021-12-01-preview' = {
  parent: workspaces_apim_lv_la_name_resource
  name: 'AppServiceIPSecAuditLogs'
  properties: {
    totalRetentionInDays: 30
    plan: 'Analytics'
    schema: {
      name: 'AppServiceIPSecAuditLogs'
    }
    retentionInDays: 30
  }
}

resource workspaces_apim_lv_la_name_AppServicePlatformLogs 'Microsoft.OperationalInsights/workspaces/tables@2021-12-01-preview' = {
  parent: workspaces_apim_lv_la_name_resource
  name: 'AppServicePlatformLogs'
  properties: {
    totalRetentionInDays: 30
    plan: 'Analytics'
    schema: {
      name: 'AppServicePlatformLogs'
    }
    retentionInDays: 30
  }
}

resource workspaces_apim_lv_la_name_AppSystemEvents 'Microsoft.OperationalInsights/workspaces/tables@2021-12-01-preview' = {
  parent: workspaces_apim_lv_la_name_resource
  name: 'AppSystemEvents'
  properties: {
    totalRetentionInDays: 90
    plan: 'Analytics'
    schema: {
      name: 'AppSystemEvents'
    }
    retentionInDays: 90
  }
}

resource workspaces_apim_lv_la_name_AppTraces 'Microsoft.OperationalInsights/workspaces/tables@2021-12-01-preview' = {
  parent: workspaces_apim_lv_la_name_resource
  name: 'AppTraces'
  properties: {
    totalRetentionInDays: 90
    plan: 'Analytics'
    schema: {
      name: 'AppTraces'
    }
    retentionInDays: 90
  }
}

resource workspaces_apim_lv_la_name_ASimDnsActivityLogs 'Microsoft.OperationalInsights/workspaces/tables@2021-12-01-preview' = {
  parent: workspaces_apim_lv_la_name_resource
  name: 'ASimDnsActivityLogs'
  properties: {
    totalRetentionInDays: 30
    plan: 'Analytics'
    schema: {
      name: 'ASimDnsActivityLogs'
    }
    retentionInDays: 30
  }
}

resource workspaces_apim_lv_la_name_AuditLogs 'Microsoft.OperationalInsights/workspaces/tables@2021-12-01-preview' = {
  parent: workspaces_apim_lv_la_name_resource
  name: 'AuditLogs'
  properties: {
    totalRetentionInDays: 30
    plan: 'Analytics'
    schema: {
      name: 'AuditLogs'
    }
    retentionInDays: 30
  }
}

resource workspaces_apim_lv_la_name_AUIEventsAudit 'Microsoft.OperationalInsights/workspaces/tables@2021-12-01-preview' = {
  parent: workspaces_apim_lv_la_name_resource
  name: 'AUIEventsAudit'
  properties: {
    totalRetentionInDays: 30
    plan: 'Analytics'
    schema: {
      name: 'AUIEventsAudit'
    }
    retentionInDays: 30
  }
}

resource workspaces_apim_lv_la_name_AUIEventsOperational 'Microsoft.OperationalInsights/workspaces/tables@2021-12-01-preview' = {
  parent: workspaces_apim_lv_la_name_resource
  name: 'AUIEventsOperational'
  properties: {
    totalRetentionInDays: 30
    plan: 'Analytics'
    schema: {
      name: 'AUIEventsOperational'
    }
    retentionInDays: 30
  }
}

resource workspaces_apim_lv_la_name_AutoscaleEvaluationsLog 'Microsoft.OperationalInsights/workspaces/tables@2021-12-01-preview' = {
  parent: workspaces_apim_lv_la_name_resource
  name: 'AutoscaleEvaluationsLog'
  properties: {
    totalRetentionInDays: 30
    plan: 'Analytics'
    schema: {
      name: 'AutoscaleEvaluationsLog'
    }
    retentionInDays: 30
  }
}

resource workspaces_apim_lv_la_name_AutoscaleScaleActionsLog 'Microsoft.OperationalInsights/workspaces/tables@2021-12-01-preview' = {
  parent: workspaces_apim_lv_la_name_resource
  name: 'AutoscaleScaleActionsLog'
  properties: {
    totalRetentionInDays: 30
    plan: 'Analytics'
    schema: {
      name: 'AutoscaleScaleActionsLog'
    }
    retentionInDays: 30
  }
}

resource workspaces_apim_lv_la_name_AWSCloudTrail 'Microsoft.OperationalInsights/workspaces/tables@2021-12-01-preview' = {
  parent: workspaces_apim_lv_la_name_resource
  name: 'AWSCloudTrail'
  properties: {
    totalRetentionInDays: 30
    plan: 'Analytics'
    schema: {
      name: 'AWSCloudTrail'
    }
    retentionInDays: 30
  }
}

resource workspaces_apim_lv_la_name_AWSGuardDuty 'Microsoft.OperationalInsights/workspaces/tables@2021-12-01-preview' = {
  parent: workspaces_apim_lv_la_name_resource
  name: 'AWSGuardDuty'
  properties: {
    totalRetentionInDays: 30
    plan: 'Analytics'
    schema: {
      name: 'AWSGuardDuty'
    }
    retentionInDays: 30
  }
}

resource workspaces_apim_lv_la_name_AWSVPCFlow 'Microsoft.OperationalInsights/workspaces/tables@2021-12-01-preview' = {
  parent: workspaces_apim_lv_la_name_resource
  name: 'AWSVPCFlow'
  properties: {
    totalRetentionInDays: 30
    plan: 'Analytics'
    schema: {
      name: 'AWSVPCFlow'
    }
    retentionInDays: 30
  }
}

resource workspaces_apim_lv_la_name_AZFWApplicationRule 'Microsoft.OperationalInsights/workspaces/tables@2021-12-01-preview' = {
  parent: workspaces_apim_lv_la_name_resource
  name: 'AZFWApplicationRule'
  properties: {
    totalRetentionInDays: 30
    plan: 'Analytics'
    schema: {
      name: 'AZFWApplicationRule'
    }
    retentionInDays: 30
  }
}

resource workspaces_apim_lv_la_name_AZFWApplicationRuleAggregation 'Microsoft.OperationalInsights/workspaces/tables@2021-12-01-preview' = {
  parent: workspaces_apim_lv_la_name_resource
  name: 'AZFWApplicationRuleAggregation'
  properties: {
    totalRetentionInDays: 30
    plan: 'Analytics'
    schema: {
      name: 'AZFWApplicationRuleAggregation'
    }
    retentionInDays: 30
  }
}

resource workspaces_apim_lv_la_name_AZFWDnsQuery 'Microsoft.OperationalInsights/workspaces/tables@2021-12-01-preview' = {
  parent: workspaces_apim_lv_la_name_resource
  name: 'AZFWDnsQuery'
  properties: {
    totalRetentionInDays: 30
    plan: 'Analytics'
    schema: {
      name: 'AZFWDnsQuery'
    }
    retentionInDays: 30
  }
}

resource workspaces_apim_lv_la_name_AZFWIdpsSignature 'Microsoft.OperationalInsights/workspaces/tables@2021-12-01-preview' = {
  parent: workspaces_apim_lv_la_name_resource
  name: 'AZFWIdpsSignature'
  properties: {
    totalRetentionInDays: 30
    plan: 'Analytics'
    schema: {
      name: 'AZFWIdpsSignature'
    }
    retentionInDays: 30
  }
}

resource workspaces_apim_lv_la_name_AZFWInternalFqdnResolutionFailure 'Microsoft.OperationalInsights/workspaces/tables@2021-12-01-preview' = {
  parent: workspaces_apim_lv_la_name_resource
  name: 'AZFWInternalFqdnResolutionFailure'
  properties: {
    totalRetentionInDays: 30
    plan: 'Analytics'
    schema: {
      name: 'AZFWInternalFqdnResolutionFailure'
    }
    retentionInDays: 30
  }
}

resource workspaces_apim_lv_la_name_AZFWNatRule 'Microsoft.OperationalInsights/workspaces/tables@2021-12-01-preview' = {
  parent: workspaces_apim_lv_la_name_resource
  name: 'AZFWNatRule'
  properties: {
    totalRetentionInDays: 30
    plan: 'Analytics'
    schema: {
      name: 'AZFWNatRule'
    }
    retentionInDays: 30
  }
}

resource workspaces_apim_lv_la_name_AZFWNatRuleAggregation 'Microsoft.OperationalInsights/workspaces/tables@2021-12-01-preview' = {
  parent: workspaces_apim_lv_la_name_resource
  name: 'AZFWNatRuleAggregation'
  properties: {
    totalRetentionInDays: 30
    plan: 'Analytics'
    schema: {
      name: 'AZFWNatRuleAggregation'
    }
    retentionInDays: 30
  }
}

resource workspaces_apim_lv_la_name_AZFWNetworkRule 'Microsoft.OperationalInsights/workspaces/tables@2021-12-01-preview' = {
  parent: workspaces_apim_lv_la_name_resource
  name: 'AZFWNetworkRule'
  properties: {
    totalRetentionInDays: 30
    plan: 'Analytics'
    schema: {
      name: 'AZFWNetworkRule'
    }
    retentionInDays: 30
  }
}

resource workspaces_apim_lv_la_name_AZFWNetworkRuleAggregation 'Microsoft.OperationalInsights/workspaces/tables@2021-12-01-preview' = {
  parent: workspaces_apim_lv_la_name_resource
  name: 'AZFWNetworkRuleAggregation'
  properties: {
    totalRetentionInDays: 30
    plan: 'Analytics'
    schema: {
      name: 'AZFWNetworkRuleAggregation'
    }
    retentionInDays: 30
  }
}

resource workspaces_apim_lv_la_name_AZFWThreatIntel 'Microsoft.OperationalInsights/workspaces/tables@2021-12-01-preview' = {
  parent: workspaces_apim_lv_la_name_resource
  name: 'AZFWThreatIntel'
  properties: {
    totalRetentionInDays: 30
    plan: 'Analytics'
    schema: {
      name: 'AZFWThreatIntel'
    }
    retentionInDays: 30
  }
}

resource workspaces_apim_lv_la_name_AzureActivity 'Microsoft.OperationalInsights/workspaces/tables@2021-12-01-preview' = {
  parent: workspaces_apim_lv_la_name_resource
  name: 'AzureActivity'
  properties: {
    totalRetentionInDays: 90
    plan: 'Analytics'
    schema: {
      name: 'AzureActivity'
    }
    retentionInDays: 90
  }
}

resource workspaces_apim_lv_la_name_AzureActivityV2 'Microsoft.OperationalInsights/workspaces/tables@2021-12-01-preview' = {
  parent: workspaces_apim_lv_la_name_resource
  name: 'AzureActivityV2'
  properties: {
    totalRetentionInDays: 30
    plan: 'Analytics'
    schema: {
      name: 'AzureActivityV2'
    }
    retentionInDays: 30
  }
}

resource workspaces_apim_lv_la_name_AzureAttestationDiagnostics 'Microsoft.OperationalInsights/workspaces/tables@2021-12-01-preview' = {
  parent: workspaces_apim_lv_la_name_resource
  name: 'AzureAttestationDiagnostics'
  properties: {
    totalRetentionInDays: 30
    plan: 'Analytics'
    schema: {
      name: 'AzureAttestationDiagnostics'
    }
    retentionInDays: 30
  }
}

resource workspaces_apim_lv_la_name_AzureDevOpsAuditing 'Microsoft.OperationalInsights/workspaces/tables@2021-12-01-preview' = {
  parent: workspaces_apim_lv_la_name_resource
  name: 'AzureDevOpsAuditing'
  properties: {
    totalRetentionInDays: 30
    plan: 'Analytics'
    schema: {
      name: 'AzureDevOpsAuditing'
    }
    retentionInDays: 30
  }
}

resource workspaces_apim_lv_la_name_AzureDiagnostics 'Microsoft.OperationalInsights/workspaces/tables@2021-12-01-preview' = {
  parent: workspaces_apim_lv_la_name_resource
  name: 'AzureDiagnostics'
  properties: {
    totalRetentionInDays: 30
    plan: 'Analytics'
    schema: {
      name: 'AzureDiagnostics'
      columns: [
        {
          name: 'DeploymentVersion_s'
          type: 'string'
        }
        {
          name: 'tokensTime_d'
          type: 'real'
        }
        {
          name: 'errors_s'
          type: 'string'
        }
        {
          name: 'cacheTime_d'
          type: 'real'
        }
        {
          name: 'lastError_path_s'
          type: 'string'
        }
        {
          name: 'productId_s'
          type: 'string'
        }
        {
          name: 'userId_s'
          type: 'string'
        }
        {
          name: 'lastError_elapsed_d'
          type: 'real'
        }
        {
          name: 'Level_d'
          type: 'real'
        }
        {
          name: 'isRequestSuccess_b'
          type: 'boolean'
        }
        {
          name: 'OperationName'
          type: 'string'
        }
        {
          name: 'Category'
          type: 'string'
        }
        {
          name: 'DurationMs'
          type: 'long'
        }
        {
          name: 'CallerIPAddress'
          type: 'string'
        }
        {
          name: 'CorrelationId'
          type: 'string'
        }
        {
          name: 'location_s'
          type: 'string'
        }
        {
          name: 'method_s'
          type: 'string'
        }
        {
          name: 'url_s'
          type: 'string'
        }
        {
          name: 'responseCode_d'
          type: 'real'
        }
        {
          name: 'responseSize_d'
          type: 'real'
        }
        {
          name: 'cache_s'
          type: 'string'
        }
        {
          name: 'apiId_s'
          type: 'string'
        }
        {
          name: 'clientProtocol_s'
          type: 'string'
        }
        {
          name: 'apiRevision_s'
          type: 'string'
        }
        {
          name: 'clientTlsVersion_s'
          type: 'string'
        }
        {
          name: 'lastError_source_s'
          type: 'string'
        }
        {
          name: 'lastError_reason_s'
          type: 'string'
        }
        {
          name: 'lastError_message_s'
          type: 'string'
        }
        {
          name: 'lastError_scope_s'
          type: 'string'
        }
        {
          name: 'lastError_section_s'
          type: 'string'
        }
        {
          name: 'ResourceId'
          type: 'string'
        }
        {
          name: 'internalProperties_s'
          type: 'string'
        }
        {
          name: 'SubscriptionId'
          type: 'guid'
        }
        {
          name: 'ResourceGroup'
          type: 'string'
        }
        {
          name: 'ResourceProvider'
          type: 'string'
        }
        {
          name: 'Resource'
          type: 'string'
        }
        {
          name: 'ResourceType'
          type: 'string'
        }
        {
          name: 'backendResponseCode_d'
          type: 'real'
        }
        {
          name: 'backendTime_d'
          type: 'real'
        }
        {
          name: 'requestSize_d'
          type: 'real'
        }
        {
          name: 'operationId_s'
          type: 'string'
        }
        {
          name: 'apimSubscriptionId_s'
          type: 'string'
        }
        {
          name: 'clientTime_d'
          type: 'real'
        }
        {
          name: 'backendProtocol_s'
          type: 'string'
        }
        {
          name: 'backendId_s'
          type: 'string'
        }
        {
          name: 'backendMethod_s'
          type: 'string'
        }
        {
          name: 'backendUrl_s'
          type: 'string'
        }
        {
          name: 'traceRecords_s'
          type: 'string'
        }
        {
          name: '_CustomFieldsCollection'
          type: 'dynamic'
        }
      ]
    }
    retentionInDays: 30
  }
}

resource workspaces_apim_lv_la_name_AzureLoadTestingOperation 'Microsoft.OperationalInsights/workspaces/tables@2021-12-01-preview' = {
  parent: workspaces_apim_lv_la_name_resource
  name: 'AzureLoadTestingOperation'
  properties: {
    totalRetentionInDays: 30
    plan: 'Analytics'
    schema: {
      name: 'AzureLoadTestingOperation'
    }
    retentionInDays: 30
  }
}

resource workspaces_apim_lv_la_name_AzureMetrics 'Microsoft.OperationalInsights/workspaces/tables@2021-12-01-preview' = {
  parent: workspaces_apim_lv_la_name_resource
  name: 'AzureMetrics'
  properties: {
    totalRetentionInDays: 30
    plan: 'Analytics'
    schema: {
      name: 'AzureMetrics'
    }
    retentionInDays: 30
  }
}

resource workspaces_apim_lv_la_name_BaiClusterEvent 'Microsoft.OperationalInsights/workspaces/tables@2021-12-01-preview' = {
  parent: workspaces_apim_lv_la_name_resource
  name: 'BaiClusterEvent'
  properties: {
    totalRetentionInDays: 30
    plan: 'Analytics'
    schema: {
      name: 'BaiClusterEvent'
    }
    retentionInDays: 30
  }
}

resource workspaces_apim_lv_la_name_BaiClusterNodeEvent 'Microsoft.OperationalInsights/workspaces/tables@2021-12-01-preview' = {
  parent: workspaces_apim_lv_la_name_resource
  name: 'BaiClusterNodeEvent'
  properties: {
    totalRetentionInDays: 30
    plan: 'Analytics'
    schema: {
      name: 'BaiClusterNodeEvent'
    }
    retentionInDays: 30
  }
}

resource workspaces_apim_lv_la_name_BaiJobEvent 'Microsoft.OperationalInsights/workspaces/tables@2021-12-01-preview' = {
  parent: workspaces_apim_lv_la_name_resource
  name: 'BaiJobEvent'
  properties: {
    totalRetentionInDays: 30
    plan: 'Analytics'
    schema: {
      name: 'BaiJobEvent'
    }
    retentionInDays: 30
  }
}

resource workspaces_apim_lv_la_name_CassandraAudit 'Microsoft.OperationalInsights/workspaces/tables@2021-12-01-preview' = {
  parent: workspaces_apim_lv_la_name_resource
  name: 'CassandraAudit'
  properties: {
    totalRetentionInDays: 30
    plan: 'Analytics'
    schema: {
      name: 'CassandraAudit'
    }
    retentionInDays: 30
  }
}

resource workspaces_apim_lv_la_name_CassandraLogs 'Microsoft.OperationalInsights/workspaces/tables@2021-12-01-preview' = {
  parent: workspaces_apim_lv_la_name_resource
  name: 'CassandraLogs'
  properties: {
    totalRetentionInDays: 30
    plan: 'Analytics'
    schema: {
      name: 'CassandraLogs'
    }
    retentionInDays: 30
  }
}

resource workspaces_apim_lv_la_name_CDBCassandraRequests 'Microsoft.OperationalInsights/workspaces/tables@2021-12-01-preview' = {
  parent: workspaces_apim_lv_la_name_resource
  name: 'CDBCassandraRequests'
  properties: {
    totalRetentionInDays: 30
    plan: 'Analytics'
    schema: {
      name: 'CDBCassandraRequests'
    }
    retentionInDays: 30
  }
}

resource workspaces_apim_lv_la_name_CDBControlPlaneRequests 'Microsoft.OperationalInsights/workspaces/tables@2021-12-01-preview' = {
  parent: workspaces_apim_lv_la_name_resource
  name: 'CDBControlPlaneRequests'
  properties: {
    totalRetentionInDays: 30
    plan: 'Analytics'
    schema: {
      name: 'CDBControlPlaneRequests'
    }
    retentionInDays: 30
  }
}

resource workspaces_apim_lv_la_name_CDBDataPlaneRequests 'Microsoft.OperationalInsights/workspaces/tables@2021-12-01-preview' = {
  parent: workspaces_apim_lv_la_name_resource
  name: 'CDBDataPlaneRequests'
  properties: {
    totalRetentionInDays: 30
    plan: 'Analytics'
    schema: {
      name: 'CDBDataPlaneRequests'
    }
    retentionInDays: 30
  }
}

resource workspaces_apim_lv_la_name_CDBGremlinRequests 'Microsoft.OperationalInsights/workspaces/tables@2021-12-01-preview' = {
  parent: workspaces_apim_lv_la_name_resource
  name: 'CDBGremlinRequests'
  properties: {
    totalRetentionInDays: 30
    plan: 'Analytics'
    schema: {
      name: 'CDBGremlinRequests'
    }
    retentionInDays: 30
  }
}

resource workspaces_apim_lv_la_name_CDBMongoRequests 'Microsoft.OperationalInsights/workspaces/tables@2021-12-01-preview' = {
  parent: workspaces_apim_lv_la_name_resource
  name: 'CDBMongoRequests'
  properties: {
    totalRetentionInDays: 30
    plan: 'Analytics'
    schema: {
      name: 'CDBMongoRequests'
    }
    retentionInDays: 30
  }
}

resource workspaces_apim_lv_la_name_CDBPartitionKeyRUConsumption 'Microsoft.OperationalInsights/workspaces/tables@2021-12-01-preview' = {
  parent: workspaces_apim_lv_la_name_resource
  name: 'CDBPartitionKeyRUConsumption'
  properties: {
    totalRetentionInDays: 30
    plan: 'Analytics'
    schema: {
      name: 'CDBPartitionKeyRUConsumption'
    }
    retentionInDays: 30
  }
}

resource workspaces_apim_lv_la_name_CDBPartitionKeyStatistics 'Microsoft.OperationalInsights/workspaces/tables@2021-12-01-preview' = {
  parent: workspaces_apim_lv_la_name_resource
  name: 'CDBPartitionKeyStatistics'
  properties: {
    totalRetentionInDays: 30
    plan: 'Analytics'
    schema: {
      name: 'CDBPartitionKeyStatistics'
    }
    retentionInDays: 30
  }
}

resource workspaces_apim_lv_la_name_CDBQueryRuntimeStatistics 'Microsoft.OperationalInsights/workspaces/tables@2021-12-01-preview' = {
  parent: workspaces_apim_lv_la_name_resource
  name: 'CDBQueryRuntimeStatistics'
  properties: {
    totalRetentionInDays: 30
    plan: 'Analytics'
    schema: {
      name: 'CDBQueryRuntimeStatistics'
    }
    retentionInDays: 30
  }
}

resource workspaces_apim_lv_la_name_CIEventsAudit 'Microsoft.OperationalInsights/workspaces/tables@2021-12-01-preview' = {
  parent: workspaces_apim_lv_la_name_resource
  name: 'CIEventsAudit'
  properties: {
    totalRetentionInDays: 30
    plan: 'Analytics'
    schema: {
      name: 'CIEventsAudit'
    }
    retentionInDays: 30
  }
}

resource workspaces_apim_lv_la_name_CIEventsOperational 'Microsoft.OperationalInsights/workspaces/tables@2021-12-01-preview' = {
  parent: workspaces_apim_lv_la_name_resource
  name: 'CIEventsOperational'
  properties: {
    totalRetentionInDays: 30
    plan: 'Analytics'
    schema: {
      name: 'CIEventsOperational'
    }
    retentionInDays: 30
  }
}

resource workspaces_apim_lv_la_name_CloudAppEvents 'Microsoft.OperationalInsights/workspaces/tables@2021-12-01-preview' = {
  parent: workspaces_apim_lv_la_name_resource
  name: 'CloudAppEvents'
  properties: {
    totalRetentionInDays: 30
    plan: 'Analytics'
    schema: {
      name: 'CloudAppEvents'
    }
    retentionInDays: 30
  }
}

resource workspaces_apim_lv_la_name_CommonSecurityLog 'Microsoft.OperationalInsights/workspaces/tables@2021-12-01-preview' = {
  parent: workspaces_apim_lv_la_name_resource
  name: 'CommonSecurityLog'
  properties: {
    totalRetentionInDays: 30
    plan: 'Analytics'
    schema: {
      name: 'CommonSecurityLog'
    }
    retentionInDays: 30
  }
}

resource workspaces_apim_lv_la_name_ComputerGroup 'Microsoft.OperationalInsights/workspaces/tables@2021-12-01-preview' = {
  parent: workspaces_apim_lv_la_name_resource
  name: 'ComputerGroup'
  properties: {
    totalRetentionInDays: 30
    plan: 'Analytics'
    schema: {
      name: 'ComputerGroup'
    }
    retentionInDays: 30
  }
}

resource workspaces_apim_lv_la_name_ConfidentialWatchlist 'Microsoft.OperationalInsights/workspaces/tables@2021-12-01-preview' = {
  parent: workspaces_apim_lv_la_name_resource
  name: 'ConfidentialWatchlist'
  properties: {
    totalRetentionInDays: 30
    plan: 'Analytics'
    schema: {
      name: 'ConfidentialWatchlist'
    }
    retentionInDays: 30
  }
}

resource workspaces_apim_lv_la_name_ContainerImageInventory 'Microsoft.OperationalInsights/workspaces/tables@2021-12-01-preview' = {
  parent: workspaces_apim_lv_la_name_resource
  name: 'ContainerImageInventory'
  properties: {
    totalRetentionInDays: 30
    plan: 'Analytics'
    schema: {
      name: 'ContainerImageInventory'
    }
    retentionInDays: 30
  }
}

resource workspaces_apim_lv_la_name_ContainerInventory 'Microsoft.OperationalInsights/workspaces/tables@2021-12-01-preview' = {
  parent: workspaces_apim_lv_la_name_resource
  name: 'ContainerInventory'
  properties: {
    totalRetentionInDays: 30
    plan: 'Analytics'
    schema: {
      name: 'ContainerInventory'
    }
    retentionInDays: 30
  }
}

resource workspaces_apim_lv_la_name_ContainerLog 'Microsoft.OperationalInsights/workspaces/tables@2021-12-01-preview' = {
  parent: workspaces_apim_lv_la_name_resource
  name: 'ContainerLog'
  properties: {
    totalRetentionInDays: 30
    plan: 'Analytics'
    schema: {
      name: 'ContainerLog'
    }
    retentionInDays: 30
  }
}

resource workspaces_apim_lv_la_name_ContainerNodeInventory 'Microsoft.OperationalInsights/workspaces/tables@2021-12-01-preview' = {
  parent: workspaces_apim_lv_la_name_resource
  name: 'ContainerNodeInventory'
  properties: {
    totalRetentionInDays: 30
    plan: 'Analytics'
    schema: {
      name: 'ContainerNodeInventory'
    }
    retentionInDays: 30
  }
}

resource workspaces_apim_lv_la_name_ContainerRegistryLoginEvents 'Microsoft.OperationalInsights/workspaces/tables@2021-12-01-preview' = {
  parent: workspaces_apim_lv_la_name_resource
  name: 'ContainerRegistryLoginEvents'
  properties: {
    totalRetentionInDays: 30
    plan: 'Analytics'
    schema: {
      name: 'ContainerRegistryLoginEvents'
    }
    retentionInDays: 30
  }
}

resource workspaces_apim_lv_la_name_ContainerRegistryRepositoryEvents 'Microsoft.OperationalInsights/workspaces/tables@2021-12-01-preview' = {
  parent: workspaces_apim_lv_la_name_resource
  name: 'ContainerRegistryRepositoryEvents'
  properties: {
    totalRetentionInDays: 30
    plan: 'Analytics'
    schema: {
      name: 'ContainerRegistryRepositoryEvents'
    }
    retentionInDays: 30
  }
}

resource workspaces_apim_lv_la_name_ContainerServiceLog 'Microsoft.OperationalInsights/workspaces/tables@2021-12-01-preview' = {
  parent: workspaces_apim_lv_la_name_resource
  name: 'ContainerServiceLog'
  properties: {
    totalRetentionInDays: 30
    plan: 'Analytics'
    schema: {
      name: 'ContainerServiceLog'
    }
    retentionInDays: 30
  }
}

resource workspaces_apim_lv_la_name_CoreAzureBackup 'Microsoft.OperationalInsights/workspaces/tables@2021-12-01-preview' = {
  parent: workspaces_apim_lv_la_name_resource
  name: 'CoreAzureBackup'
  properties: {
    totalRetentionInDays: 30
    plan: 'Analytics'
    schema: {
      name: 'CoreAzureBackup'
    }
    retentionInDays: 30
  }
}

resource workspaces_apim_lv_la_name_DatabricksAccounts 'Microsoft.OperationalInsights/workspaces/tables@2021-12-01-preview' = {
  parent: workspaces_apim_lv_la_name_resource
  name: 'DatabricksAccounts'
  properties: {
    totalRetentionInDays: 30
    plan: 'Analytics'
    schema: {
      name: 'DatabricksAccounts'
    }
    retentionInDays: 30
  }
}

resource workspaces_apim_lv_la_name_DatabricksClusters 'Microsoft.OperationalInsights/workspaces/tables@2021-12-01-preview' = {
  parent: workspaces_apim_lv_la_name_resource
  name: 'DatabricksClusters'
  properties: {
    totalRetentionInDays: 30
    plan: 'Analytics'
    schema: {
      name: 'DatabricksClusters'
    }
    retentionInDays: 30
  }
}

resource workspaces_apim_lv_la_name_DatabricksDatabricksSQL 'Microsoft.OperationalInsights/workspaces/tables@2021-12-01-preview' = {
  parent: workspaces_apim_lv_la_name_resource
  name: 'DatabricksDatabricksSQL'
  properties: {
    totalRetentionInDays: 30
    plan: 'Analytics'
    schema: {
      name: 'DatabricksDatabricksSQL'
    }
    retentionInDays: 30
  }
}

resource workspaces_apim_lv_la_name_DatabricksDBFS 'Microsoft.OperationalInsights/workspaces/tables@2021-12-01-preview' = {
  parent: workspaces_apim_lv_la_name_resource
  name: 'DatabricksDBFS'
  properties: {
    totalRetentionInDays: 30
    plan: 'Analytics'
    schema: {
      name: 'DatabricksDBFS'
    }
    retentionInDays: 30
  }
}

resource workspaces_apim_lv_la_name_DatabricksDeltaPipelines 'Microsoft.OperationalInsights/workspaces/tables@2021-12-01-preview' = {
  parent: workspaces_apim_lv_la_name_resource
  name: 'DatabricksDeltaPipelines'
  properties: {
    totalRetentionInDays: 30
    plan: 'Analytics'
    schema: {
      name: 'DatabricksDeltaPipelines'
    }
    retentionInDays: 30
  }
}

resource workspaces_apim_lv_la_name_DatabricksFeatureStore 'Microsoft.OperationalInsights/workspaces/tables@2021-12-01-preview' = {
  parent: workspaces_apim_lv_la_name_resource
  name: 'DatabricksFeatureStore'
  properties: {
    totalRetentionInDays: 30
    plan: 'Analytics'
    schema: {
      name: 'DatabricksFeatureStore'
    }
    retentionInDays: 30
  }
}

resource workspaces_apim_lv_la_name_DatabricksGenie 'Microsoft.OperationalInsights/workspaces/tables@2021-12-01-preview' = {
  parent: workspaces_apim_lv_la_name_resource
  name: 'DatabricksGenie'
  properties: {
    totalRetentionInDays: 30
    plan: 'Analytics'
    schema: {
      name: 'DatabricksGenie'
    }
    retentionInDays: 30
  }
}

resource workspaces_apim_lv_la_name_DatabricksGitCredentials 'Microsoft.OperationalInsights/workspaces/tables@2021-12-01-preview' = {
  parent: workspaces_apim_lv_la_name_resource
  name: 'DatabricksGitCredentials'
  properties: {
    totalRetentionInDays: 30
    plan: 'Analytics'
    schema: {
      name: 'DatabricksGitCredentials'
    }
    retentionInDays: 30
  }
}

resource workspaces_apim_lv_la_name_DatabricksGlobalInitScripts 'Microsoft.OperationalInsights/workspaces/tables@2021-12-01-preview' = {
  parent: workspaces_apim_lv_la_name_resource
  name: 'DatabricksGlobalInitScripts'
  properties: {
    totalRetentionInDays: 30
    plan: 'Analytics'
    schema: {
      name: 'DatabricksGlobalInitScripts'
    }
    retentionInDays: 30
  }
}

resource workspaces_apim_lv_la_name_DatabricksIAMRole 'Microsoft.OperationalInsights/workspaces/tables@2021-12-01-preview' = {
  parent: workspaces_apim_lv_la_name_resource
  name: 'DatabricksIAMRole'
  properties: {
    totalRetentionInDays: 30
    plan: 'Analytics'
    schema: {
      name: 'DatabricksIAMRole'
    }
    retentionInDays: 30
  }
}

resource workspaces_apim_lv_la_name_DatabricksInstancePools 'Microsoft.OperationalInsights/workspaces/tables@2021-12-01-preview' = {
  parent: workspaces_apim_lv_la_name_resource
  name: 'DatabricksInstancePools'
  properties: {
    totalRetentionInDays: 30
    plan: 'Analytics'
    schema: {
      name: 'DatabricksInstancePools'
    }
    retentionInDays: 30
  }
}

resource workspaces_apim_lv_la_name_DatabricksJobs 'Microsoft.OperationalInsights/workspaces/tables@2021-12-01-preview' = {
  parent: workspaces_apim_lv_la_name_resource
  name: 'DatabricksJobs'
  properties: {
    totalRetentionInDays: 30
    plan: 'Analytics'
    schema: {
      name: 'DatabricksJobs'
    }
    retentionInDays: 30
  }
}

resource workspaces_apim_lv_la_name_DatabricksMLflowAcledArtifact 'Microsoft.OperationalInsights/workspaces/tables@2021-12-01-preview' = {
  parent: workspaces_apim_lv_la_name_resource
  name: 'DatabricksMLflowAcledArtifact'
  properties: {
    totalRetentionInDays: 30
    plan: 'Analytics'
    schema: {
      name: 'DatabricksMLflowAcledArtifact'
    }
    retentionInDays: 30
  }
}

resource workspaces_apim_lv_la_name_DatabricksMLflowExperiment 'Microsoft.OperationalInsights/workspaces/tables@2021-12-01-preview' = {
  parent: workspaces_apim_lv_la_name_resource
  name: 'DatabricksMLflowExperiment'
  properties: {
    totalRetentionInDays: 30
    plan: 'Analytics'
    schema: {
      name: 'DatabricksMLflowExperiment'
    }
    retentionInDays: 30
  }
}

resource workspaces_apim_lv_la_name_DatabricksModelRegistry 'Microsoft.OperationalInsights/workspaces/tables@2021-12-01-preview' = {
  parent: workspaces_apim_lv_la_name_resource
  name: 'DatabricksModelRegistry'
  properties: {
    totalRetentionInDays: 30
    plan: 'Analytics'
    schema: {
      name: 'DatabricksModelRegistry'
    }
    retentionInDays: 30
  }
}

resource workspaces_apim_lv_la_name_DatabricksNotebook 'Microsoft.OperationalInsights/workspaces/tables@2021-12-01-preview' = {
  parent: workspaces_apim_lv_la_name_resource
  name: 'DatabricksNotebook'
  properties: {
    totalRetentionInDays: 30
    plan: 'Analytics'
    schema: {
      name: 'DatabricksNotebook'
    }
    retentionInDays: 30
  }
}

resource workspaces_apim_lv_la_name_DatabricksRemoteHistoryService 'Microsoft.OperationalInsights/workspaces/tables@2021-12-01-preview' = {
  parent: workspaces_apim_lv_la_name_resource
  name: 'DatabricksRemoteHistoryService'
  properties: {
    totalRetentionInDays: 30
    plan: 'Analytics'
    schema: {
      name: 'DatabricksRemoteHistoryService'
    }
    retentionInDays: 30
  }
}

resource workspaces_apim_lv_la_name_DatabricksRepos 'Microsoft.OperationalInsights/workspaces/tables@2021-12-01-preview' = {
  parent: workspaces_apim_lv_la_name_resource
  name: 'DatabricksRepos'
  properties: {
    totalRetentionInDays: 30
    plan: 'Analytics'
    schema: {
      name: 'DatabricksRepos'
    }
    retentionInDays: 30
  }
}

resource workspaces_apim_lv_la_name_DatabricksSecrets 'Microsoft.OperationalInsights/workspaces/tables@2021-12-01-preview' = {
  parent: workspaces_apim_lv_la_name_resource
  name: 'DatabricksSecrets'
  properties: {
    totalRetentionInDays: 30
    plan: 'Analytics'
    schema: {
      name: 'DatabricksSecrets'
    }
    retentionInDays: 30
  }
}

resource workspaces_apim_lv_la_name_DatabricksSQL 'Microsoft.OperationalInsights/workspaces/tables@2021-12-01-preview' = {
  parent: workspaces_apim_lv_la_name_resource
  name: 'DatabricksSQL'
  properties: {
    totalRetentionInDays: 30
    plan: 'Analytics'
    schema: {
      name: 'DatabricksSQL'
    }
    retentionInDays: 30
  }
}

resource workspaces_apim_lv_la_name_DatabricksSQLPermissions 'Microsoft.OperationalInsights/workspaces/tables@2021-12-01-preview' = {
  parent: workspaces_apim_lv_la_name_resource
  name: 'DatabricksSQLPermissions'
  properties: {
    totalRetentionInDays: 30
    plan: 'Analytics'
    schema: {
      name: 'DatabricksSQLPermissions'
    }
    retentionInDays: 30
  }
}

resource workspaces_apim_lv_la_name_DatabricksSSH 'Microsoft.OperationalInsights/workspaces/tables@2021-12-01-preview' = {
  parent: workspaces_apim_lv_la_name_resource
  name: 'DatabricksSSH'
  properties: {
    totalRetentionInDays: 30
    plan: 'Analytics'
    schema: {
      name: 'DatabricksSSH'
    }
    retentionInDays: 30
  }
}

resource workspaces_apim_lv_la_name_DatabricksTables 'Microsoft.OperationalInsights/workspaces/tables@2021-12-01-preview' = {
  parent: workspaces_apim_lv_la_name_resource
  name: 'DatabricksTables'
  properties: {
    totalRetentionInDays: 30
    plan: 'Analytics'
    schema: {
      name: 'DatabricksTables'
    }
    retentionInDays: 30
  }
}

resource workspaces_apim_lv_la_name_DatabricksUnityCatalog 'Microsoft.OperationalInsights/workspaces/tables@2021-12-01-preview' = {
  parent: workspaces_apim_lv_la_name_resource
  name: 'DatabricksUnityCatalog'
  properties: {
    totalRetentionInDays: 30
    plan: 'Analytics'
    schema: {
      name: 'DatabricksUnityCatalog'
    }
    retentionInDays: 30
  }
}

resource workspaces_apim_lv_la_name_DatabricksWebTerminal 'Microsoft.OperationalInsights/workspaces/tables@2021-12-01-preview' = {
  parent: workspaces_apim_lv_la_name_resource
  name: 'DatabricksWebTerminal'
  properties: {
    totalRetentionInDays: 30
    plan: 'Analytics'
    schema: {
      name: 'DatabricksWebTerminal'
    }
    retentionInDays: 30
  }
}

resource workspaces_apim_lv_la_name_DatabricksWorkspace 'Microsoft.OperationalInsights/workspaces/tables@2021-12-01-preview' = {
  parent: workspaces_apim_lv_la_name_resource
  name: 'DatabricksWorkspace'
  properties: {
    totalRetentionInDays: 30
    plan: 'Analytics'
    schema: {
      name: 'DatabricksWorkspace'
    }
    retentionInDays: 30
  }
}

resource workspaces_apim_lv_la_name_DeviceEvents 'Microsoft.OperationalInsights/workspaces/tables@2021-12-01-preview' = {
  parent: workspaces_apim_lv_la_name_resource
  name: 'DeviceEvents'
  properties: {
    totalRetentionInDays: 30
    plan: 'Analytics'
    schema: {
      name: 'DeviceEvents'
    }
    retentionInDays: 30
  }
}

resource workspaces_apim_lv_la_name_DeviceFileCertificateInfo 'Microsoft.OperationalInsights/workspaces/tables@2021-12-01-preview' = {
  parent: workspaces_apim_lv_la_name_resource
  name: 'DeviceFileCertificateInfo'
  properties: {
    totalRetentionInDays: 30
    plan: 'Analytics'
    schema: {
      name: 'DeviceFileCertificateInfo'
    }
    retentionInDays: 30
  }
}

resource workspaces_apim_lv_la_name_DeviceFileEvents 'Microsoft.OperationalInsights/workspaces/tables@2021-12-01-preview' = {
  parent: workspaces_apim_lv_la_name_resource
  name: 'DeviceFileEvents'
  properties: {
    totalRetentionInDays: 30
    plan: 'Analytics'
    schema: {
      name: 'DeviceFileEvents'
    }
    retentionInDays: 30
  }
}

resource workspaces_apim_lv_la_name_DeviceImageLoadEvents 'Microsoft.OperationalInsights/workspaces/tables@2021-12-01-preview' = {
  parent: workspaces_apim_lv_la_name_resource
  name: 'DeviceImageLoadEvents'
  properties: {
    totalRetentionInDays: 30
    plan: 'Analytics'
    schema: {
      name: 'DeviceImageLoadEvents'
    }
    retentionInDays: 30
  }
}

resource workspaces_apim_lv_la_name_DeviceInfo 'Microsoft.OperationalInsights/workspaces/tables@2021-12-01-preview' = {
  parent: workspaces_apim_lv_la_name_resource
  name: 'DeviceInfo'
  properties: {
    totalRetentionInDays: 30
    plan: 'Analytics'
    schema: {
      name: 'DeviceInfo'
    }
    retentionInDays: 30
  }
}

resource workspaces_apim_lv_la_name_DeviceLogonEvents 'Microsoft.OperationalInsights/workspaces/tables@2021-12-01-preview' = {
  parent: workspaces_apim_lv_la_name_resource
  name: 'DeviceLogonEvents'
  properties: {
    totalRetentionInDays: 30
    plan: 'Analytics'
    schema: {
      name: 'DeviceLogonEvents'
    }
    retentionInDays: 30
  }
}

resource workspaces_apim_lv_la_name_DeviceNetworkEvents 'Microsoft.OperationalInsights/workspaces/tables@2021-12-01-preview' = {
  parent: workspaces_apim_lv_la_name_resource
  name: 'DeviceNetworkEvents'
  properties: {
    totalRetentionInDays: 30
    plan: 'Analytics'
    schema: {
      name: 'DeviceNetworkEvents'
    }
    retentionInDays: 30
  }
}

resource workspaces_apim_lv_la_name_DeviceNetworkInfo 'Microsoft.OperationalInsights/workspaces/tables@2021-12-01-preview' = {
  parent: workspaces_apim_lv_la_name_resource
  name: 'DeviceNetworkInfo'
  properties: {
    totalRetentionInDays: 30
    plan: 'Analytics'
    schema: {
      name: 'DeviceNetworkInfo'
    }
    retentionInDays: 30
  }
}

resource workspaces_apim_lv_la_name_DeviceProcessEvents 'Microsoft.OperationalInsights/workspaces/tables@2021-12-01-preview' = {
  parent: workspaces_apim_lv_la_name_resource
  name: 'DeviceProcessEvents'
  properties: {
    totalRetentionInDays: 30
    plan: 'Analytics'
    schema: {
      name: 'DeviceProcessEvents'
    }
    retentionInDays: 30
  }
}

resource workspaces_apim_lv_la_name_DeviceRegistryEvents 'Microsoft.OperationalInsights/workspaces/tables@2021-12-01-preview' = {
  parent: workspaces_apim_lv_la_name_resource
  name: 'DeviceRegistryEvents'
  properties: {
    totalRetentionInDays: 30
    plan: 'Analytics'
    schema: {
      name: 'DeviceRegistryEvents'
    }
    retentionInDays: 30
  }
}

resource workspaces_apim_lv_la_name_DeviceTvmSecureConfigurationAssessment 'Microsoft.OperationalInsights/workspaces/tables@2021-12-01-preview' = {
  parent: workspaces_apim_lv_la_name_resource
  name: 'DeviceTvmSecureConfigurationAssessment'
  properties: {
    totalRetentionInDays: 30
    plan: 'Analytics'
    schema: {
      name: 'DeviceTvmSecureConfigurationAssessment'
    }
    retentionInDays: 30
  }
}

resource workspaces_apim_lv_la_name_DeviceTvmSoftwareInventory 'Microsoft.OperationalInsights/workspaces/tables@2021-12-01-preview' = {
  parent: workspaces_apim_lv_la_name_resource
  name: 'DeviceTvmSoftwareInventory'
  properties: {
    totalRetentionInDays: 30
    plan: 'Analytics'
    schema: {
      name: 'DeviceTvmSoftwareInventory'
    }
    retentionInDays: 30
  }
}

resource workspaces_apim_lv_la_name_DeviceTvmSoftwareVulnerabilities 'Microsoft.OperationalInsights/workspaces/tables@2021-12-01-preview' = {
  parent: workspaces_apim_lv_la_name_resource
  name: 'DeviceTvmSoftwareVulnerabilities'
  properties: {
    totalRetentionInDays: 30
    plan: 'Analytics'
    schema: {
      name: 'DeviceTvmSoftwareVulnerabilities'
    }
    retentionInDays: 30
  }
}

resource workspaces_apim_lv_la_name_DSMAzureBlobStorageLogs 'Microsoft.OperationalInsights/workspaces/tables@2021-12-01-preview' = {
  parent: workspaces_apim_lv_la_name_resource
  name: 'DSMAzureBlobStorageLogs'
  properties: {
    totalRetentionInDays: 30
    plan: 'Analytics'
    schema: {
      name: 'DSMAzureBlobStorageLogs'
    }
    retentionInDays: 30
  }
}

resource workspaces_apim_lv_la_name_DSMDataClassificationLogs 'Microsoft.OperationalInsights/workspaces/tables@2021-12-01-preview' = {
  parent: workspaces_apim_lv_la_name_resource
  name: 'DSMDataClassificationLogs'
  properties: {
    totalRetentionInDays: 30
    plan: 'Analytics'
    schema: {
      name: 'DSMDataClassificationLogs'
    }
    retentionInDays: 30
  }
}

resource workspaces_apim_lv_la_name_DSMDataLabelingLogs 'Microsoft.OperationalInsights/workspaces/tables@2021-12-01-preview' = {
  parent: workspaces_apim_lv_la_name_resource
  name: 'DSMDataLabelingLogs'
  properties: {
    totalRetentionInDays: 30
    plan: 'Analytics'
    schema: {
      name: 'DSMDataLabelingLogs'
    }
    retentionInDays: 30
  }
}

resource workspaces_apim_lv_la_name_Dynamics365Activity 'Microsoft.OperationalInsights/workspaces/tables@2021-12-01-preview' = {
  parent: workspaces_apim_lv_la_name_resource
  name: 'Dynamics365Activity'
  properties: {
    totalRetentionInDays: 30
    plan: 'Analytics'
    schema: {
      name: 'Dynamics365Activity'
    }
    retentionInDays: 30
  }
}

resource workspaces_apim_lv_la_name_EmailAttachmentInfo 'Microsoft.OperationalInsights/workspaces/tables@2021-12-01-preview' = {
  parent: workspaces_apim_lv_la_name_resource
  name: 'EmailAttachmentInfo'
  properties: {
    totalRetentionInDays: 30
    plan: 'Analytics'
    schema: {
      name: 'EmailAttachmentInfo'
    }
    retentionInDays: 30
  }
}

resource workspaces_apim_lv_la_name_EmailEvents 'Microsoft.OperationalInsights/workspaces/tables@2021-12-01-preview' = {
  parent: workspaces_apim_lv_la_name_resource
  name: 'EmailEvents'
  properties: {
    totalRetentionInDays: 30
    plan: 'Analytics'
    schema: {
      name: 'EmailEvents'
    }
    retentionInDays: 30
  }
}

resource workspaces_apim_lv_la_name_EmailPostDeliveryEvents 'Microsoft.OperationalInsights/workspaces/tables@2021-12-01-preview' = {
  parent: workspaces_apim_lv_la_name_resource
  name: 'EmailPostDeliveryEvents'
  properties: {
    totalRetentionInDays: 30
    plan: 'Analytics'
    schema: {
      name: 'EmailPostDeliveryEvents'
    }
    retentionInDays: 30
  }
}

resource workspaces_apim_lv_la_name_EmailUrlInfo 'Microsoft.OperationalInsights/workspaces/tables@2021-12-01-preview' = {
  parent: workspaces_apim_lv_la_name_resource
  name: 'EmailUrlInfo'
  properties: {
    totalRetentionInDays: 30
    plan: 'Analytics'
    schema: {
      name: 'EmailUrlInfo'
    }
    retentionInDays: 30
  }
}

resource workspaces_apim_lv_la_name_ETWEvent 'Microsoft.OperationalInsights/workspaces/tables@2021-12-01-preview' = {
  parent: workspaces_apim_lv_la_name_resource
  name: 'ETWEvent'
  properties: {
    totalRetentionInDays: 30
    plan: 'Analytics'
    schema: {
      name: 'ETWEvent'
    }
    retentionInDays: 30
  }
}

resource workspaces_apim_lv_la_name_Event 'Microsoft.OperationalInsights/workspaces/tables@2021-12-01-preview' = {
  parent: workspaces_apim_lv_la_name_resource
  name: 'Event'
  properties: {
    totalRetentionInDays: 30
    plan: 'Analytics'
    schema: {
      name: 'Event'
    }
    retentionInDays: 30
  }
}

resource workspaces_apim_lv_la_name_FailedIngestion 'Microsoft.OperationalInsights/workspaces/tables@2021-12-01-preview' = {
  parent: workspaces_apim_lv_la_name_resource
  name: 'FailedIngestion'
  properties: {
    totalRetentionInDays: 30
    plan: 'Analytics'
    schema: {
      name: 'FailedIngestion'
    }
    retentionInDays: 30
  }
}

resource workspaces_apim_lv_la_name_FunctionAppLogs 'Microsoft.OperationalInsights/workspaces/tables@2021-12-01-preview' = {
  parent: workspaces_apim_lv_la_name_resource
  name: 'FunctionAppLogs'
  properties: {
    totalRetentionInDays: 30
    plan: 'Analytics'
    schema: {
      name: 'FunctionAppLogs'
    }
    retentionInDays: 30
  }
}

resource workspaces_apim_lv_la_name_HDInsightAmbariClusterAlerts 'Microsoft.OperationalInsights/workspaces/tables@2021-12-01-preview' = {
  parent: workspaces_apim_lv_la_name_resource
  name: 'HDInsightAmbariClusterAlerts'
  properties: {
    totalRetentionInDays: 30
    plan: 'Analytics'
    schema: {
      name: 'HDInsightAmbariClusterAlerts'
    }
    retentionInDays: 30
  }
}

resource workspaces_apim_lv_la_name_HDInsightAmbariSystemMetrics 'Microsoft.OperationalInsights/workspaces/tables@2021-12-01-preview' = {
  parent: workspaces_apim_lv_la_name_resource
  name: 'HDInsightAmbariSystemMetrics'
  properties: {
    totalRetentionInDays: 30
    plan: 'Analytics'
    schema: {
      name: 'HDInsightAmbariSystemMetrics'
    }
    retentionInDays: 30
  }
}

resource workspaces_apim_lv_la_name_HDInsightGatewayAuditLogs 'Microsoft.OperationalInsights/workspaces/tables@2021-12-01-preview' = {
  parent: workspaces_apim_lv_la_name_resource
  name: 'HDInsightGatewayAuditLogs'
  properties: {
    totalRetentionInDays: 30
    plan: 'Analytics'
    schema: {
      name: 'HDInsightGatewayAuditLogs'
    }
    retentionInDays: 30
  }
}

resource workspaces_apim_lv_la_name_HDInsightHadoopAndYarnLogs 'Microsoft.OperationalInsights/workspaces/tables@2021-12-01-preview' = {
  parent: workspaces_apim_lv_la_name_resource
  name: 'HDInsightHadoopAndYarnLogs'
  properties: {
    totalRetentionInDays: 30
    plan: 'Analytics'
    schema: {
      name: 'HDInsightHadoopAndYarnLogs'
    }
    retentionInDays: 30
  }
}

resource workspaces_apim_lv_la_name_HDInsightHadoopAndYarnMetrics 'Microsoft.OperationalInsights/workspaces/tables@2021-12-01-preview' = {
  parent: workspaces_apim_lv_la_name_resource
  name: 'HDInsightHadoopAndYarnMetrics'
  properties: {
    totalRetentionInDays: 30
    plan: 'Analytics'
    schema: {
      name: 'HDInsightHadoopAndYarnMetrics'
    }
    retentionInDays: 30
  }
}

resource workspaces_apim_lv_la_name_HDInsightHBaseLogs 'Microsoft.OperationalInsights/workspaces/tables@2021-12-01-preview' = {
  parent: workspaces_apim_lv_la_name_resource
  name: 'HDInsightHBaseLogs'
  properties: {
    totalRetentionInDays: 30
    plan: 'Analytics'
    schema: {
      name: 'HDInsightHBaseLogs'
    }
    retentionInDays: 30
  }
}

resource workspaces_apim_lv_la_name_HDInsightHBaseMetrics 'Microsoft.OperationalInsights/workspaces/tables@2021-12-01-preview' = {
  parent: workspaces_apim_lv_la_name_resource
  name: 'HDInsightHBaseMetrics'
  properties: {
    totalRetentionInDays: 30
    plan: 'Analytics'
    schema: {
      name: 'HDInsightHBaseMetrics'
    }
    retentionInDays: 30
  }
}

resource workspaces_apim_lv_la_name_HDInsightHiveAndLLAPLogs 'Microsoft.OperationalInsights/workspaces/tables@2021-12-01-preview' = {
  parent: workspaces_apim_lv_la_name_resource
  name: 'HDInsightHiveAndLLAPLogs'
  properties: {
    totalRetentionInDays: 30
    plan: 'Analytics'
    schema: {
      name: 'HDInsightHiveAndLLAPLogs'
    }
    retentionInDays: 30
  }
}

resource workspaces_apim_lv_la_name_HDInsightHiveAndLLAPMetrics 'Microsoft.OperationalInsights/workspaces/tables@2021-12-01-preview' = {
  parent: workspaces_apim_lv_la_name_resource
  name: 'HDInsightHiveAndLLAPMetrics'
  properties: {
    totalRetentionInDays: 30
    plan: 'Analytics'
    schema: {
      name: 'HDInsightHiveAndLLAPMetrics'
    }
    retentionInDays: 30
  }
}

resource workspaces_apim_lv_la_name_HDInsightHiveQueryAppStats 'Microsoft.OperationalInsights/workspaces/tables@2021-12-01-preview' = {
  parent: workspaces_apim_lv_la_name_resource
  name: 'HDInsightHiveQueryAppStats'
  properties: {
    totalRetentionInDays: 30
    plan: 'Analytics'
    schema: {
      name: 'HDInsightHiveQueryAppStats'
    }
    retentionInDays: 30
  }
}

resource workspaces_apim_lv_la_name_HDInsightHiveTezAppStats 'Microsoft.OperationalInsights/workspaces/tables@2021-12-01-preview' = {
  parent: workspaces_apim_lv_la_name_resource
  name: 'HDInsightHiveTezAppStats'
  properties: {
    totalRetentionInDays: 30
    plan: 'Analytics'
    schema: {
      name: 'HDInsightHiveTezAppStats'
    }
    retentionInDays: 30
  }
}

resource workspaces_apim_lv_la_name_HDInsightJupyterNotebookEvents 'Microsoft.OperationalInsights/workspaces/tables@2021-12-01-preview' = {
  parent: workspaces_apim_lv_la_name_resource
  name: 'HDInsightJupyterNotebookEvents'
  properties: {
    totalRetentionInDays: 30
    plan: 'Analytics'
    schema: {
      name: 'HDInsightJupyterNotebookEvents'
    }
    retentionInDays: 30
  }
}

resource workspaces_apim_lv_la_name_HDInsightKafkaLogs 'Microsoft.OperationalInsights/workspaces/tables@2021-12-01-preview' = {
  parent: workspaces_apim_lv_la_name_resource
  name: 'HDInsightKafkaLogs'
  properties: {
    totalRetentionInDays: 30
    plan: 'Analytics'
    schema: {
      name: 'HDInsightKafkaLogs'
    }
    retentionInDays: 30
  }
}

resource workspaces_apim_lv_la_name_HDInsightKafkaMetrics 'Microsoft.OperationalInsights/workspaces/tables@2021-12-01-preview' = {
  parent: workspaces_apim_lv_la_name_resource
  name: 'HDInsightKafkaMetrics'
  properties: {
    totalRetentionInDays: 30
    plan: 'Analytics'
    schema: {
      name: 'HDInsightKafkaMetrics'
    }
    retentionInDays: 30
  }
}

resource workspaces_apim_lv_la_name_HDInsightOozieLogs 'Microsoft.OperationalInsights/workspaces/tables@2021-12-01-preview' = {
  parent: workspaces_apim_lv_la_name_resource
  name: 'HDInsightOozieLogs'
  properties: {
    totalRetentionInDays: 30
    plan: 'Analytics'
    schema: {
      name: 'HDInsightOozieLogs'
    }
    retentionInDays: 30
  }
}

resource workspaces_apim_lv_la_name_HDInsightRangerAuditLogs 'Microsoft.OperationalInsights/workspaces/tables@2021-12-01-preview' = {
  parent: workspaces_apim_lv_la_name_resource
  name: 'HDInsightRangerAuditLogs'
  properties: {
    totalRetentionInDays: 30
    plan: 'Analytics'
    schema: {
      name: 'HDInsightRangerAuditLogs'
    }
    retentionInDays: 30
  }
}

resource workspaces_apim_lv_la_name_HDInsightSecurityLogs 'Microsoft.OperationalInsights/workspaces/tables@2021-12-01-preview' = {
  parent: workspaces_apim_lv_la_name_resource
  name: 'HDInsightSecurityLogs'
  properties: {
    totalRetentionInDays: 30
    plan: 'Analytics'
    schema: {
      name: 'HDInsightSecurityLogs'
    }
    retentionInDays: 30
  }
}

resource workspaces_apim_lv_la_name_HDInsightSparkApplicationEvents 'Microsoft.OperationalInsights/workspaces/tables@2021-12-01-preview' = {
  parent: workspaces_apim_lv_la_name_resource
  name: 'HDInsightSparkApplicationEvents'
  properties: {
    totalRetentionInDays: 30
    plan: 'Analytics'
    schema: {
      name: 'HDInsightSparkApplicationEvents'
    }
    retentionInDays: 30
  }
}

resource workspaces_apim_lv_la_name_HDInsightSparkBlockManagerEvents 'Microsoft.OperationalInsights/workspaces/tables@2021-12-01-preview' = {
  parent: workspaces_apim_lv_la_name_resource
  name: 'HDInsightSparkBlockManagerEvents'
  properties: {
    totalRetentionInDays: 30
    plan: 'Analytics'
    schema: {
      name: 'HDInsightSparkBlockManagerEvents'
    }
    retentionInDays: 30
  }
}

resource workspaces_apim_lv_la_name_HDInsightSparkEnvironmentEvents 'Microsoft.OperationalInsights/workspaces/tables@2021-12-01-preview' = {
  parent: workspaces_apim_lv_la_name_resource
  name: 'HDInsightSparkEnvironmentEvents'
  properties: {
    totalRetentionInDays: 30
    plan: 'Analytics'
    schema: {
      name: 'HDInsightSparkEnvironmentEvents'
    }
    retentionInDays: 30
  }
}

resource workspaces_apim_lv_la_name_HDInsightSparkExecutorEvents 'Microsoft.OperationalInsights/workspaces/tables@2021-12-01-preview' = {
  parent: workspaces_apim_lv_la_name_resource
  name: 'HDInsightSparkExecutorEvents'
  properties: {
    totalRetentionInDays: 30
    plan: 'Analytics'
    schema: {
      name: 'HDInsightSparkExecutorEvents'
    }
    retentionInDays: 30
  }
}

resource workspaces_apim_lv_la_name_HDInsightSparkExtraEvents 'Microsoft.OperationalInsights/workspaces/tables@2021-12-01-preview' = {
  parent: workspaces_apim_lv_la_name_resource
  name: 'HDInsightSparkExtraEvents'
  properties: {
    totalRetentionInDays: 30
    plan: 'Analytics'
    schema: {
      name: 'HDInsightSparkExtraEvents'
    }
    retentionInDays: 30
  }
}

resource workspaces_apim_lv_la_name_HDInsightSparkJobEvents 'Microsoft.OperationalInsights/workspaces/tables@2021-12-01-preview' = {
  parent: workspaces_apim_lv_la_name_resource
  name: 'HDInsightSparkJobEvents'
  properties: {
    totalRetentionInDays: 30
    plan: 'Analytics'
    schema: {
      name: 'HDInsightSparkJobEvents'
    }
    retentionInDays: 30
  }
}

resource workspaces_apim_lv_la_name_HDInsightSparkLogs 'Microsoft.OperationalInsights/workspaces/tables@2021-12-01-preview' = {
  parent: workspaces_apim_lv_la_name_resource
  name: 'HDInsightSparkLogs'
  properties: {
    totalRetentionInDays: 30
    plan: 'Analytics'
    schema: {
      name: 'HDInsightSparkLogs'
    }
    retentionInDays: 30
  }
}

resource workspaces_apim_lv_la_name_HDInsightSparkSQLExecutionEvents 'Microsoft.OperationalInsights/workspaces/tables@2021-12-01-preview' = {
  parent: workspaces_apim_lv_la_name_resource
  name: 'HDInsightSparkSQLExecutionEvents'
  properties: {
    totalRetentionInDays: 30
    plan: 'Analytics'
    schema: {
      name: 'HDInsightSparkSQLExecutionEvents'
    }
    retentionInDays: 30
  }
}

resource workspaces_apim_lv_la_name_HDInsightSparkStageEvents 'Microsoft.OperationalInsights/workspaces/tables@2021-12-01-preview' = {
  parent: workspaces_apim_lv_la_name_resource
  name: 'HDInsightSparkStageEvents'
  properties: {
    totalRetentionInDays: 30
    plan: 'Analytics'
    schema: {
      name: 'HDInsightSparkStageEvents'
    }
    retentionInDays: 30
  }
}

resource workspaces_apim_lv_la_name_HDInsightSparkStageTaskAccumulables 'Microsoft.OperationalInsights/workspaces/tables@2021-12-01-preview' = {
  parent: workspaces_apim_lv_la_name_resource
  name: 'HDInsightSparkStageTaskAccumulables'
  properties: {
    totalRetentionInDays: 30
    plan: 'Analytics'
    schema: {
      name: 'HDInsightSparkStageTaskAccumulables'
    }
    retentionInDays: 30
  }
}

resource workspaces_apim_lv_la_name_HDInsightSparkTaskEvents 'Microsoft.OperationalInsights/workspaces/tables@2021-12-01-preview' = {
  parent: workspaces_apim_lv_la_name_resource
  name: 'HDInsightSparkTaskEvents'
  properties: {
    totalRetentionInDays: 30
    plan: 'Analytics'
    schema: {
      name: 'HDInsightSparkTaskEvents'
    }
    retentionInDays: 30
  }
}

resource workspaces_apim_lv_la_name_HDInsightStormLogs 'Microsoft.OperationalInsights/workspaces/tables@2021-12-01-preview' = {
  parent: workspaces_apim_lv_la_name_resource
  name: 'HDInsightStormLogs'
  properties: {
    totalRetentionInDays: 30
    plan: 'Analytics'
    schema: {
      name: 'HDInsightStormLogs'
    }
    retentionInDays: 30
  }
}

resource workspaces_apim_lv_la_name_HDInsightStormMetrics 'Microsoft.OperationalInsights/workspaces/tables@2021-12-01-preview' = {
  parent: workspaces_apim_lv_la_name_resource
  name: 'HDInsightStormMetrics'
  properties: {
    totalRetentionInDays: 30
    plan: 'Analytics'
    schema: {
      name: 'HDInsightStormMetrics'
    }
    retentionInDays: 30
  }
}

resource workspaces_apim_lv_la_name_HDInsightStormTopologyMetrics 'Microsoft.OperationalInsights/workspaces/tables@2021-12-01-preview' = {
  parent: workspaces_apim_lv_la_name_resource
  name: 'HDInsightStormTopologyMetrics'
  properties: {
    totalRetentionInDays: 30
    plan: 'Analytics'
    schema: {
      name: 'HDInsightStormTopologyMetrics'
    }
    retentionInDays: 30
  }
}

resource workspaces_apim_lv_la_name_Heartbeat 'Microsoft.OperationalInsights/workspaces/tables@2021-12-01-preview' = {
  parent: workspaces_apim_lv_la_name_resource
  name: 'Heartbeat'
  properties: {
    totalRetentionInDays: 30
    plan: 'Analytics'
    schema: {
      name: 'Heartbeat'
    }
    retentionInDays: 30
  }
}

resource workspaces_apim_lv_la_name_HuntingBookmark 'Microsoft.OperationalInsights/workspaces/tables@2021-12-01-preview' = {
  parent: workspaces_apim_lv_la_name_resource
  name: 'HuntingBookmark'
  properties: {
    totalRetentionInDays: 30
    plan: 'Analytics'
    schema: {
      name: 'HuntingBookmark'
    }
    retentionInDays: 30
  }
}

resource workspaces_apim_lv_la_name_IdentityDirectoryEvents 'Microsoft.OperationalInsights/workspaces/tables@2021-12-01-preview' = {
  parent: workspaces_apim_lv_la_name_resource
  name: 'IdentityDirectoryEvents'
  properties: {
    totalRetentionInDays: 30
    plan: 'Analytics'
    schema: {
      name: 'IdentityDirectoryEvents'
    }
    retentionInDays: 30
  }
}

resource workspaces_apim_lv_la_name_IdentityLogonEvents 'Microsoft.OperationalInsights/workspaces/tables@2021-12-01-preview' = {
  parent: workspaces_apim_lv_la_name_resource
  name: 'IdentityLogonEvents'
  properties: {
    totalRetentionInDays: 30
    plan: 'Analytics'
    schema: {
      name: 'IdentityLogonEvents'
    }
    retentionInDays: 30
  }
}

resource workspaces_apim_lv_la_name_IdentityQueryEvents 'Microsoft.OperationalInsights/workspaces/tables@2021-12-01-preview' = {
  parent: workspaces_apim_lv_la_name_resource
  name: 'IdentityQueryEvents'
  properties: {
    totalRetentionInDays: 30
    plan: 'Analytics'
    schema: {
      name: 'IdentityQueryEvents'
    }
    retentionInDays: 30
  }
}

resource workspaces_apim_lv_la_name_InsightsMetrics 'Microsoft.OperationalInsights/workspaces/tables@2021-12-01-preview' = {
  parent: workspaces_apim_lv_la_name_resource
  name: 'InsightsMetrics'
  properties: {
    totalRetentionInDays: 30
    plan: 'Analytics'
    schema: {
      name: 'InsightsMetrics'
    }
    retentionInDays: 30
  }
}

resource workspaces_apim_lv_la_name_IntuneAuditLogs 'Microsoft.OperationalInsights/workspaces/tables@2021-12-01-preview' = {
  parent: workspaces_apim_lv_la_name_resource
  name: 'IntuneAuditLogs'
  properties: {
    totalRetentionInDays: 30
    plan: 'Analytics'
    schema: {
      name: 'IntuneAuditLogs'
    }
    retentionInDays: 30
  }
}

resource workspaces_apim_lv_la_name_IntuneDeviceComplianceOrg 'Microsoft.OperationalInsights/workspaces/tables@2021-12-01-preview' = {
  parent: workspaces_apim_lv_la_name_resource
  name: 'IntuneDeviceComplianceOrg'
  properties: {
    totalRetentionInDays: 30
    plan: 'Analytics'
    schema: {
      name: 'IntuneDeviceComplianceOrg'
    }
    retentionInDays: 30
  }
}

resource workspaces_apim_lv_la_name_IntuneDevices 'Microsoft.OperationalInsights/workspaces/tables@2021-12-01-preview' = {
  parent: workspaces_apim_lv_la_name_resource
  name: 'IntuneDevices'
  properties: {
    totalRetentionInDays: 30
    plan: 'Analytics'
    schema: {
      name: 'IntuneDevices'
    }
    retentionInDays: 30
  }
}

resource workspaces_apim_lv_la_name_IntuneOperationalLogs 'Microsoft.OperationalInsights/workspaces/tables@2021-12-01-preview' = {
  parent: workspaces_apim_lv_la_name_resource
  name: 'IntuneOperationalLogs'
  properties: {
    totalRetentionInDays: 30
    plan: 'Analytics'
    schema: {
      name: 'IntuneOperationalLogs'
    }
    retentionInDays: 30
  }
}

resource workspaces_apim_lv_la_name_KubeEvents 'Microsoft.OperationalInsights/workspaces/tables@2021-12-01-preview' = {
  parent: workspaces_apim_lv_la_name_resource
  name: 'KubeEvents'
  properties: {
    totalRetentionInDays: 30
    plan: 'Analytics'
    schema: {
      name: 'KubeEvents'
    }
    retentionInDays: 30
  }
}

resource workspaces_apim_lv_la_name_KubeHealth 'Microsoft.OperationalInsights/workspaces/tables@2021-12-01-preview' = {
  parent: workspaces_apim_lv_la_name_resource
  name: 'KubeHealth'
  properties: {
    totalRetentionInDays: 30
    plan: 'Analytics'
    schema: {
      name: 'KubeHealth'
    }
    retentionInDays: 30
  }
}

resource workspaces_apim_lv_la_name_KubeMonAgentEvents 'Microsoft.OperationalInsights/workspaces/tables@2021-12-01-preview' = {
  parent: workspaces_apim_lv_la_name_resource
  name: 'KubeMonAgentEvents'
  properties: {
    totalRetentionInDays: 30
    plan: 'Analytics'
    schema: {
      name: 'KubeMonAgentEvents'
    }
    retentionInDays: 30
  }
}

resource workspaces_apim_lv_la_name_KubeNodeInventory 'Microsoft.OperationalInsights/workspaces/tables@2021-12-01-preview' = {
  parent: workspaces_apim_lv_la_name_resource
  name: 'KubeNodeInventory'
  properties: {
    totalRetentionInDays: 30
    plan: 'Analytics'
    schema: {
      name: 'KubeNodeInventory'
    }
    retentionInDays: 30
  }
}

resource workspaces_apim_lv_la_name_KubePodInventory 'Microsoft.OperationalInsights/workspaces/tables@2021-12-01-preview' = {
  parent: workspaces_apim_lv_la_name_resource
  name: 'KubePodInventory'
  properties: {
    totalRetentionInDays: 30
    plan: 'Analytics'
    schema: {
      name: 'KubePodInventory'
    }
    retentionInDays: 30
  }
}

resource workspaces_apim_lv_la_name_KubeServices 'Microsoft.OperationalInsights/workspaces/tables@2021-12-01-preview' = {
  parent: workspaces_apim_lv_la_name_resource
  name: 'KubeServices'
  properties: {
    totalRetentionInDays: 30
    plan: 'Analytics'
    schema: {
      name: 'KubeServices'
    }
    retentionInDays: 30
  }
}

resource workspaces_apim_lv_la_name_LAQueryLogs 'Microsoft.OperationalInsights/workspaces/tables@2021-12-01-preview' = {
  parent: workspaces_apim_lv_la_name_resource
  name: 'LAQueryLogs'
  properties: {
    totalRetentionInDays: 30
    plan: 'Analytics'
    schema: {
      name: 'LAQueryLogs'
    }
    retentionInDays: 30
  }
}

resource workspaces_apim_lv_la_name_LinuxAuditLog 'Microsoft.OperationalInsights/workspaces/tables@2021-12-01-preview' = {
  parent: workspaces_apim_lv_la_name_resource
  name: 'LinuxAuditLog'
  properties: {
    totalRetentionInDays: 30
    plan: 'Analytics'
    schema: {
      name: 'LinuxAuditLog'
    }
    retentionInDays: 30
  }
}

resource workspaces_apim_lv_la_name_McasShadowItReporting 'Microsoft.OperationalInsights/workspaces/tables@2021-12-01-preview' = {
  parent: workspaces_apim_lv_la_name_resource
  name: 'McasShadowItReporting'
  properties: {
    totalRetentionInDays: 30
    plan: 'Analytics'
    schema: {
      name: 'McasShadowItReporting'
    }
    retentionInDays: 30
  }
}

resource workspaces_apim_lv_la_name_MCCEventLogs 'Microsoft.OperationalInsights/workspaces/tables@2021-12-01-preview' = {
  parent: workspaces_apim_lv_la_name_resource
  name: 'MCCEventLogs'
  properties: {
    totalRetentionInDays: 30
    plan: 'Analytics'
    schema: {
      name: 'MCCEventLogs'
    }
    retentionInDays: 30
  }
}

resource workspaces_apim_lv_la_name_MCVPAuditLogs 'Microsoft.OperationalInsights/workspaces/tables@2021-12-01-preview' = {
  parent: workspaces_apim_lv_la_name_resource
  name: 'MCVPAuditLogs'
  properties: {
    totalRetentionInDays: 30
    plan: 'Analytics'
    schema: {
      name: 'MCVPAuditLogs'
    }
    retentionInDays: 30
  }
}

resource workspaces_apim_lv_la_name_MCVPOperationLogs 'Microsoft.OperationalInsights/workspaces/tables@2021-12-01-preview' = {
  parent: workspaces_apim_lv_la_name_resource
  name: 'MCVPOperationLogs'
  properties: {
    totalRetentionInDays: 30
    plan: 'Analytics'
    schema: {
      name: 'MCVPOperationLogs'
    }
    retentionInDays: 30
  }
}

resource workspaces_apim_lv_la_name_MicrosoftAzureBastionAuditLogs 'Microsoft.OperationalInsights/workspaces/tables@2021-12-01-preview' = {
  parent: workspaces_apim_lv_la_name_resource
  name: 'MicrosoftAzureBastionAuditLogs'
  properties: {
    totalRetentionInDays: 30
    plan: 'Analytics'
    schema: {
      name: 'MicrosoftAzureBastionAuditLogs'
    }
    retentionInDays: 30
  }
}

resource workspaces_apim_lv_la_name_MicrosoftDataShareReceivedSnapshotLog 'Microsoft.OperationalInsights/workspaces/tables@2021-12-01-preview' = {
  parent: workspaces_apim_lv_la_name_resource
  name: 'MicrosoftDataShareReceivedSnapshotLog'
  properties: {
    totalRetentionInDays: 30
    plan: 'Analytics'
    schema: {
      name: 'MicrosoftDataShareReceivedSnapshotLog'
    }
    retentionInDays: 30
  }
}

resource workspaces_apim_lv_la_name_MicrosoftDataShareSentSnapshotLog 'Microsoft.OperationalInsights/workspaces/tables@2021-12-01-preview' = {
  parent: workspaces_apim_lv_la_name_resource
  name: 'MicrosoftDataShareSentSnapshotLog'
  properties: {
    totalRetentionInDays: 30
    plan: 'Analytics'
    schema: {
      name: 'MicrosoftDataShareSentSnapshotLog'
    }
    retentionInDays: 30
  }
}

resource workspaces_apim_lv_la_name_MicrosoftDynamicsTelemetryPerformanceLogs 'Microsoft.OperationalInsights/workspaces/tables@2021-12-01-preview' = {
  parent: workspaces_apim_lv_la_name_resource
  name: 'MicrosoftDynamicsTelemetryPerformanceLogs'
  properties: {
    totalRetentionInDays: 30
    plan: 'Analytics'
    schema: {
      name: 'MicrosoftDynamicsTelemetryPerformanceLogs'
    }
    retentionInDays: 30
  }
}

resource workspaces_apim_lv_la_name_MicrosoftDynamicsTelemetrySystemMetricsLogs 'Microsoft.OperationalInsights/workspaces/tables@2021-12-01-preview' = {
  parent: workspaces_apim_lv_la_name_resource
  name: 'MicrosoftDynamicsTelemetrySystemMetricsLogs'
  properties: {
    totalRetentionInDays: 30
    plan: 'Analytics'
    schema: {
      name: 'MicrosoftDynamicsTelemetrySystemMetricsLogs'
    }
    retentionInDays: 30
  }
}

resource workspaces_apim_lv_la_name_MicrosoftHealthcareApisAuditLogs 'Microsoft.OperationalInsights/workspaces/tables@2021-12-01-preview' = {
  parent: workspaces_apim_lv_la_name_resource
  name: 'MicrosoftHealthcareApisAuditLogs'
  properties: {
    totalRetentionInDays: 30
    plan: 'Analytics'
    schema: {
      name: 'MicrosoftHealthcareApisAuditLogs'
    }
    retentionInDays: 30
  }
}

resource workspaces_apim_lv_la_name_NetworkAccessTraffic 'Microsoft.OperationalInsights/workspaces/tables@2021-12-01-preview' = {
  parent: workspaces_apim_lv_la_name_resource
  name: 'NetworkAccessTraffic'
  properties: {
    totalRetentionInDays: 30
    plan: 'Analytics'
    schema: {
      name: 'NetworkAccessTraffic'
    }
    retentionInDays: 30
  }
}

resource workspaces_apim_lv_la_name_NetworkSessions 'Microsoft.OperationalInsights/workspaces/tables@2021-12-01-preview' = {
  parent: workspaces_apim_lv_la_name_resource
  name: 'NetworkSessions'
  properties: {
    totalRetentionInDays: 30
    plan: 'Analytics'
    schema: {
      name: 'NetworkSessions'
    }
    retentionInDays: 30
  }
}

resource workspaces_apim_lv_la_name_NSPAccessLogs 'Microsoft.OperationalInsights/workspaces/tables@2021-12-01-preview' = {
  parent: workspaces_apim_lv_la_name_resource
  name: 'NSPAccessLogs'
  properties: {
    totalRetentionInDays: 30
    plan: 'Analytics'
    schema: {
      name: 'NSPAccessLogs'
    }
    retentionInDays: 30
  }
}

resource workspaces_apim_lv_la_name_NWConnectionMonitorDestinationListenerResult 'Microsoft.OperationalInsights/workspaces/tables@2021-12-01-preview' = {
  parent: workspaces_apim_lv_la_name_resource
  name: 'NWConnectionMonitorDestinationListenerResult'
  properties: {
    totalRetentionInDays: 30
    plan: 'Analytics'
    schema: {
      name: 'NWConnectionMonitorDestinationListenerResult'
    }
    retentionInDays: 30
  }
}

resource workspaces_apim_lv_la_name_NWConnectionMonitorDNSResult 'Microsoft.OperationalInsights/workspaces/tables@2021-12-01-preview' = {
  parent: workspaces_apim_lv_la_name_resource
  name: 'NWConnectionMonitorDNSResult'
  properties: {
    totalRetentionInDays: 30
    plan: 'Analytics'
    schema: {
      name: 'NWConnectionMonitorDNSResult'
    }
    retentionInDays: 30
  }
}

resource workspaces_apim_lv_la_name_NWConnectionMonitorPathResult 'Microsoft.OperationalInsights/workspaces/tables@2021-12-01-preview' = {
  parent: workspaces_apim_lv_la_name_resource
  name: 'NWConnectionMonitorPathResult'
  properties: {
    totalRetentionInDays: 30
    plan: 'Analytics'
    schema: {
      name: 'NWConnectionMonitorPathResult'
    }
    retentionInDays: 30
  }
}

resource workspaces_apim_lv_la_name_NWConnectionMonitorTestResult 'Microsoft.OperationalInsights/workspaces/tables@2021-12-01-preview' = {
  parent: workspaces_apim_lv_la_name_resource
  name: 'NWConnectionMonitorTestResult'
  properties: {
    totalRetentionInDays: 30
    plan: 'Analytics'
    schema: {
      name: 'NWConnectionMonitorTestResult'
    }
    retentionInDays: 30
  }
}

resource workspaces_apim_lv_la_name_OEPAirFlowTask 'Microsoft.OperationalInsights/workspaces/tables@2021-12-01-preview' = {
  parent: workspaces_apim_lv_la_name_resource
  name: 'OEPAirFlowTask'
  properties: {
    totalRetentionInDays: 30
    plan: 'Analytics'
    schema: {
      name: 'OEPAirFlowTask'
    }
    retentionInDays: 30
  }
}

resource workspaces_apim_lv_la_name_OEPElasticOperator 'Microsoft.OperationalInsights/workspaces/tables@2021-12-01-preview' = {
  parent: workspaces_apim_lv_la_name_resource
  name: 'OEPElasticOperator'
  properties: {
    totalRetentionInDays: 30
    plan: 'Analytics'
    schema: {
      name: 'OEPElasticOperator'
    }
    retentionInDays: 30
  }
}

resource workspaces_apim_lv_la_name_OEPElasticsearch 'Microsoft.OperationalInsights/workspaces/tables@2021-12-01-preview' = {
  parent: workspaces_apim_lv_la_name_resource
  name: 'OEPElasticsearch'
  properties: {
    totalRetentionInDays: 30
    plan: 'Analytics'
    schema: {
      name: 'OEPElasticsearch'
    }
    retentionInDays: 30
  }
}

resource workspaces_apim_lv_la_name_OfficeActivity 'Microsoft.OperationalInsights/workspaces/tables@2021-12-01-preview' = {
  parent: workspaces_apim_lv_la_name_resource
  name: 'OfficeActivity'
  properties: {
    totalRetentionInDays: 30
    plan: 'Analytics'
    schema: {
      name: 'OfficeActivity'
    }
    retentionInDays: 30
  }
}

resource workspaces_apim_lv_la_name_OLPSupplyChainEntityOperations 'Microsoft.OperationalInsights/workspaces/tables@2021-12-01-preview' = {
  parent: workspaces_apim_lv_la_name_resource
  name: 'OLPSupplyChainEntityOperations'
  properties: {
    totalRetentionInDays: 30
    plan: 'Analytics'
    schema: {
      name: 'OLPSupplyChainEntityOperations'
    }
    retentionInDays: 30
  }
}

resource workspaces_apim_lv_la_name_OLPSupplyChainEvents 'Microsoft.OperationalInsights/workspaces/tables@2021-12-01-preview' = {
  parent: workspaces_apim_lv_la_name_resource
  name: 'OLPSupplyChainEvents'
  properties: {
    totalRetentionInDays: 30
    plan: 'Analytics'
    schema: {
      name: 'OLPSupplyChainEvents'
    }
    retentionInDays: 30
  }
}

resource workspaces_apim_lv_la_name_Operation 'Microsoft.OperationalInsights/workspaces/tables@2021-12-01-preview' = {
  parent: workspaces_apim_lv_la_name_resource
  name: 'Operation'
  properties: {
    totalRetentionInDays: 30
    plan: 'Analytics'
    schema: {
      name: 'Operation'
    }
    retentionInDays: 30
  }
}

resource workspaces_apim_lv_la_name_Perf 'Microsoft.OperationalInsights/workspaces/tables@2021-12-01-preview' = {
  parent: workspaces_apim_lv_la_name_resource
  name: 'Perf'
  properties: {
    totalRetentionInDays: 30
    plan: 'Analytics'
    schema: {
      name: 'Perf'
    }
    retentionInDays: 30
  }
}

resource workspaces_apim_lv_la_name_PowerBIActivity 'Microsoft.OperationalInsights/workspaces/tables@2021-12-01-preview' = {
  parent: workspaces_apim_lv_la_name_resource
  name: 'PowerBIActivity'
  properties: {
    totalRetentionInDays: 30
    plan: 'Analytics'
    schema: {
      name: 'PowerBIActivity'
    }
    retentionInDays: 30
  }
}

resource workspaces_apim_lv_la_name_PowerBIAuditTenant 'Microsoft.OperationalInsights/workspaces/tables@2021-12-01-preview' = {
  parent: workspaces_apim_lv_la_name_resource
  name: 'PowerBIAuditTenant'
  properties: {
    totalRetentionInDays: 30
    plan: 'Analytics'
    schema: {
      name: 'PowerBIAuditTenant'
    }
    retentionInDays: 30
  }
}

resource workspaces_apim_lv_la_name_PowerBIDatasetsTenant 'Microsoft.OperationalInsights/workspaces/tables@2021-12-01-preview' = {
  parent: workspaces_apim_lv_la_name_resource
  name: 'PowerBIDatasetsTenant'
  properties: {
    totalRetentionInDays: 30
    plan: 'Analytics'
    schema: {
      name: 'PowerBIDatasetsTenant'
    }
    retentionInDays: 30
  }
}

resource workspaces_apim_lv_la_name_PowerBIDatasetsTenantPreview 'Microsoft.OperationalInsights/workspaces/tables@2021-12-01-preview' = {
  parent: workspaces_apim_lv_la_name_resource
  name: 'PowerBIDatasetsTenantPreview'
  properties: {
    totalRetentionInDays: 30
    plan: 'Analytics'
    schema: {
      name: 'PowerBIDatasetsTenantPreview'
    }
    retentionInDays: 30
  }
}

resource workspaces_apim_lv_la_name_PowerBIDatasetsWorkspace 'Microsoft.OperationalInsights/workspaces/tables@2021-12-01-preview' = {
  parent: workspaces_apim_lv_la_name_resource
  name: 'PowerBIDatasetsWorkspace'
  properties: {
    totalRetentionInDays: 30
    plan: 'Analytics'
    schema: {
      name: 'PowerBIDatasetsWorkspace'
    }
    retentionInDays: 30
  }
}

resource workspaces_apim_lv_la_name_PowerBIDatasetsWorkspacePreview 'Microsoft.OperationalInsights/workspaces/tables@2021-12-01-preview' = {
  parent: workspaces_apim_lv_la_name_resource
  name: 'PowerBIDatasetsWorkspacePreview'
  properties: {
    totalRetentionInDays: 30
    plan: 'Analytics'
    schema: {
      name: 'PowerBIDatasetsWorkspacePreview'
    }
    retentionInDays: 30
  }
}

resource workspaces_apim_lv_la_name_PowerBIReportUsageTenant 'Microsoft.OperationalInsights/workspaces/tables@2021-12-01-preview' = {
  parent: workspaces_apim_lv_la_name_resource
  name: 'PowerBIReportUsageTenant'
  properties: {
    totalRetentionInDays: 30
    plan: 'Analytics'
    schema: {
      name: 'PowerBIReportUsageTenant'
    }
    retentionInDays: 30
  }
}

resource workspaces_apim_lv_la_name_PowerBIReportUsageWorkspace 'Microsoft.OperationalInsights/workspaces/tables@2021-12-01-preview' = {
  parent: workspaces_apim_lv_la_name_resource
  name: 'PowerBIReportUsageWorkspace'
  properties: {
    totalRetentionInDays: 30
    plan: 'Analytics'
    schema: {
      name: 'PowerBIReportUsageWorkspace'
    }
    retentionInDays: 30
  }
}

resource workspaces_apim_lv_la_name_ProjectActivity 'Microsoft.OperationalInsights/workspaces/tables@2021-12-01-preview' = {
  parent: workspaces_apim_lv_la_name_resource
  name: 'ProjectActivity'
  properties: {
    totalRetentionInDays: 30
    plan: 'Analytics'
    schema: {
      name: 'ProjectActivity'
    }
    retentionInDays: 30
  }
}

resource workspaces_apim_lv_la_name_ProtectionStatus 'Microsoft.OperationalInsights/workspaces/tables@2021-12-01-preview' = {
  parent: workspaces_apim_lv_la_name_resource
  name: 'ProtectionStatus'
  properties: {
    totalRetentionInDays: 30
    plan: 'Analytics'
    schema: {
      name: 'ProtectionStatus'
    }
    retentionInDays: 30
  }
}

resource workspaces_apim_lv_la_name_PurviewDataSensitivityLogs 'Microsoft.OperationalInsights/workspaces/tables@2021-12-01-preview' = {
  parent: workspaces_apim_lv_la_name_resource
  name: 'PurviewDataSensitivityLogs'
  properties: {
    totalRetentionInDays: 30
    plan: 'Analytics'
    schema: {
      name: 'PurviewDataSensitivityLogs'
    }
    retentionInDays: 30
  }
}

resource workspaces_apim_lv_la_name_PurviewScanStatusLogs 'Microsoft.OperationalInsights/workspaces/tables@2021-12-01-preview' = {
  parent: workspaces_apim_lv_la_name_resource
  name: 'PurviewScanStatusLogs'
  properties: {
    totalRetentionInDays: 30
    plan: 'Analytics'
    schema: {
      name: 'PurviewScanStatusLogs'
    }
    retentionInDays: 30
  }
}

resource workspaces_apim_lv_la_name_PurviewSecurityLogs 'Microsoft.OperationalInsights/workspaces/tables@2021-12-01-preview' = {
  parent: workspaces_apim_lv_la_name_resource
  name: 'PurviewSecurityLogs'
  properties: {
    totalRetentionInDays: 30
    plan: 'Analytics'
    schema: {
      name: 'PurviewSecurityLogs'
    }
    retentionInDays: 30
  }
}

resource workspaces_apim_lv_la_name_ReservedCommonFields 'Microsoft.OperationalInsights/workspaces/tables@2021-12-01-preview' = {
  parent: workspaces_apim_lv_la_name_resource
  name: 'ReservedCommonFields'
  properties: {
    totalRetentionInDays: 30
    plan: 'Analytics'
    schema: {
      name: 'ReservedCommonFields'
    }
    retentionInDays: 30
  }
}

resource workspaces_apim_lv_la_name_ResourceManagementPublicAccessLogs 'Microsoft.OperationalInsights/workspaces/tables@2021-12-01-preview' = {
  parent: workspaces_apim_lv_la_name_resource
  name: 'ResourceManagementPublicAccessLogs'
  properties: {
    totalRetentionInDays: 30
    plan: 'Analytics'
    schema: {
      name: 'ResourceManagementPublicAccessLogs'
    }
    retentionInDays: 30
  }
}

resource workspaces_apim_lv_la_name_SecureScoreControls 'Microsoft.OperationalInsights/workspaces/tables@2021-12-01-preview' = {
  parent: workspaces_apim_lv_la_name_resource
  name: 'SecureScoreControls'
  properties: {
    totalRetentionInDays: 30
    plan: 'Analytics'
    schema: {
      name: 'SecureScoreControls'
    }
    retentionInDays: 30
  }
}

resource workspaces_apim_lv_la_name_SecureScores 'Microsoft.OperationalInsights/workspaces/tables@2021-12-01-preview' = {
  parent: workspaces_apim_lv_la_name_resource
  name: 'SecureScores'
  properties: {
    totalRetentionInDays: 30
    plan: 'Analytics'
    schema: {
      name: 'SecureScores'
    }
    retentionInDays: 30
  }
}

resource workspaces_apim_lv_la_name_SecurityAlert 'Microsoft.OperationalInsights/workspaces/tables@2021-12-01-preview' = {
  parent: workspaces_apim_lv_la_name_resource
  name: 'SecurityAlert'
  properties: {
    totalRetentionInDays: 30
    plan: 'Analytics'
    schema: {
      name: 'SecurityAlert'
    }
    retentionInDays: 30
  }
}

resource workspaces_apim_lv_la_name_SecurityBaseline 'Microsoft.OperationalInsights/workspaces/tables@2021-12-01-preview' = {
  parent: workspaces_apim_lv_la_name_resource
  name: 'SecurityBaseline'
  properties: {
    totalRetentionInDays: 30
    plan: 'Analytics'
    schema: {
      name: 'SecurityBaseline'
    }
    retentionInDays: 30
  }
}

resource workspaces_apim_lv_la_name_SecurityBaselineSummary 'Microsoft.OperationalInsights/workspaces/tables@2021-12-01-preview' = {
  parent: workspaces_apim_lv_la_name_resource
  name: 'SecurityBaselineSummary'
  properties: {
    totalRetentionInDays: 30
    plan: 'Analytics'
    schema: {
      name: 'SecurityBaselineSummary'
    }
    retentionInDays: 30
  }
}

resource workspaces_apim_lv_la_name_SecurityEvent 'Microsoft.OperationalInsights/workspaces/tables@2021-12-01-preview' = {
  parent: workspaces_apim_lv_la_name_resource
  name: 'SecurityEvent'
  properties: {
    totalRetentionInDays: 30
    plan: 'Analytics'
    schema: {
      name: 'SecurityEvent'
    }
    retentionInDays: 30
  }
}

resource workspaces_apim_lv_la_name_SecurityIncident 'Microsoft.OperationalInsights/workspaces/tables@2021-12-01-preview' = {
  parent: workspaces_apim_lv_la_name_resource
  name: 'SecurityIncident'
  properties: {
    totalRetentionInDays: 30
    plan: 'Analytics'
    schema: {
      name: 'SecurityIncident'
    }
    retentionInDays: 30
  }
}

resource workspaces_apim_lv_la_name_SecurityNestedRecommendation 'Microsoft.OperationalInsights/workspaces/tables@2021-12-01-preview' = {
  parent: workspaces_apim_lv_la_name_resource
  name: 'SecurityNestedRecommendation'
  properties: {
    totalRetentionInDays: 30
    plan: 'Analytics'
    schema: {
      name: 'SecurityNestedRecommendation'
    }
    retentionInDays: 30
  }
}

resource workspaces_apim_lv_la_name_SecurityRecommendation 'Microsoft.OperationalInsights/workspaces/tables@2021-12-01-preview' = {
  parent: workspaces_apim_lv_la_name_resource
  name: 'SecurityRecommendation'
  properties: {
    totalRetentionInDays: 30
    plan: 'Analytics'
    schema: {
      name: 'SecurityRecommendation'
    }
    retentionInDays: 30
  }
}

resource workspaces_apim_lv_la_name_SecurityRegulatoryCompliance 'Microsoft.OperationalInsights/workspaces/tables@2021-12-01-preview' = {
  parent: workspaces_apim_lv_la_name_resource
  name: 'SecurityRegulatoryCompliance'
  properties: {
    totalRetentionInDays: 30
    plan: 'Analytics'
    schema: {
      name: 'SecurityRegulatoryCompliance'
    }
    retentionInDays: 30
  }
}

resource workspaces_apim_lv_la_name_SentinelAudit 'Microsoft.OperationalInsights/workspaces/tables@2021-12-01-preview' = {
  parent: workspaces_apim_lv_la_name_resource
  name: 'SentinelAudit'
  properties: {
    totalRetentionInDays: 30
    plan: 'Analytics'
    schema: {
      name: 'SentinelAudit'
    }
    retentionInDays: 30
  }
}

resource workspaces_apim_lv_la_name_SentinelHealth 'Microsoft.OperationalInsights/workspaces/tables@2021-12-01-preview' = {
  parent: workspaces_apim_lv_la_name_resource
  name: 'SentinelHealth'
  properties: {
    totalRetentionInDays: 30
    plan: 'Analytics'
    schema: {
      name: 'SentinelHealth'
    }
    retentionInDays: 30
  }
}

resource workspaces_apim_lv_la_name_ServiceFabricOperationalEvent 'Microsoft.OperationalInsights/workspaces/tables@2021-12-01-preview' = {
  parent: workspaces_apim_lv_la_name_resource
  name: 'ServiceFabricOperationalEvent'
  properties: {
    totalRetentionInDays: 30
    plan: 'Analytics'
    schema: {
      name: 'ServiceFabricOperationalEvent'
    }
    retentionInDays: 30
  }
}

resource workspaces_apim_lv_la_name_ServiceFabricReliableActorEvent 'Microsoft.OperationalInsights/workspaces/tables@2021-12-01-preview' = {
  parent: workspaces_apim_lv_la_name_resource
  name: 'ServiceFabricReliableActorEvent'
  properties: {
    totalRetentionInDays: 30
    plan: 'Analytics'
    schema: {
      name: 'ServiceFabricReliableActorEvent'
    }
    retentionInDays: 30
  }
}

resource workspaces_apim_lv_la_name_ServiceFabricReliableServiceEvent 'Microsoft.OperationalInsights/workspaces/tables@2021-12-01-preview' = {
  parent: workspaces_apim_lv_la_name_resource
  name: 'ServiceFabricReliableServiceEvent'
  properties: {
    totalRetentionInDays: 30
    plan: 'Analytics'
    schema: {
      name: 'ServiceFabricReliableServiceEvent'
    }
    retentionInDays: 30
  }
}

resource workspaces_apim_lv_la_name_SignalRServiceDiagnosticLogs 'Microsoft.OperationalInsights/workspaces/tables@2021-12-01-preview' = {
  parent: workspaces_apim_lv_la_name_resource
  name: 'SignalRServiceDiagnosticLogs'
  properties: {
    totalRetentionInDays: 30
    plan: 'Analytics'
    schema: {
      name: 'SignalRServiceDiagnosticLogs'
    }
    retentionInDays: 30
  }
}

resource workspaces_apim_lv_la_name_SigninLogs 'Microsoft.OperationalInsights/workspaces/tables@2021-12-01-preview' = {
  parent: workspaces_apim_lv_la_name_resource
  name: 'SigninLogs'
  properties: {
    totalRetentionInDays: 30
    plan: 'Analytics'
    schema: {
      name: 'SigninLogs'
    }
    retentionInDays: 30
  }
}

resource workspaces_apim_lv_la_name_SQLSecurityAuditEvents 'Microsoft.OperationalInsights/workspaces/tables@2021-12-01-preview' = {
  parent: workspaces_apim_lv_la_name_resource
  name: 'SQLSecurityAuditEvents'
  properties: {
    totalRetentionInDays: 30
    plan: 'Analytics'
    schema: {
      name: 'SQLSecurityAuditEvents'
    }
    retentionInDays: 30
  }
}

resource workspaces_apim_lv_la_name_StorageAntimalwareScanResults 'Microsoft.OperationalInsights/workspaces/tables@2021-12-01-preview' = {
  parent: workspaces_apim_lv_la_name_resource
  name: 'StorageAntimalwareScanResults'
  properties: {
    totalRetentionInDays: 30
    plan: 'Analytics'
    schema: {
      name: 'StorageAntimalwareScanResults'
    }
    retentionInDays: 30
  }
}

resource workspaces_apim_lv_la_name_StorageBlobLogs 'Microsoft.OperationalInsights/workspaces/tables@2021-12-01-preview' = {
  parent: workspaces_apim_lv_la_name_resource
  name: 'StorageBlobLogs'
  properties: {
    totalRetentionInDays: 30
    plan: 'Analytics'
    schema: {
      name: 'StorageBlobLogs'
    }
    retentionInDays: 30
  }
}

resource workspaces_apim_lv_la_name_StorageCacheOperationEvents 'Microsoft.OperationalInsights/workspaces/tables@2021-12-01-preview' = {
  parent: workspaces_apim_lv_la_name_resource
  name: 'StorageCacheOperationEvents'
  properties: {
    totalRetentionInDays: 30
    plan: 'Analytics'
    schema: {
      name: 'StorageCacheOperationEvents'
    }
    retentionInDays: 30
  }
}

resource workspaces_apim_lv_la_name_StorageCacheUpgradeEvents 'Microsoft.OperationalInsights/workspaces/tables@2021-12-01-preview' = {
  parent: workspaces_apim_lv_la_name_resource
  name: 'StorageCacheUpgradeEvents'
  properties: {
    totalRetentionInDays: 30
    plan: 'Analytics'
    schema: {
      name: 'StorageCacheUpgradeEvents'
    }
    retentionInDays: 30
  }
}

resource workspaces_apim_lv_la_name_StorageCacheWarningEvents 'Microsoft.OperationalInsights/workspaces/tables@2021-12-01-preview' = {
  parent: workspaces_apim_lv_la_name_resource
  name: 'StorageCacheWarningEvents'
  properties: {
    totalRetentionInDays: 30
    plan: 'Analytics'
    schema: {
      name: 'StorageCacheWarningEvents'
    }
    retentionInDays: 30
  }
}

resource workspaces_apim_lv_la_name_StorageFileLogs 'Microsoft.OperationalInsights/workspaces/tables@2021-12-01-preview' = {
  parent: workspaces_apim_lv_la_name_resource
  name: 'StorageFileLogs'
  properties: {
    totalRetentionInDays: 30
    plan: 'Analytics'
    schema: {
      name: 'StorageFileLogs'
    }
    retentionInDays: 30
  }
}

resource workspaces_apim_lv_la_name_StorageQueueLogs 'Microsoft.OperationalInsights/workspaces/tables@2021-12-01-preview' = {
  parent: workspaces_apim_lv_la_name_resource
  name: 'StorageQueueLogs'
  properties: {
    totalRetentionInDays: 30
    plan: 'Analytics'
    schema: {
      name: 'StorageQueueLogs'
    }
    retentionInDays: 30
  }
}

resource workspaces_apim_lv_la_name_StorageTableLogs 'Microsoft.OperationalInsights/workspaces/tables@2021-12-01-preview' = {
  parent: workspaces_apim_lv_la_name_resource
  name: 'StorageTableLogs'
  properties: {
    totalRetentionInDays: 30
    plan: 'Analytics'
    schema: {
      name: 'StorageTableLogs'
    }
    retentionInDays: 30
  }
}

resource workspaces_apim_lv_la_name_SucceededIngestion 'Microsoft.OperationalInsights/workspaces/tables@2021-12-01-preview' = {
  parent: workspaces_apim_lv_la_name_resource
  name: 'SucceededIngestion'
  properties: {
    totalRetentionInDays: 30
    plan: 'Analytics'
    schema: {
      name: 'SucceededIngestion'
    }
    retentionInDays: 30
  }
}

resource workspaces_apim_lv_la_name_SynapseBigDataPoolApplicationsEnded 'Microsoft.OperationalInsights/workspaces/tables@2021-12-01-preview' = {
  parent: workspaces_apim_lv_la_name_resource
  name: 'SynapseBigDataPoolApplicationsEnded'
  properties: {
    totalRetentionInDays: 30
    plan: 'Analytics'
    schema: {
      name: 'SynapseBigDataPoolApplicationsEnded'
    }
    retentionInDays: 30
  }
}

resource workspaces_apim_lv_la_name_SynapseBuiltinSqlPoolRequestsEnded 'Microsoft.OperationalInsights/workspaces/tables@2021-12-01-preview' = {
  parent: workspaces_apim_lv_la_name_resource
  name: 'SynapseBuiltinSqlPoolRequestsEnded'
  properties: {
    totalRetentionInDays: 30
    plan: 'Analytics'
    schema: {
      name: 'SynapseBuiltinSqlPoolRequestsEnded'
    }
    retentionInDays: 30
  }
}

resource workspaces_apim_lv_la_name_SynapseDXCommand 'Microsoft.OperationalInsights/workspaces/tables@2021-12-01-preview' = {
  parent: workspaces_apim_lv_la_name_resource
  name: 'SynapseDXCommand'
  properties: {
    totalRetentionInDays: 30
    plan: 'Analytics'
    schema: {
      name: 'SynapseDXCommand'
    }
    retentionInDays: 30
  }
}

resource workspaces_apim_lv_la_name_SynapseDXFailedIngestion 'Microsoft.OperationalInsights/workspaces/tables@2021-12-01-preview' = {
  parent: workspaces_apim_lv_la_name_resource
  name: 'SynapseDXFailedIngestion'
  properties: {
    totalRetentionInDays: 30
    plan: 'Analytics'
    schema: {
      name: 'SynapseDXFailedIngestion'
    }
    retentionInDays: 30
  }
}

resource workspaces_apim_lv_la_name_SynapseDXIngestionBatching 'Microsoft.OperationalInsights/workspaces/tables@2021-12-01-preview' = {
  parent: workspaces_apim_lv_la_name_resource
  name: 'SynapseDXIngestionBatching'
  properties: {
    totalRetentionInDays: 30
    plan: 'Analytics'
    schema: {
      name: 'SynapseDXIngestionBatching'
    }
    retentionInDays: 30
  }
}

resource workspaces_apim_lv_la_name_SynapseDXQuery 'Microsoft.OperationalInsights/workspaces/tables@2021-12-01-preview' = {
  parent: workspaces_apim_lv_la_name_resource
  name: 'SynapseDXQuery'
  properties: {
    totalRetentionInDays: 30
    plan: 'Analytics'
    schema: {
      name: 'SynapseDXQuery'
    }
    retentionInDays: 30
  }
}

resource workspaces_apim_lv_la_name_SynapseDXSucceededIngestion 'Microsoft.OperationalInsights/workspaces/tables@2021-12-01-preview' = {
  parent: workspaces_apim_lv_la_name_resource
  name: 'SynapseDXSucceededIngestion'
  properties: {
    totalRetentionInDays: 30
    plan: 'Analytics'
    schema: {
      name: 'SynapseDXSucceededIngestion'
    }
    retentionInDays: 30
  }
}

resource workspaces_apim_lv_la_name_SynapseDXTableDetails 'Microsoft.OperationalInsights/workspaces/tables@2021-12-01-preview' = {
  parent: workspaces_apim_lv_la_name_resource
  name: 'SynapseDXTableDetails'
  properties: {
    totalRetentionInDays: 30
    plan: 'Analytics'
    schema: {
      name: 'SynapseDXTableDetails'
    }
    retentionInDays: 30
  }
}

resource workspaces_apim_lv_la_name_SynapseDXTableUsageStatistics 'Microsoft.OperationalInsights/workspaces/tables@2021-12-01-preview' = {
  parent: workspaces_apim_lv_la_name_resource
  name: 'SynapseDXTableUsageStatistics'
  properties: {
    totalRetentionInDays: 30
    plan: 'Analytics'
    schema: {
      name: 'SynapseDXTableUsageStatistics'
    }
    retentionInDays: 30
  }
}

resource workspaces_apim_lv_la_name_SynapseGatewayApiRequests 'Microsoft.OperationalInsights/workspaces/tables@2021-12-01-preview' = {
  parent: workspaces_apim_lv_la_name_resource
  name: 'SynapseGatewayApiRequests'
  properties: {
    totalRetentionInDays: 30
    plan: 'Analytics'
    schema: {
      name: 'SynapseGatewayApiRequests'
    }
    retentionInDays: 30
  }
}

resource workspaces_apim_lv_la_name_SynapseGatewayEvents 'Microsoft.OperationalInsights/workspaces/tables@2021-12-01-preview' = {
  parent: workspaces_apim_lv_la_name_resource
  name: 'SynapseGatewayEvents'
  properties: {
    totalRetentionInDays: 30
    plan: 'Analytics'
    schema: {
      name: 'SynapseGatewayEvents'
    }
    retentionInDays: 30
  }
}

resource workspaces_apim_lv_la_name_SynapseIntegrationActivityRuns 'Microsoft.OperationalInsights/workspaces/tables@2021-12-01-preview' = {
  parent: workspaces_apim_lv_la_name_resource
  name: 'SynapseIntegrationActivityRuns'
  properties: {
    totalRetentionInDays: 30
    plan: 'Analytics'
    schema: {
      name: 'SynapseIntegrationActivityRuns'
    }
    retentionInDays: 30
  }
}

resource workspaces_apim_lv_la_name_SynapseIntegrationActivityRunsEnded 'Microsoft.OperationalInsights/workspaces/tables@2021-12-01-preview' = {
  parent: workspaces_apim_lv_la_name_resource
  name: 'SynapseIntegrationActivityRunsEnded'
  properties: {
    totalRetentionInDays: 30
    plan: 'Analytics'
    schema: {
      name: 'SynapseIntegrationActivityRunsEnded'
    }
    retentionInDays: 30
  }
}

resource workspaces_apim_lv_la_name_SynapseIntegrationPipelineRuns 'Microsoft.OperationalInsights/workspaces/tables@2021-12-01-preview' = {
  parent: workspaces_apim_lv_la_name_resource
  name: 'SynapseIntegrationPipelineRuns'
  properties: {
    totalRetentionInDays: 30
    plan: 'Analytics'
    schema: {
      name: 'SynapseIntegrationPipelineRuns'
    }
    retentionInDays: 30
  }
}

resource workspaces_apim_lv_la_name_SynapseIntegrationPipelineRunsEnded 'Microsoft.OperationalInsights/workspaces/tables@2021-12-01-preview' = {
  parent: workspaces_apim_lv_la_name_resource
  name: 'SynapseIntegrationPipelineRunsEnded'
  properties: {
    totalRetentionInDays: 30
    plan: 'Analytics'
    schema: {
      name: 'SynapseIntegrationPipelineRunsEnded'
    }
    retentionInDays: 30
  }
}

resource workspaces_apim_lv_la_name_SynapseIntegrationTriggerRuns 'Microsoft.OperationalInsights/workspaces/tables@2021-12-01-preview' = {
  parent: workspaces_apim_lv_la_name_resource
  name: 'SynapseIntegrationTriggerRuns'
  properties: {
    totalRetentionInDays: 30
    plan: 'Analytics'
    schema: {
      name: 'SynapseIntegrationTriggerRuns'
    }
    retentionInDays: 30
  }
}

resource workspaces_apim_lv_la_name_SynapseIntegrationTriggerRunsEnded 'Microsoft.OperationalInsights/workspaces/tables@2021-12-01-preview' = {
  parent: workspaces_apim_lv_la_name_resource
  name: 'SynapseIntegrationTriggerRunsEnded'
  properties: {
    totalRetentionInDays: 30
    plan: 'Analytics'
    schema: {
      name: 'SynapseIntegrationTriggerRunsEnded'
    }
    retentionInDays: 30
  }
}

resource workspaces_apim_lv_la_name_SynapseRBACEvents 'Microsoft.OperationalInsights/workspaces/tables@2021-12-01-preview' = {
  parent: workspaces_apim_lv_la_name_resource
  name: 'SynapseRBACEvents'
  properties: {
    totalRetentionInDays: 30
    plan: 'Analytics'
    schema: {
      name: 'SynapseRBACEvents'
    }
    retentionInDays: 30
  }
}

resource workspaces_apim_lv_la_name_SynapseRbacOperations 'Microsoft.OperationalInsights/workspaces/tables@2021-12-01-preview' = {
  parent: workspaces_apim_lv_la_name_resource
  name: 'SynapseRbacOperations'
  properties: {
    totalRetentionInDays: 30
    plan: 'Analytics'
    schema: {
      name: 'SynapseRbacOperations'
    }
    retentionInDays: 30
  }
}

resource workspaces_apim_lv_la_name_SynapseScopePoolScopeJobsEnded 'Microsoft.OperationalInsights/workspaces/tables@2021-12-01-preview' = {
  parent: workspaces_apim_lv_la_name_resource
  name: 'SynapseScopePoolScopeJobsEnded'
  properties: {
    totalRetentionInDays: 30
    plan: 'Analytics'
    schema: {
      name: 'SynapseScopePoolScopeJobsEnded'
    }
    retentionInDays: 30
  }
}

resource workspaces_apim_lv_la_name_SynapseScopePoolScopeJobsStateChange 'Microsoft.OperationalInsights/workspaces/tables@2021-12-01-preview' = {
  parent: workspaces_apim_lv_la_name_resource
  name: 'SynapseScopePoolScopeJobsStateChange'
  properties: {
    totalRetentionInDays: 30
    plan: 'Analytics'
    schema: {
      name: 'SynapseScopePoolScopeJobsStateChange'
    }
    retentionInDays: 30
  }
}

resource workspaces_apim_lv_la_name_SynapseSqlPoolDmsWorkers 'Microsoft.OperationalInsights/workspaces/tables@2021-12-01-preview' = {
  parent: workspaces_apim_lv_la_name_resource
  name: 'SynapseSqlPoolDmsWorkers'
  properties: {
    totalRetentionInDays: 30
    plan: 'Analytics'
    schema: {
      name: 'SynapseSqlPoolDmsWorkers'
    }
    retentionInDays: 30
  }
}

resource workspaces_apim_lv_la_name_SynapseSqlPoolExecRequests 'Microsoft.OperationalInsights/workspaces/tables@2021-12-01-preview' = {
  parent: workspaces_apim_lv_la_name_resource
  name: 'SynapseSqlPoolExecRequests'
  properties: {
    totalRetentionInDays: 30
    plan: 'Analytics'
    schema: {
      name: 'SynapseSqlPoolExecRequests'
    }
    retentionInDays: 30
  }
}

resource workspaces_apim_lv_la_name_SynapseSqlPoolRequestSteps 'Microsoft.OperationalInsights/workspaces/tables@2021-12-01-preview' = {
  parent: workspaces_apim_lv_la_name_resource
  name: 'SynapseSqlPoolRequestSteps'
  properties: {
    totalRetentionInDays: 30
    plan: 'Analytics'
    schema: {
      name: 'SynapseSqlPoolRequestSteps'
    }
    retentionInDays: 30
  }
}

resource workspaces_apim_lv_la_name_SynapseSqlPoolSqlRequests 'Microsoft.OperationalInsights/workspaces/tables@2021-12-01-preview' = {
  parent: workspaces_apim_lv_la_name_resource
  name: 'SynapseSqlPoolSqlRequests'
  properties: {
    totalRetentionInDays: 30
    plan: 'Analytics'
    schema: {
      name: 'SynapseSqlPoolSqlRequests'
    }
    retentionInDays: 30
  }
}

resource workspaces_apim_lv_la_name_SynapseSqlPoolWaits 'Microsoft.OperationalInsights/workspaces/tables@2021-12-01-preview' = {
  parent: workspaces_apim_lv_la_name_resource
  name: 'SynapseSqlPoolWaits'
  properties: {
    totalRetentionInDays: 30
    plan: 'Analytics'
    schema: {
      name: 'SynapseSqlPoolWaits'
    }
    retentionInDays: 30
  }
}

resource workspaces_apim_lv_la_name_Syslog 'Microsoft.OperationalInsights/workspaces/tables@2021-12-01-preview' = {
  parent: workspaces_apim_lv_la_name_resource
  name: 'Syslog'
  properties: {
    totalRetentionInDays: 30
    plan: 'Analytics'
    schema: {
      name: 'Syslog'
    }
    retentionInDays: 30
  }
}

resource workspaces_apim_lv_la_name_ThreatIntelligenceIndicator 'Microsoft.OperationalInsights/workspaces/tables@2021-12-01-preview' = {
  parent: workspaces_apim_lv_la_name_resource
  name: 'ThreatIntelligenceIndicator'
  properties: {
    totalRetentionInDays: 30
    plan: 'Analytics'
    schema: {
      name: 'ThreatIntelligenceIndicator'
    }
    retentionInDays: 30
  }
}

resource workspaces_apim_lv_la_name_TSIIngress 'Microsoft.OperationalInsights/workspaces/tables@2021-12-01-preview' = {
  parent: workspaces_apim_lv_la_name_resource
  name: 'TSIIngress'
  properties: {
    totalRetentionInDays: 30
    plan: 'Analytics'
    schema: {
      name: 'TSIIngress'
    }
    retentionInDays: 30
  }
}

resource workspaces_apim_lv_la_name_Update 'Microsoft.OperationalInsights/workspaces/tables@2021-12-01-preview' = {
  parent: workspaces_apim_lv_la_name_resource
  name: 'Update'
  properties: {
    totalRetentionInDays: 30
    plan: 'Analytics'
    schema: {
      name: 'Update'
    }
    retentionInDays: 30
  }
}

resource workspaces_apim_lv_la_name_UpdateSummary 'Microsoft.OperationalInsights/workspaces/tables@2021-12-01-preview' = {
  parent: workspaces_apim_lv_la_name_resource
  name: 'UpdateSummary'
  properties: {
    totalRetentionInDays: 30
    plan: 'Analytics'
    schema: {
      name: 'UpdateSummary'
    }
    retentionInDays: 30
  }
}

resource workspaces_apim_lv_la_name_UrlClickEvents 'Microsoft.OperationalInsights/workspaces/tables@2021-12-01-preview' = {
  parent: workspaces_apim_lv_la_name_resource
  name: 'UrlClickEvents'
  properties: {
    totalRetentionInDays: 30
    plan: 'Analytics'
    schema: {
      name: 'UrlClickEvents'
    }
    retentionInDays: 30
  }
}

resource workspaces_apim_lv_la_name_Usage 'Microsoft.OperationalInsights/workspaces/tables@2021-12-01-preview' = {
  parent: workspaces_apim_lv_la_name_resource
  name: 'Usage'
  properties: {
    totalRetentionInDays: 90
    plan: 'Analytics'
    schema: {
      name: 'Usage'
    }
    retentionInDays: 90
  }
}

resource workspaces_apim_lv_la_name_VIAudit 'Microsoft.OperationalInsights/workspaces/tables@2021-12-01-preview' = {
  parent: workspaces_apim_lv_la_name_resource
  name: 'VIAudit'
  properties: {
    totalRetentionInDays: 30
    plan: 'Analytics'
    schema: {
      name: 'VIAudit'
    }
    retentionInDays: 30
  }
}

resource workspaces_apim_lv_la_name_VMBoundPort 'Microsoft.OperationalInsights/workspaces/tables@2021-12-01-preview' = {
  parent: workspaces_apim_lv_la_name_resource
  name: 'VMBoundPort'
  properties: {
    totalRetentionInDays: 30
    plan: 'Analytics'
    schema: {
      name: 'VMBoundPort'
    }
    retentionInDays: 30
  }
}

resource workspaces_apim_lv_la_name_VMComputer 'Microsoft.OperationalInsights/workspaces/tables@2021-12-01-preview' = {
  parent: workspaces_apim_lv_la_name_resource
  name: 'VMComputer'
  properties: {
    totalRetentionInDays: 30
    plan: 'Analytics'
    schema: {
      name: 'VMComputer'
    }
    retentionInDays: 30
  }
}

resource workspaces_apim_lv_la_name_VMConnection 'Microsoft.OperationalInsights/workspaces/tables@2021-12-01-preview' = {
  parent: workspaces_apim_lv_la_name_resource
  name: 'VMConnection'
  properties: {
    totalRetentionInDays: 30
    plan: 'Analytics'
    schema: {
      name: 'VMConnection'
    }
    retentionInDays: 30
  }
}

resource workspaces_apim_lv_la_name_VMProcess 'Microsoft.OperationalInsights/workspaces/tables@2021-12-01-preview' = {
  parent: workspaces_apim_lv_la_name_resource
  name: 'VMProcess'
  properties: {
    totalRetentionInDays: 30
    plan: 'Analytics'
    schema: {
      name: 'VMProcess'
    }
    retentionInDays: 30
  }
}

resource workspaces_apim_lv_la_name_W3CIISLog 'Microsoft.OperationalInsights/workspaces/tables@2021-12-01-preview' = {
  parent: workspaces_apim_lv_la_name_resource
  name: 'W3CIISLog'
  properties: {
    totalRetentionInDays: 30
    plan: 'Analytics'
    schema: {
      name: 'W3CIISLog'
    }
    retentionInDays: 30
  }
}

resource workspaces_apim_lv_la_name_Watchlist 'Microsoft.OperationalInsights/workspaces/tables@2021-12-01-preview' = {
  parent: workspaces_apim_lv_la_name_resource
  name: 'Watchlist'
  properties: {
    totalRetentionInDays: 30
    plan: 'Analytics'
    schema: {
      name: 'Watchlist'
    }
    retentionInDays: 30
  }
}

resource workspaces_apim_lv_la_name_WebPubSubConnectivity 'Microsoft.OperationalInsights/workspaces/tables@2021-12-01-preview' = {
  parent: workspaces_apim_lv_la_name_resource
  name: 'WebPubSubConnectivity'
  properties: {
    totalRetentionInDays: 30
    plan: 'Analytics'
    schema: {
      name: 'WebPubSubConnectivity'
    }
    retentionInDays: 30
  }
}

resource workspaces_apim_lv_la_name_WebPubSubHttpRequest 'Microsoft.OperationalInsights/workspaces/tables@2021-12-01-preview' = {
  parent: workspaces_apim_lv_la_name_resource
  name: 'WebPubSubHttpRequest'
  properties: {
    totalRetentionInDays: 30
    plan: 'Analytics'
    schema: {
      name: 'WebPubSubHttpRequest'
    }
    retentionInDays: 30
  }
}

resource workspaces_apim_lv_la_name_WebPubSubMessaging 'Microsoft.OperationalInsights/workspaces/tables@2021-12-01-preview' = {
  parent: workspaces_apim_lv_la_name_resource
  name: 'WebPubSubMessaging'
  properties: {
    totalRetentionInDays: 30
    plan: 'Analytics'
    schema: {
      name: 'WebPubSubMessaging'
    }
    retentionInDays: 30
  }
}

resource workspaces_apim_lv_la_name_WindowsEvent 'Microsoft.OperationalInsights/workspaces/tables@2021-12-01-preview' = {
  parent: workspaces_apim_lv_la_name_resource
  name: 'WindowsEvent'
  properties: {
    totalRetentionInDays: 30
    plan: 'Analytics'
    schema: {
      name: 'WindowsEvent'
    }
    retentionInDays: 30
  }
}

resource workspaces_apim_lv_la_name_WorkloadDiagnosticLogs 'Microsoft.OperationalInsights/workspaces/tables@2021-12-01-preview' = {
  parent: workspaces_apim_lv_la_name_resource
  name: 'WorkloadDiagnosticLogs'
  properties: {
    totalRetentionInDays: 30
    plan: 'Analytics'
    schema: {
      name: 'WorkloadDiagnosticLogs'
    }
    retentionInDays: 30
  }
}

resource workspaces_apim_lv_la_name_WVDAgentHealthStatus 'Microsoft.OperationalInsights/workspaces/tables@2021-12-01-preview' = {
  parent: workspaces_apim_lv_la_name_resource
  name: 'WVDAgentHealthStatus'
  properties: {
    totalRetentionInDays: 30
    plan: 'Analytics'
    schema: {
      name: 'WVDAgentHealthStatus'
    }
    retentionInDays: 30
  }
}

resource workspaces_apim_lv_la_name_WVDCheckpoints 'Microsoft.OperationalInsights/workspaces/tables@2021-12-01-preview' = {
  parent: workspaces_apim_lv_la_name_resource
  name: 'WVDCheckpoints'
  properties: {
    totalRetentionInDays: 30
    plan: 'Analytics'
    schema: {
      name: 'WVDCheckpoints'
    }
    retentionInDays: 30
  }
}

resource workspaces_apim_lv_la_name_WVDConnectionNetworkData 'Microsoft.OperationalInsights/workspaces/tables@2021-12-01-preview' = {
  parent: workspaces_apim_lv_la_name_resource
  name: 'WVDConnectionNetworkData'
  properties: {
    totalRetentionInDays: 30
    plan: 'Analytics'
    schema: {
      name: 'WVDConnectionNetworkData'
    }
    retentionInDays: 30
  }
}

resource workspaces_apim_lv_la_name_WVDConnections 'Microsoft.OperationalInsights/workspaces/tables@2021-12-01-preview' = {
  parent: workspaces_apim_lv_la_name_resource
  name: 'WVDConnections'
  properties: {
    totalRetentionInDays: 30
    plan: 'Analytics'
    schema: {
      name: 'WVDConnections'
    }
    retentionInDays: 30
  }
}

resource workspaces_apim_lv_la_name_WVDErrors 'Microsoft.OperationalInsights/workspaces/tables@2021-12-01-preview' = {
  parent: workspaces_apim_lv_la_name_resource
  name: 'WVDErrors'
  properties: {
    totalRetentionInDays: 30
    plan: 'Analytics'
    schema: {
      name: 'WVDErrors'
    }
    retentionInDays: 30
  }
}

resource workspaces_apim_lv_la_name_WVDFeeds 'Microsoft.OperationalInsights/workspaces/tables@2021-12-01-preview' = {
  parent: workspaces_apim_lv_la_name_resource
  name: 'WVDFeeds'
  properties: {
    totalRetentionInDays: 30
    plan: 'Analytics'
    schema: {
      name: 'WVDFeeds'
    }
    retentionInDays: 30
  }
}

resource workspaces_apim_lv_la_name_WVDHostRegistrations 'Microsoft.OperationalInsights/workspaces/tables@2021-12-01-preview' = {
  parent: workspaces_apim_lv_la_name_resource
  name: 'WVDHostRegistrations'
  properties: {
    totalRetentionInDays: 30
    plan: 'Analytics'
    schema: {
      name: 'WVDHostRegistrations'
    }
    retentionInDays: 30
  }
}

resource workspaces_apim_lv_la_name_WVDManagement 'Microsoft.OperationalInsights/workspaces/tables@2021-12-01-preview' = {
  parent: workspaces_apim_lv_la_name_resource
  name: 'WVDManagement'
  properties: {
    totalRetentionInDays: 30
    plan: 'Analytics'
    schema: {
      name: 'WVDManagement'
    }
    retentionInDays: 30
  }
}

resource workspaces_apim_lv_la_name_WVDSessionHostManagement 'Microsoft.OperationalInsights/workspaces/tables@2021-12-01-preview' = {
  parent: workspaces_apim_lv_la_name_resource
  name: 'WVDSessionHostManagement'
  properties: {
    totalRetentionInDays: 30
    plan: 'Analytics'
    schema: {
      name: 'WVDSessionHostManagement'
    }
    retentionInDays: 30
  }
}

resource solutions_SecurityCenterFree_apim_lv_la_name_resource 'Microsoft.OperationsManagement/solutions@2015-11-01-preview' = {
  name: solutions_SecurityCenterFree_apim_lv_la_name
  location: 'uksouth'
  plan: {
    name: 'SecurityCenterFree(apim-lv-la)'
    promotionCode: ''
    product: 'OMSGallery/SecurityCenterFree'
    publisher: 'Microsoft'
  }
  properties: {
    workspaceResourceId: workspaces_apim_lv_la_name_resource.id
    containedResources: []
  }
}

resource solutions_SecurityInsights_apim_lv_la_name_resource 'Microsoft.OperationsManagement/solutions@2015-11-01-preview' = {
  name: solutions_SecurityInsights_apim_lv_la_name
  location: 'UK South'
  plan: {
    name: 'SecurityInsights(apim-lv-la)'
    promotionCode: ''
    product: 'OMSGallery/SecurityInsights'
    publisher: 'Microsoft'
  }
  properties: {
    workspaceResourceId: workspaces_apim_lv_la_name_resource.id
    containedResources: []
  }
}

resource storageAccounts_mfapimdevportal_name_default 'Microsoft.Storage/storageAccounts/blobServices@2021-09-01' = {
  parent: storageAccounts_mfapimdevportal_name_resource
  name: 'default'
  sku: {
    name: 'Standard_GRS'
    tier: 'Standard'
  }
  properties: {
    cors: {
      corsRules: [
        {
          allowedOrigins: [
            '*'
          ]
          allowedMethods: [
            'DELETE'
            'GET'
            'HEAD'
            'MERGE'
            'POST'
            'OPTIONS'
            'PUT'
            'PATCH'
          ]
          maxAgeInSeconds: 0
          exposedHeaders: [
            '*'
          ]
          allowedHeaders: [
            '*'
          ]
        }
      ]
    }
    deleteRetentionPolicy: {
      allowPermanentDelete: false
      enabled: true
      days: 7
    }
    isVersioningEnabled: false
    changeFeed: {
      enabled: false
    }
    restorePolicy: {
      enabled: false
    }
    containerDeleteRetentionPolicy: {
      enabled: true
      days: 7
    }
  }
}

resource storageAccounts_mffuncstore01_name_default 'Microsoft.Storage/storageAccounts/blobServices@2021-09-01' = {
  parent: storageAccounts_mffuncstore01_name_resource
  name: 'default'
  sku: {
    name: 'Standard_LRS'
    tier: 'Standard'
  }
  properties: {
    cors: {
      corsRules: []
    }
    deleteRetentionPolicy: {
      allowPermanentDelete: false
      enabled: false
    }
  }
}

resource storageAccounts_storageaccountapimkb9d9_name_default 'Microsoft.Storage/storageAccounts/blobServices@2021-09-01' = {
  parent: storageAccounts_storageaccountapimkb9d9_name_resource
  name: 'default'
  sku: {
    name: 'Standard_LRS'
    tier: 'Standard'
  }
  properties: {
    cors: {
      corsRules: []
    }
    deleteRetentionPolicy: {
      allowPermanentDelete: false
      enabled: false
    }
  }
}

resource Microsoft_Storage_storageAccounts_fileServices_storageAccounts_mfapimdevportal_name_default 'Microsoft.Storage/storageAccounts/fileServices@2021-09-01' = {
  parent: storageAccounts_mfapimdevportal_name_resource
  name: 'default'
  sku: {
    name: 'Standard_GRS'
    tier: 'Standard'
  }
  properties: {
    protocolSettings: {
      smb: {
      }
    }
    cors: {
      corsRules: []
    }
    shareDeleteRetentionPolicy: {
      enabled: true
      days: 7
    }
  }
}

resource Microsoft_Storage_storageAccounts_fileServices_storageAccounts_mffuncstore01_name_default 'Microsoft.Storage/storageAccounts/fileServices@2021-09-01' = {
  parent: storageAccounts_mffuncstore01_name_resource
  name: 'default'
  sku: {
    name: 'Standard_LRS'
    tier: 'Standard'
  }
  properties: {
    protocolSettings: {
      smb: {
      }
    }
    cors: {
      corsRules: []
    }
    shareDeleteRetentionPolicy: {
      enabled: true
      days: 7
    }
  }
}

resource Microsoft_Storage_storageAccounts_fileServices_storageAccounts_storageaccountapimkb9d9_name_default 'Microsoft.Storage/storageAccounts/fileServices@2021-09-01' = {
  parent: storageAccounts_storageaccountapimkb9d9_name_resource
  name: 'default'
  sku: {
    name: 'Standard_LRS'
    tier: 'Standard'
  }
  properties: {
    protocolSettings: {
      smb: {
      }
    }
    cors: {
      corsRules: []
    }
    shareDeleteRetentionPolicy: {
      enabled: true
      days: 7
    }
  }
}

resource Microsoft_Storage_storageAccounts_queueServices_storageAccounts_mfapimdevportal_name_default 'Microsoft.Storage/storageAccounts/queueServices@2021-09-01' = {
  parent: storageAccounts_mfapimdevportal_name_resource
  name: 'default'
  properties: {
    cors: {
      corsRules: []
    }
  }
}

resource Microsoft_Storage_storageAccounts_queueServices_storageAccounts_mffuncstore01_name_default 'Microsoft.Storage/storageAccounts/queueServices@2021-09-01' = {
  parent: storageAccounts_mffuncstore01_name_resource
  name: 'default'
  properties: {
    cors: {
      corsRules: []
    }
  }
}

resource Microsoft_Storage_storageAccounts_queueServices_storageAccounts_storageaccountapimkb9d9_name_default 'Microsoft.Storage/storageAccounts/queueServices@2021-09-01' = {
  parent: storageAccounts_storageaccountapimkb9d9_name_resource
  name: 'default'
  properties: {
    cors: {
      corsRules: []
    }
  }
}

resource Microsoft_Storage_storageAccounts_tableServices_storageAccounts_mfapimdevportal_name_default 'Microsoft.Storage/storageAccounts/tableServices@2021-09-01' = {
  parent: storageAccounts_mfapimdevportal_name_resource
  name: 'default'
  properties: {
    cors: {
      corsRules: []
    }
  }
}

resource Microsoft_Storage_storageAccounts_tableServices_storageAccounts_mffuncstore01_name_default 'Microsoft.Storage/storageAccounts/tableServices@2021-09-01' = {
  parent: storageAccounts_mffuncstore01_name_resource
  name: 'default'
  properties: {
    cors: {
      corsRules: []
    }
  }
}

resource Microsoft_Storage_storageAccounts_tableServices_storageAccounts_storageaccountapimkb9d9_name_default 'Microsoft.Storage/storageAccounts/tableServices@2021-09-01' = {
  parent: storageAccounts_storageaccountapimkb9d9_name_resource
  name: 'default'
  properties: {
    cors: {
      corsRules: []
    }
  }
}

resource sites_mftodo_name_resource 'Microsoft.Web/sites@2022-03-01' = {
  name: sites_mftodo_name
  location: 'UK South'
  kind: 'app,linux'
  properties: {
    enabled: true
    hostNameSslStates: [
      {
        name: '${sites_mftodo_name}.azurewebsites.net'
        sslState: 'Disabled'
        hostType: 'Standard'
      }
      {
        name: '${sites_mftodo_name}.scm.azurewebsites.net'
        sslState: 'Disabled'
        hostType: 'Repository'
      }
    ]
    serverFarmId: serverfarms_todo_linux_plan_name_resource.id
    reserved: true
    isXenon: false
    hyperV: false
    vnetRouteAllEnabled: false
    vnetImagePullEnabled: false
    vnetContentShareEnabled: false
    siteConfig: {
      numberOfWorkers: 1
      linuxFxVersion: 'DOTNETCORE|6.0'
      acrUseManagedIdentityCreds: false
      alwaysOn: false
      http20Enabled: false
      functionAppScaleLimit: 0
      minimumElasticInstanceCount: 0
    }
    scmSiteAlsoStopped: false
    clientAffinityEnabled: false
    clientCertEnabled: false
    clientCertMode: 'Required'
    hostNamesDisabled: false
    customDomainVerificationId: '711912CEF04CD8210D408EBEEB861F4533C6AB91D305CC68590AF2C62EB6207F'
    containerSize: 0
    dailyMemoryTimeQuota: 0
    httpsOnly: true
    redundancyMode: 'None'
    storageAccountRequired: false
    keyVaultReferenceIdentity: 'SystemAssigned'
  }
}

resource sites_mftodo_name_ftp 'Microsoft.Web/sites/basicPublishingCredentialsPolicies@2022-03-01' = {
  parent: sites_mftodo_name_resource
  name: 'ftp'
  location: 'UK South'
  properties: {
    allow: true
  }
}

resource sites_mftodo_name_scm 'Microsoft.Web/sites/basicPublishingCredentialsPolicies@2022-03-01' = {
  parent: sites_mftodo_name_resource
  name: 'scm'
  location: 'UK South'
  properties: {
    allow: true
  }
}

resource sites_mftodo_name_web 'Microsoft.Web/sites/config@2022-03-01' = {
  parent: sites_mftodo_name_resource
  name: 'web'
  location: 'UK South'
  properties: {
    numberOfWorkers: 1
    defaultDocuments: [
      'Default.htm'
      'Default.html'
      'Default.asp'
      'index.htm'
      'index.html'
      'iisstart.htm'
      'default.aspx'
      'index.php'
      'hostingstart.html'
    ]
    netFrameworkVersion: 'v4.0'
    linuxFxVersion: 'DOTNETCORE|6.0'
    requestTracingEnabled: false
    remoteDebuggingEnabled: false
    remoteDebuggingVersion: 'VS2019'
    httpLoggingEnabled: false
    acrUseManagedIdentityCreds: false
    logsDirectorySizeLimit: 35
    detailedErrorLoggingEnabled: false
    publishingUsername: '$mftodo'
    scmType: 'None'
    use32BitWorkerProcess: true
    webSocketsEnabled: false
    alwaysOn: false
    managedPipelineMode: 'Integrated'
    virtualApplications: [
      {
        virtualPath: '/'
        physicalPath: 'site\\wwwroot'
        preloadEnabled: false
      }
    ]
    loadBalancing: 'LeastRequests'
    experiments: {
      rampUpRules: []
    }
    autoHealEnabled: false
    vnetRouteAllEnabled: false
    vnetPrivatePortsCount: 0
    localMySqlEnabled: false
    ipSecurityRestrictions: [
      {
        ipAddress: 'Any'
        action: 'Allow'
        priority: 2147483647
        name: 'Allow all'
        description: 'Allow all access'
      }
    ]
    scmIpSecurityRestrictions: [
      {
        ipAddress: 'Any'
        action: 'Allow'
        priority: 2147483647
        name: 'Allow all'
        description: 'Allow all access'
      }
    ]
    scmIpSecurityRestrictionsUseMain: false
    http20Enabled: false
    minTlsVersion: '1.2'
    scmMinTlsVersion: '1.2'
    ftpsState: 'AllAllowed'
    preWarmedInstanceCount: 0
    functionsRuntimeScaleMonitoringEnabled: false
    minimumElasticInstanceCount: 0
    azureStorageAccounts: {
    }
  }
}

resource sites_mftodo_name_fc61902a_301d_4c2c_a76e_7b69d12a90cb 'Microsoft.Web/sites/deployments@2022-03-01' = {
  parent: sites_mftodo_name_resource
  name: 'fc61902a-301d-4c2c-a76e-7b69d12a90cb'
  location: 'UK South'
  properties: {
    status: 4
    author_email: 'N/A'
    author: 'VS Code'
    deployer: 'Push-Deployer'
    message: 'Created via a push deployment'
    start_time: '2022-05-17T13:57:29.386386Z'
    end_time: '2022-05-17T13:57:33.4246795Z'
    active: true
  }
}

resource sites_mftodo_name_sites_mftodo_name_azurewebsites_net 'Microsoft.Web/sites/hostNameBindings@2022-03-01' = {
  parent: sites_mftodo_name_resource
  name: '${sites_mftodo_name}.azurewebsites.net'
  location: 'UK South'
  properties: {
    siteName: 'mftodo'
    hostNameType: 'Verified'
  }
}

resource sites_mftodo_name_2022_07_24T17_17_51_9300176 'Microsoft.Web/sites/snapshots@2015-08-01' = {
  parent: sites_mftodo_name_resource
  name: '2022-07-24T17_17_51_9300176'
}

resource sites_mftodo_name_2022_07_25T02_17_52_2609215 'Microsoft.Web/sites/snapshots@2015-08-01' = {
  parent: sites_mftodo_name_resource
  name: '2022-07-25T02_17_52_2609215'
}

resource sites_mftodo_name_2022_07_25T17_17_52_9651968 'Microsoft.Web/sites/snapshots@2015-08-01' = {
  parent: sites_mftodo_name_resource
  name: '2022-07-25T17_17_52_9651968'
}

resource sites_mftodo_name_2022_07_26T02_17_53_2454720 'Microsoft.Web/sites/snapshots@2015-08-01' = {
  parent: sites_mftodo_name_resource
  name: '2022-07-26T02_17_53_2454720'
}

resource sites_mftodo_name_2022_07_26T17_17_53_8337805 'Microsoft.Web/sites/snapshots@2015-08-01' = {
  parent: sites_mftodo_name_resource
  name: '2022-07-26T17_17_53_8337805'
}

resource sites_mftodo_name_2022_07_27T02_17_54_2288507 'Microsoft.Web/sites/snapshots@2015-08-01' = {
  parent: sites_mftodo_name_resource
  name: '2022-07-27T02_17_54_2288507'
}

resource sites_mftodo_name_2022_07_27T17_17_54_7595098 'Microsoft.Web/sites/snapshots@2015-08-01' = {
  parent: sites_mftodo_name_resource
  name: '2022-07-27T17_17_54_7595098'
}

resource sites_mftodo_name_2022_07_28T02_17_55_2787064 'Microsoft.Web/sites/snapshots@2015-08-01' = {
  parent: sites_mftodo_name_resource
  name: '2022-07-28T02_17_55_2787064'
}

resource sites_mftodo_name_2022_07_28T17_17_55_8178717 'Microsoft.Web/sites/snapshots@2015-08-01' = {
  parent: sites_mftodo_name_resource
  name: '2022-07-28T17_17_55_8178717'
}

resource sites_mftodo_name_2022_07_29T02_17_56_2019455 'Microsoft.Web/sites/snapshots@2015-08-01' = {
  parent: sites_mftodo_name_resource
  name: '2022-07-29T02_17_56_2019455'
}

resource sites_mftodo_name_2022_07_29T17_17_56_7868784 'Microsoft.Web/sites/snapshots@2015-08-01' = {
  parent: sites_mftodo_name_resource
  name: '2022-07-29T17_17_56_7868784'
}

resource sites_mftodo_name_2022_07_30T02_17_57_0896488 'Microsoft.Web/sites/snapshots@2015-08-01' = {
  parent: sites_mftodo_name_resource
  name: '2022-07-30T02_17_57_0896488'
}

resource sites_mftodo_name_2022_07_30T17_17_57_6432663 'Microsoft.Web/sites/snapshots@2015-08-01' = {
  parent: sites_mftodo_name_resource
  name: '2022-07-30T17_17_57_6432663'
}

resource sites_mftodo_name_2022_07_31T02_17_58_0216108 'Microsoft.Web/sites/snapshots@2015-08-01' = {
  parent: sites_mftodo_name_resource
  name: '2022-07-31T02_17_58_0216108'
}

resource sites_mftodo_name_2022_07_31T17_17_58_5298544 'Microsoft.Web/sites/snapshots@2015-08-01' = {
  parent: sites_mftodo_name_resource
  name: '2022-07-31T17_17_58_5298544'
}

resource sites_mftodo_name_2022_08_01T02_17_58_8628006 'Microsoft.Web/sites/snapshots@2015-08-01' = {
  parent: sites_mftodo_name_resource
  name: '2022-08-01T02_17_58_8628006'
}

resource sites_mftodo_name_2022_08_01T17_17_59_4199476 'Microsoft.Web/sites/snapshots@2015-08-01' = {
  parent: sites_mftodo_name_resource
  name: '2022-08-01T17_17_59_4199476'
}

resource sites_mftodo_name_2022_08_02T02_17_59_7285193 'Microsoft.Web/sites/snapshots@2015-08-01' = {
  parent: sites_mftodo_name_resource
  name: '2022-08-02T02_17_59_7285193'
}

resource sites_mftodo_name_2022_08_02T17_18_00_3740448 'Microsoft.Web/sites/snapshots@2015-08-01' = {
  parent: sites_mftodo_name_resource
  name: '2022-08-02T17_18_00_3740448'
}

resource sites_mftodo_name_2022_08_03T02_18_00_6468821 'Microsoft.Web/sites/snapshots@2015-08-01' = {
  parent: sites_mftodo_name_resource
  name: '2022-08-03T02_18_00_6468821'
}

resource sites_mftodo_name_2022_08_03T17_18_01_2751000 'Microsoft.Web/sites/snapshots@2015-08-01' = {
  parent: sites_mftodo_name_resource
  name: '2022-08-03T17_18_01_2751000'
}

resource sites_mftodo_name_2022_08_04T02_18_01_5517295 'Microsoft.Web/sites/snapshots@2015-08-01' = {
  parent: sites_mftodo_name_resource
  name: '2022-08-04T02_18_01_5517295'
}

resource sites_mftodo_name_2022_08_04T17_18_02_0995810 'Microsoft.Web/sites/snapshots@2015-08-01' = {
  parent: sites_mftodo_name_resource
  name: '2022-08-04T17_18_02_0995810'
}

resource sites_mftodo_name_2022_08_05T02_18_02_4170466 'Microsoft.Web/sites/snapshots@2015-08-01' = {
  parent: sites_mftodo_name_resource
  name: '2022-08-05T02_18_02_4170466'
}

resource sites_mftodo_name_2022_08_05T17_18_02_9575594 'Microsoft.Web/sites/snapshots@2015-08-01' = {
  parent: sites_mftodo_name_resource
  name: '2022-08-05T17_18_02_9575594'
}

resource sites_mftodo_name_2022_08_06T02_18_03_2727656 'Microsoft.Web/sites/snapshots@2015-08-01' = {
  parent: sites_mftodo_name_resource
  name: '2022-08-06T02_18_03_2727656'
}

resource sites_mftodo_name_2022_08_06T17_18_03_8112467 'Microsoft.Web/sites/snapshots@2015-08-01' = {
  parent: sites_mftodo_name_resource
  name: '2022-08-06T17_18_03_8112467'
}

resource sites_mftodo_name_2022_08_07T02_18_04_1607056 'Microsoft.Web/sites/snapshots@2015-08-01' = {
  parent: sites_mftodo_name_resource
  name: '2022-08-07T02_18_04_1607056'
}

resource sites_mftodo_name_2022_08_07T17_18_04_6680370 'Microsoft.Web/sites/snapshots@2015-08-01' = {
  parent: sites_mftodo_name_resource
  name: '2022-08-07T17_18_04_6680370'
}

resource sites_mftodo_name_2022_08_08T02_18_05_0920733 'Microsoft.Web/sites/snapshots@2015-08-01' = {
  parent: sites_mftodo_name_resource
  name: '2022-08-08T02_18_05_0920733'
}

resource sites_mftodo_name_2022_08_08T17_18_05_5523711 'Microsoft.Web/sites/snapshots@2015-08-01' = {
  parent: sites_mftodo_name_resource
  name: '2022-08-08T17_18_05_5523711'
}

resource sites_mftodo_name_2022_08_09T02_18_05_8661037 'Microsoft.Web/sites/snapshots@2015-08-01' = {
  parent: sites_mftodo_name_resource
  name: '2022-08-09T02_18_05_8661037'
}

resource sites_mftodo_name_2022_08_09T17_18_06_3742206 'Microsoft.Web/sites/snapshots@2015-08-01' = {
  parent: sites_mftodo_name_resource
  name: '2022-08-09T17_18_06_3742206'
}

resource sites_mftodo_name_2022_08_09T20_18_06_4778693 'Microsoft.Web/sites/snapshots@2015-08-01' = {
  parent: sites_mftodo_name_resource
  name: '2022-08-09T20_18_06_4778693'
}

resource sites_mftodo_name_2022_08_09T23_18_06_6403305 'Microsoft.Web/sites/snapshots@2015-08-01' = {
  parent: sites_mftodo_name_resource
  name: '2022-08-09T23_18_06_6403305'
}

resource sites_mftodo_name_2022_08_10T02_18_06_7898305 'Microsoft.Web/sites/snapshots@2015-08-01' = {
  parent: sites_mftodo_name_resource
  name: '2022-08-10T02_18_06_7898305'
}

resource sites_mftodo_name_2022_08_10T17_18_07_2807425 'Microsoft.Web/sites/snapshots@2015-08-01' = {
  parent: sites_mftodo_name_resource
  name: '2022-08-10T17_18_07_2807425'
}

resource sites_mftodo_name_2022_08_10T20_18_07_4408350 'Microsoft.Web/sites/snapshots@2015-08-01' = {
  parent: sites_mftodo_name_resource
  name: '2022-08-10T20_18_07_4408350'
}

resource sites_mftodo_name_2022_08_10T23_18_07_5013960 'Microsoft.Web/sites/snapshots@2015-08-01' = {
  parent: sites_mftodo_name_resource
  name: '2022-08-10T23_18_07_5013960'
}

resource sites_mftodo_name_2022_08_11T02_18_07_7559944 'Microsoft.Web/sites/snapshots@2015-08-01' = {
  parent: sites_mftodo_name_resource
  name: '2022-08-11T02_18_07_7559944'
}

resource sites_mftodo_name_2022_08_11T17_18_08_2434718 'Microsoft.Web/sites/snapshots@2015-08-01' = {
  parent: sites_mftodo_name_resource
  name: '2022-08-11T17_18_08_2434718'
}

resource sites_mftodo_name_2022_08_11T20_18_08_3797296 'Microsoft.Web/sites/snapshots@2015-08-01' = {
  parent: sites_mftodo_name_resource
  name: '2022-08-11T20_18_08_3797296'
}

resource sites_mftodo_name_2022_08_11T23_18_08_4798759 'Microsoft.Web/sites/snapshots@2015-08-01' = {
  parent: sites_mftodo_name_resource
  name: '2022-08-11T23_18_08_4798759'
}

resource sites_mftodo_name_2022_08_12T02_18_08_6785038 'Microsoft.Web/sites/snapshots@2015-08-01' = {
  parent: sites_mftodo_name_resource
  name: '2022-08-12T02_18_08_6785038'
}

resource sites_mftodo_name_2022_08_12T17_18_09_1622150 'Microsoft.Web/sites/snapshots@2015-08-01' = {
  parent: sites_mftodo_name_resource
  name: '2022-08-12T17_18_09_1622150'
}

resource sites_mftodo_name_2022_08_12T20_18_09_3120488 'Microsoft.Web/sites/snapshots@2015-08-01' = {
  parent: sites_mftodo_name_resource
  name: '2022-08-12T20_18_09_3120488'
}

resource sites_mftodo_name_2022_08_12T23_18_09_4213866 'Microsoft.Web/sites/snapshots@2015-08-01' = {
  parent: sites_mftodo_name_resource
  name: '2022-08-12T23_18_09_4213866'
}

resource sites_mftodo_name_2022_08_13T02_18_09_5166695 'Microsoft.Web/sites/snapshots@2015-08-01' = {
  parent: sites_mftodo_name_resource
  name: '2022-08-13T02_18_09_5166695'
}

resource sites_mftodo_name_2022_08_13T17_18_10_0438841 'Microsoft.Web/sites/snapshots@2015-08-01' = {
  parent: sites_mftodo_name_resource
  name: '2022-08-13T17_18_10_0438841'
}

resource sites_mftodo_name_2022_08_13T20_18_10_9889483 'Microsoft.Web/sites/snapshots@2015-08-01' = {
  parent: sites_mftodo_name_resource
  name: '2022-08-13T20_18_10_9889483'
}

resource sites_mftodo_name_2022_08_13T23_18_11_0040895 'Microsoft.Web/sites/snapshots@2015-08-01' = {
  parent: sites_mftodo_name_resource
  name: '2022-08-13T23_18_11_0040895'
}

resource sites_mftodo_name_2022_08_14T02_18_11_2763833 'Microsoft.Web/sites/snapshots@2015-08-01' = {
  parent: sites_mftodo_name_resource
  name: '2022-08-14T02_18_11_2763833'
}

resource sites_mftodo_name_2022_08_14T17_18_11_6693136 'Microsoft.Web/sites/snapshots@2015-08-01' = {
  parent: sites_mftodo_name_resource
  name: '2022-08-14T17_18_11_6693136'
}

resource sites_mftodo_name_2022_08_14T20_18_11_8330168 'Microsoft.Web/sites/snapshots@2015-08-01' = {
  parent: sites_mftodo_name_resource
  name: '2022-08-14T20_18_11_8330168'
}

resource sites_mftodo_name_2022_08_14T23_18_11_8948360 'Microsoft.Web/sites/snapshots@2015-08-01' = {
  parent: sites_mftodo_name_resource
  name: '2022-08-14T23_18_11_8948360'
}

resource sites_mftodo_name_2022_08_15T02_18_12_0120110 'Microsoft.Web/sites/snapshots@2015-08-01' = {
  parent: sites_mftodo_name_resource
  name: '2022-08-15T02_18_12_0120110'
}

resource sites_mftodo_name_2022_08_15T17_18_12_5697856 'Microsoft.Web/sites/snapshots@2015-08-01' = {
  parent: sites_mftodo_name_resource
  name: '2022-08-15T17_18_12_5697856'
}

resource sites_mftodo_name_2022_08_15T20_18_12_7895214 'Microsoft.Web/sites/snapshots@2015-08-01' = {
  parent: sites_mftodo_name_resource
  name: '2022-08-15T20_18_12_7895214'
}

resource sites_mftodo_name_2022_08_15T23_18_12_8249148 'Microsoft.Web/sites/snapshots@2015-08-01' = {
  parent: sites_mftodo_name_resource
  name: '2022-08-15T23_18_12_8249148'
}

resource sites_mftodo_name_2022_08_16T02_18_12_9366228 'Microsoft.Web/sites/snapshots@2015-08-01' = {
  parent: sites_mftodo_name_resource
  name: '2022-08-16T02_18_12_9366228'
}

resource sites_mftodo_name_2022_08_16T17_18_13_4927539 'Microsoft.Web/sites/snapshots@2015-08-01' = {
  parent: sites_mftodo_name_resource
  name: '2022-08-16T17_18_13_4927539'
}

resource sites_mftodo_name_2022_08_16T20_18_13_6107724 'Microsoft.Web/sites/snapshots@2015-08-01' = {
  parent: sites_mftodo_name_resource
  name: '2022-08-16T20_18_13_6107724'
}

resource sites_mftodo_name_2022_08_16T23_18_13_6878729 'Microsoft.Web/sites/snapshots@2015-08-01' = {
  parent: sites_mftodo_name_resource
  name: '2022-08-16T23_18_13_6878729'
}

resource sites_mftodo_name_2022_08_17T02_18_13_8129761 'Microsoft.Web/sites/snapshots@2015-08-01' = {
  parent: sites_mftodo_name_resource
  name: '2022-08-17T02_18_13_8129761'
}

resource sites_mftodo_name_2022_08_17T17_18_14_3442247 'Microsoft.Web/sites/snapshots@2015-08-01' = {
  parent: sites_mftodo_name_resource
  name: '2022-08-17T17_18_14_3442247'
}

resource sites_mftodo_name_2022_08_17T20_18_14_5666458 'Microsoft.Web/sites/snapshots@2015-08-01' = {
  parent: sites_mftodo_name_resource
  name: '2022-08-17T20_18_14_5666458'
}

resource sites_mftodo_name_2022_08_17T23_18_14_5776966 'Microsoft.Web/sites/snapshots@2015-08-01' = {
  parent: sites_mftodo_name_resource
  name: '2022-08-17T23_18_14_5776966'
}

resource sites_mftodo_name_2022_08_18T02_18_14_6850790 'Microsoft.Web/sites/snapshots@2015-08-01' = {
  parent: sites_mftodo_name_resource
  name: '2022-08-18T02_18_14_6850790'
}

resource sites_mftodo_name_2022_08_18T17_18_15_2505041 'Microsoft.Web/sites/snapshots@2015-08-01' = {
  parent: sites_mftodo_name_resource
  name: '2022-08-18T17_18_15_2505041'
}

resource sites_mftodo_name_2022_08_18T20_18_15_4431429 'Microsoft.Web/sites/snapshots@2015-08-01' = {
  parent: sites_mftodo_name_resource
  name: '2022-08-18T20_18_15_4431429'
}

resource sites_mftodo_name_2022_08_18T23_18_15_5448649 'Microsoft.Web/sites/snapshots@2015-08-01' = {
  parent: sites_mftodo_name_resource
  name: '2022-08-18T23_18_15_5448649'
}

resource sites_mftodo_name_2022_08_19T02_18_15_6761397 'Microsoft.Web/sites/snapshots@2015-08-01' = {
  parent: sites_mftodo_name_resource
  name: '2022-08-19T02_18_15_6761397'
}

resource sites_mftodo_name_2022_08_19T08_18_15_9935122 'Microsoft.Web/sites/snapshots@2015-08-01' = {
  parent: sites_mftodo_name_resource
  name: '2022-08-19T08_18_15_9935122'
}

resource sites_mftodo_name_2022_08_19T09_18_16_0136110 'Microsoft.Web/sites/snapshots@2015-08-01' = {
  parent: sites_mftodo_name_resource
  name: '2022-08-19T09_18_16_0136110'
}

resource sites_mftodo_name_2022_08_19T10_18_15_9966389 'Microsoft.Web/sites/snapshots@2015-08-01' = {
  parent: sites_mftodo_name_resource
  name: '2022-08-19T10_18_15_9966389'
}

resource sites_mftodo_name_2022_08_19T11_18_16_0114827 'Microsoft.Web/sites/snapshots@2015-08-01' = {
  parent: sites_mftodo_name_resource
  name: '2022-08-19T11_18_16_0114827'
}

resource sites_mftodo_name_2022_08_19T12_18_16_0687597 'Microsoft.Web/sites/snapshots@2015-08-01' = {
  parent: sites_mftodo_name_resource
  name: '2022-08-19T12_18_16_0687597'
}

resource sites_mftodo_name_2022_08_19T13_18_16_0767011 'Microsoft.Web/sites/snapshots@2015-08-01' = {
  parent: sites_mftodo_name_resource
  name: '2022-08-19T13_18_16_0767011'
}

resource sites_mftodo_name_2022_08_19T14_18_16_1818559 'Microsoft.Web/sites/snapshots@2015-08-01' = {
  parent: sites_mftodo_name_resource
  name: '2022-08-19T14_18_16_1818559'
}

resource sites_mftodo_name_2022_08_19T15_18_16_1680824 'Microsoft.Web/sites/snapshots@2015-08-01' = {
  parent: sites_mftodo_name_resource
  name: '2022-08-19T15_18_16_1680824'
}

resource sites_mftodo_name_2022_08_19T16_18_16_2159961 'Microsoft.Web/sites/snapshots@2015-08-01' = {
  parent: sites_mftodo_name_resource
  name: '2022-08-19T16_18_16_2159961'
}

resource sites_mftodo_name_2022_08_19T17_18_16_2804281 'Microsoft.Web/sites/snapshots@2015-08-01' = {
  parent: sites_mftodo_name_resource
  name: '2022-08-19T17_18_16_2804281'
}

resource sites_mftodo_name_2022_08_19T18_18_16_3503865 'Microsoft.Web/sites/snapshots@2015-08-01' = {
  parent: sites_mftodo_name_resource
  name: '2022-08-19T18_18_16_3503865'
}

resource sites_mftodo_name_2022_08_19T19_18_16_3210691 'Microsoft.Web/sites/snapshots@2015-08-01' = {
  parent: sites_mftodo_name_resource
  name: '2022-08-19T19_18_16_3210691'
}

resource sites_mftodo_name_2022_08_19T20_18_16_3749609 'Microsoft.Web/sites/snapshots@2015-08-01' = {
  parent: sites_mftodo_name_resource
  name: '2022-08-19T20_18_16_3749609'
}

resource sites_mftodo_name_2022_08_19T21_18_16_3906358 'Microsoft.Web/sites/snapshots@2015-08-01' = {
  parent: sites_mftodo_name_resource
  name: '2022-08-19T21_18_16_3906358'
}

resource sites_mftodo_name_2022_08_19T22_18_16_4339035 'Microsoft.Web/sites/snapshots@2015-08-01' = {
  parent: sites_mftodo_name_resource
  name: '2022-08-19T22_18_16_4339035'
}

resource sites_mftodo_name_2022_08_19T23_18_16_4696788 'Microsoft.Web/sites/snapshots@2015-08-01' = {
  parent: sites_mftodo_name_resource
  name: '2022-08-19T23_18_16_4696788'
}

resource sites_mftodo_name_2022_08_20T00_18_16_5628531 'Microsoft.Web/sites/snapshots@2015-08-01' = {
  parent: sites_mftodo_name_resource
  name: '2022-08-20T00_18_16_5628531'
}

resource sites_mftodo_name_2022_08_20T01_18_16_5475843 'Microsoft.Web/sites/snapshots@2015-08-01' = {
  parent: sites_mftodo_name_resource
  name: '2022-08-20T01_18_16_5475843'
}

resource sites_mftodo_name_2022_08_20T02_18_16_5655980 'Microsoft.Web/sites/snapshots@2015-08-01' = {
  parent: sites_mftodo_name_resource
  name: '2022-08-20T02_18_16_5655980'
}

resource sites_mftodo_name_2022_08_20T03_18_16_6054571 'Microsoft.Web/sites/snapshots@2015-08-01' = {
  parent: sites_mftodo_name_resource
  name: '2022-08-20T03_18_16_6054571'
}

resource sites_mftodo_name_2022_08_20T04_18_16_6638603 'Microsoft.Web/sites/snapshots@2015-08-01' = {
  parent: sites_mftodo_name_resource
  name: '2022-08-20T04_18_16_6638603'
}

resource sites_mftodo_name_2022_08_20T05_18_16_7346406 'Microsoft.Web/sites/snapshots@2015-08-01' = {
  parent: sites_mftodo_name_resource
  name: '2022-08-20T05_18_16_7346406'
}

resource sites_mftodo_name_2022_08_20T06_18_16_7053727 'Microsoft.Web/sites/snapshots@2015-08-01' = {
  parent: sites_mftodo_name_resource
  name: '2022-08-20T06_18_16_7053727'
}

resource sites_mftodo_name_2022_08_20T07_18_16_7405575 'Microsoft.Web/sites/snapshots@2015-08-01' = {
  parent: sites_mftodo_name_resource
  name: '2022-08-20T07_18_16_7405575'
}

resource sites_mftodo_name_2022_08_20T08_18_16_8021575 'Microsoft.Web/sites/snapshots@2015-08-01' = {
  parent: sites_mftodo_name_resource
  name: '2022-08-20T08_18_16_8021575'
}

resource sites_mftodo_name_2022_08_20T09_18_16_8373987 'Microsoft.Web/sites/snapshots@2015-08-01' = {
  parent: sites_mftodo_name_resource
  name: '2022-08-20T09_18_16_8373987'
}

resource sites_mftodo_name_2022_08_20T10_18_16_8485781 'Microsoft.Web/sites/snapshots@2015-08-01' = {
  parent: sites_mftodo_name_resource
  name: '2022-08-20T10_18_16_8485781'
}

resource sites_mftodo_name_2022_08_20T11_18_16_9001938 'Microsoft.Web/sites/snapshots@2015-08-01' = {
  parent: sites_mftodo_name_resource
  name: '2022-08-20T11_18_16_9001938'
}

resource sites_mftodo_name_2022_08_20T12_18_16_9159555 'Microsoft.Web/sites/snapshots@2015-08-01' = {
  parent: sites_mftodo_name_resource
  name: '2022-08-20T12_18_16_9159555'
}

resource sites_mftodo_name_2022_08_20T13_18_17_0018574 'Microsoft.Web/sites/snapshots@2015-08-01' = {
  parent: sites_mftodo_name_resource
  name: '2022-08-20T13_18_17_0018574'
}

resource sites_mftodo_name_2022_08_20T14_18_16_9980769 'Microsoft.Web/sites/snapshots@2015-08-01' = {
  parent: sites_mftodo_name_resource
  name: '2022-08-20T14_18_16_9980769'
}

resource sites_mftodo_name_2022_08_20T15_18_17_0263995 'Microsoft.Web/sites/snapshots@2015-08-01' = {
  parent: sites_mftodo_name_resource
  name: '2022-08-20T15_18_17_0263995'
}

resource sites_mftodo_name_2022_08_20T16_18_17_0708901 'Microsoft.Web/sites/snapshots@2015-08-01' = {
  parent: sites_mftodo_name_resource
  name: '2022-08-20T16_18_17_0708901'
}

resource sites_mftodo_name_2022_08_20T17_18_17_0895910 'Microsoft.Web/sites/snapshots@2015-08-01' = {
  parent: sites_mftodo_name_resource
  name: '2022-08-20T17_18_17_0895910'
}

resource sites_mftodo_name_2022_08_20T18_18_17_2133920 'Microsoft.Web/sites/snapshots@2015-08-01' = {
  parent: sites_mftodo_name_resource
  name: '2022-08-20T18_18_17_2133920'
}

resource sites_mftodo_name_2022_08_20T19_18_17_2002283 'Microsoft.Web/sites/snapshots@2015-08-01' = {
  parent: sites_mftodo_name_resource
  name: '2022-08-20T19_18_17_2002283'
}

resource sites_mftodo_name_2022_08_20T20_18_17_4104354 'Microsoft.Web/sites/snapshots@2015-08-01' = {
  parent: sites_mftodo_name_resource
  name: '2022-08-20T20_18_17_4104354'
}

resource sites_mftodo_name_2022_08_20T21_18_17_2383451 'Microsoft.Web/sites/snapshots@2015-08-01' = {
  parent: sites_mftodo_name_resource
  name: '2022-08-20T21_18_17_2383451'
}

resource sites_mftodo_name_2022_08_20T22_18_17_3106434 'Microsoft.Web/sites/snapshots@2015-08-01' = {
  parent: sites_mftodo_name_resource
  name: '2022-08-20T22_18_17_3106434'
}

resource sites_mftodo_name_2022_08_20T23_18_17_3273342 'Microsoft.Web/sites/snapshots@2015-08-01' = {
  parent: sites_mftodo_name_resource
  name: '2022-08-20T23_18_17_3273342'
}

resource sites_mftodo_name_2022_08_21T00_18_17_3405355 'Microsoft.Web/sites/snapshots@2015-08-01' = {
  parent: sites_mftodo_name_resource
  name: '2022-08-21T00_18_17_3405355'
}

resource sites_mftodo_name_2022_08_21T01_18_17_3733604 'Microsoft.Web/sites/snapshots@2015-08-01' = {
  parent: sites_mftodo_name_resource
  name: '2022-08-21T01_18_17_3733604'
}

resource sites_mftodo_name_2022_08_21T02_18_17_5141843 'Microsoft.Web/sites/snapshots@2015-08-01' = {
  parent: sites_mftodo_name_resource
  name: '2022-08-21T02_18_17_5141843'
}

resource sites_mftodo_name_2022_08_21T03_18_17_4855959 'Microsoft.Web/sites/snapshots@2015-08-01' = {
  parent: sites_mftodo_name_resource
  name: '2022-08-21T03_18_17_4855959'
}

resource sites_mftodo_name_2022_08_21T04_18_17_5100012 'Microsoft.Web/sites/snapshots@2015-08-01' = {
  parent: sites_mftodo_name_resource
  name: '2022-08-21T04_18_17_5100012'
}

resource sites_mftodo_name_2022_08_21T05_18_17_5521648 'Microsoft.Web/sites/snapshots@2015-08-01' = {
  parent: sites_mftodo_name_resource
  name: '2022-08-21T05_18_17_5521648'
}

resource sites_mftodo_name_2022_08_21T06_18_17_5695775 'Microsoft.Web/sites/snapshots@2015-08-01' = {
  parent: sites_mftodo_name_resource
  name: '2022-08-21T06_18_17_5695775'
}

resource sites_mftodo_name_2022_08_21T07_18_17_6075490 'Microsoft.Web/sites/snapshots@2015-08-01' = {
  parent: sites_mftodo_name_resource
  name: '2022-08-21T07_18_17_6075490'
}

resource sites_mftodo_name_2022_08_21T08_18_17_7143472 'Microsoft.Web/sites/snapshots@2015-08-01' = {
  parent: sites_mftodo_name_resource
  name: '2022-08-21T08_18_17_7143472'
}

resource sites_mftodo_name_2022_08_21T09_18_17_6962667 'Microsoft.Web/sites/snapshots@2015-08-01' = {
  parent: sites_mftodo_name_resource
  name: '2022-08-21T09_18_17_6962667'
}

resource sites_mftodo_name_2022_08_21T10_18_17_9091190 'Microsoft.Web/sites/snapshots@2015-08-01' = {
  parent: sites_mftodo_name_resource
  name: '2022-08-21T10_18_17_9091190'
}

resource sites_mftodo_name_2022_08_21T11_18_17_7942765 'Microsoft.Web/sites/snapshots@2015-08-01' = {
  parent: sites_mftodo_name_resource
  name: '2022-08-21T11_18_17_7942765'
}

resource sites_mftodo_name_2022_08_21T12_18_17_7863937 'Microsoft.Web/sites/snapshots@2015-08-01' = {
  parent: sites_mftodo_name_resource
  name: '2022-08-21T12_18_17_7863937'
}

resource sites_mftodo_name_2022_08_21T13_18_17_8841943 'Microsoft.Web/sites/snapshots@2015-08-01' = {
  parent: sites_mftodo_name_resource
  name: '2022-08-21T13_18_17_8841943'
}

resource sites_mftodo_name_2022_08_21T14_18_17_9032966 'Microsoft.Web/sites/snapshots@2015-08-01' = {
  parent: sites_mftodo_name_resource
  name: '2022-08-21T14_18_17_9032966'
}

resource sites_mftodo_name_2022_08_21T15_18_17_8945922 'Microsoft.Web/sites/snapshots@2015-08-01' = {
  parent: sites_mftodo_name_resource
  name: '2022-08-21T15_18_17_8945922'
}

resource sites_mftodo_name_2022_08_21T16_18_17_9144437 'Microsoft.Web/sites/snapshots@2015-08-01' = {
  parent: sites_mftodo_name_resource
  name: '2022-08-21T16_18_17_9144437'
}

resource sites_mftodo_name_2022_08_21T17_18_17_9819521 'Microsoft.Web/sites/snapshots@2015-08-01' = {
  parent: sites_mftodo_name_resource
  name: '2022-08-21T17_18_17_9819521'
}

resource sites_mftodo_name_2022_08_21T18_18_18_0116640 'Microsoft.Web/sites/snapshots@2015-08-01' = {
  parent: sites_mftodo_name_resource
  name: '2022-08-21T18_18_18_0116640'
}

resource sites_mftodo_name_2022_08_21T19_18_18_0317438 'Microsoft.Web/sites/snapshots@2015-08-01' = {
  parent: sites_mftodo_name_resource
  name: '2022-08-21T19_18_18_0317438'
}

resource sites_mftodo_name_2022_08_21T20_18_18_1164783 'Microsoft.Web/sites/snapshots@2015-08-01' = {
  parent: sites_mftodo_name_resource
  name: '2022-08-21T20_18_18_1164783'
}

resource sites_mftodo_name_2022_08_21T21_18_18_1094663 'Microsoft.Web/sites/snapshots@2015-08-01' = {
  parent: sites_mftodo_name_resource
  name: '2022-08-21T21_18_18_1094663'
}

resource sites_mftodo_name_2022_08_21T22_18_18_2350871 'Microsoft.Web/sites/snapshots@2015-08-01' = {
  parent: sites_mftodo_name_resource
  name: '2022-08-21T22_18_18_2350871'
}

resource sites_mftodo_name_2022_08_21T23_18_18_1948311 'Microsoft.Web/sites/snapshots@2015-08-01' = {
  parent: sites_mftodo_name_resource
  name: '2022-08-21T23_18_18_1948311'
}

resource sites_mftodo_name_2022_08_22T00_18_18_2414506 'Microsoft.Web/sites/snapshots@2015-08-01' = {
  parent: sites_mftodo_name_resource
  name: '2022-08-22T00_18_18_2414506'
}

resource sites_mftodo_name_2022_08_22T01_18_18_2903003 'Microsoft.Web/sites/snapshots@2015-08-01' = {
  parent: sites_mftodo_name_resource
  name: '2022-08-22T01_18_18_2903003'
}

resource sites_mftodo_name_2022_08_22T02_18_18_3108719 'Microsoft.Web/sites/snapshots@2015-08-01' = {
  parent: sites_mftodo_name_resource
  name: '2022-08-22T02_18_18_3108719'
}

resource sites_mftodo_name_2022_08_22T03_18_18_4096999 'Microsoft.Web/sites/snapshots@2015-08-01' = {
  parent: sites_mftodo_name_resource
  name: '2022-08-22T03_18_18_4096999'
}

resource sites_mftodo_name_2022_08_22T04_18_18_3907186 'Microsoft.Web/sites/snapshots@2015-08-01' = {
  parent: sites_mftodo_name_resource
  name: '2022-08-22T04_18_18_3907186'
}

resource sites_mftodo_name_2022_08_22T05_18_18_4224759 'Microsoft.Web/sites/snapshots@2015-08-01' = {
  parent: sites_mftodo_name_resource
  name: '2022-08-22T05_18_18_4224759'
}

resource sites_mftodo_name_2022_08_22T06_18_18_5337620 'Microsoft.Web/sites/snapshots@2015-08-01' = {
  parent: sites_mftodo_name_resource
  name: '2022-08-22T06_18_18_5337620'
}

resource sites_mftodo_name_2022_08_22T07_18_18_4973300 'Microsoft.Web/sites/snapshots@2015-08-01' = {
  parent: sites_mftodo_name_resource
  name: '2022-08-22T07_18_18_4973300'
}

resource sites_mftodo_name_2022_08_22T08_18_18_6105142 'Microsoft.Web/sites/snapshots@2015-08-01' = {
  parent: sites_mftodo_name_resource
  name: '2022-08-22T08_18_18_6105142'
}

resource sites_mftodo_name_2022_08_22T09_18_18_6059097 'Microsoft.Web/sites/snapshots@2015-08-01' = {
  parent: sites_mftodo_name_resource
  name: '2022-08-22T09_18_18_6059097'
}

resource sites_mftodo_name_2022_08_22T10_18_18_6277695 'Microsoft.Web/sites/snapshots@2015-08-01' = {
  parent: sites_mftodo_name_resource
  name: '2022-08-22T10_18_18_6277695'
}

resource sites_mftodo_name_2022_08_22T11_18_18_6585183 'Microsoft.Web/sites/snapshots@2015-08-01' = {
  parent: sites_mftodo_name_resource
  name: '2022-08-22T11_18_18_6585183'
}

resource sites_mftodo_name_2022_08_22T12_18_18_6851719 'Microsoft.Web/sites/snapshots@2015-08-01' = {
  parent: sites_mftodo_name_resource
  name: '2022-08-22T12_18_18_6851719'
}

resource sites_mftodo_name_2022_08_22T13_18_18_7332634 'Microsoft.Web/sites/snapshots@2015-08-01' = {
  parent: sites_mftodo_name_resource
  name: '2022-08-22T13_18_18_7332634'
}

resource sites_mftodo_name_2022_08_22T14_18_18_8429083 'Microsoft.Web/sites/snapshots@2015-08-01' = {
  parent: sites_mftodo_name_resource
  name: '2022-08-22T14_18_18_8429083'
}

resource sites_mftodo_name_2022_08_22T15_18_18_7971022 'Microsoft.Web/sites/snapshots@2015-08-01' = {
  parent: sites_mftodo_name_resource
  name: '2022-08-22T15_18_18_7971022'
}

resource sites_mftodo_name_2022_08_22T16_18_18_8405130 'Microsoft.Web/sites/snapshots@2015-08-01' = {
  parent: sites_mftodo_name_resource
  name: '2022-08-22T16_18_18_8405130'
}

resource sites_mftodo_name_2022_08_22T17_18_18_8720185 'Microsoft.Web/sites/snapshots@2015-08-01' = {
  parent: sites_mftodo_name_resource
  name: '2022-08-22T17_18_18_8720185'
}

resource sites_mftodo_name_2022_08_22T18_18_18_9189221 'Microsoft.Web/sites/snapshots@2015-08-01' = {
  parent: sites_mftodo_name_resource
  name: '2022-08-22T18_18_18_9189221'
}

resource sites_mftodo_name_2022_08_22T19_18_18_9435018 'Microsoft.Web/sites/snapshots@2015-08-01' = {
  parent: sites_mftodo_name_resource
  name: '2022-08-22T19_18_18_9435018'
}

resource sites_mftodo_name_2022_08_22T20_18_18_9941396 'Microsoft.Web/sites/snapshots@2015-08-01' = {
  parent: sites_mftodo_name_resource
  name: '2022-08-22T20_18_18_9941396'
}

resource sites_mftodo_name_2022_08_22T21_18_19_0407322 'Microsoft.Web/sites/snapshots@2015-08-01' = {
  parent: sites_mftodo_name_resource
  name: '2022-08-22T21_18_19_0407322'
}

resource sites_mftodo_name_2022_08_22T22_18_19_1246005 'Microsoft.Web/sites/snapshots@2015-08-01' = {
  parent: sites_mftodo_name_resource
  name: '2022-08-22T22_18_19_1246005'
}

resource sites_mftodo_name_2022_08_22T23_18_19_1200796 'Microsoft.Web/sites/snapshots@2015-08-01' = {
  parent: sites_mftodo_name_resource
  name: '2022-08-22T23_18_19_1200796'
}

resource sites_mftodo_name_2022_08_23T00_18_19_1510720 'Microsoft.Web/sites/snapshots@2015-08-01' = {
  parent: sites_mftodo_name_resource
  name: '2022-08-23T00_18_19_1510720'
}

resource sites_mftodo_name_2022_08_23T01_18_19_2054706 'Microsoft.Web/sites/snapshots@2015-08-01' = {
  parent: sites_mftodo_name_resource
  name: '2022-08-23T01_18_19_2054706'
}

resource sites_mftodo_name_2022_08_23T02_18_19_5517477 'Microsoft.Web/sites/snapshots@2015-08-01' = {
  parent: sites_mftodo_name_resource
  name: '2022-08-23T02_18_19_5517477'
}

resource sites_mftodo_name_2022_08_23T03_18_19_2316927 'Microsoft.Web/sites/snapshots@2015-08-01' = {
  parent: sites_mftodo_name_resource
  name: '2022-08-23T03_18_19_2316927'
}

resource sites_mftodo_name_2022_08_23T04_18_19_2483493 'Microsoft.Web/sites/snapshots@2015-08-01' = {
  parent: sites_mftodo_name_resource
  name: '2022-08-23T04_18_19_2483493'
}

resource sites_mftodo_name_2022_08_23T05_18_19_2919678 'Microsoft.Web/sites/snapshots@2015-08-01' = {
  parent: sites_mftodo_name_resource
  name: '2022-08-23T05_18_19_2919678'
}

resource sites_mftodo_name_2022_08_23T06_18_19_3694736 'Microsoft.Web/sites/snapshots@2015-08-01' = {
  parent: sites_mftodo_name_resource
  name: '2022-08-23T06_18_19_3694736'
}

resource sites_mftodo_name_2022_08_23T07_18_19_3899081 'Microsoft.Web/sites/snapshots@2015-08-01' = {
  parent: sites_mftodo_name_resource
  name: '2022-08-23T07_18_19_3899081'
}

resource sites_mftodo_name_2022_08_23T08_18_19_5131466 'Microsoft.Web/sites/snapshots@2015-08-01' = {
  parent: sites_mftodo_name_resource
  name: '2022-08-23T08_18_19_5131466'
}

resource smartdetectoralertrules_failure_anomalies_apim_kv_ai_name_resource 'microsoft.alertsmanagement/smartdetectoralertrules@2021-04-01' = {
  name: smartdetectoralertrules_failure_anomalies_apim_kv_ai_name
  location: 'global'
  properties: {
    description: 'Failure Anomalies notifies you of an unusual rise in the rate of failed HTTP requests or dependency calls.'
    state: 'Enabled'
    severity: 'Sev3'
    frequency: 'PT1M'
    detector: {
      id: 'FailureAnomaliesDetector'
    }
    scope: [
      components_apim_kv_ai_name_resource.id
    ]
    actionGroups: {
      groupIds: [
        actionGroups_Application_Insights_Smart_Detection_name_resource.id
      ]
    }
  }
}

resource Microsoft_ApiManagement_service_apis_service_mfapim_name_mfsimplefunction 'Microsoft.ApiManagement/service/apis@2021-12-01-preview' = {
  parent: service_mfapim_name_resource
  name: 'mfsimplefunction'
  properties: {
    displayName: 'mfSimpleFunction'
    apiRevision: '1'
    description: 'Import from "mfSimpleFunction" Function App'
    subscriptionRequired: true
    path: 'mfSimpleFunction'
    protocols: [
      'https'
    ]
    isCurrent: true
    apiVersionSetId: Microsoft_ApiManagement_service_apiVersionSets_service_mfapim_name_60ded4033ce2d043ef9e9462.id
  }
}

resource service_mfapim_name_mfsimplefunction_v2 'Microsoft.ApiManagement/service/apis@2021-12-01-preview' = {
  parent: service_mfapim_name_resource
  name: 'mfsimplefunction-v2'
  properties: {
    displayName: 'mfSimpleFunction'
    apiRevision: '1'
    description: 'Import from "mfSimpleFunction" Function App'
    subscriptionRequired: true
    path: 'mfSimpleFunction'
    protocols: [
      'https'
    ]
    isCurrent: true
    apiVersion: 'v2'
    apiVersionSetId: Microsoft_ApiManagement_service_apiVersionSets_service_mfapim_name_60ded4033ce2d043ef9e9462.id
  }
}

resource service_mfapim_name_keyvault_60b0ba6865c1eec905e07c72 'Microsoft.ApiManagement/service/apis/operations@2021-12-01-preview' = {
  parent: service_mfapim_name_keyvault
  name: '60b0ba6865c1eec905e07c72'
  properties: {
    displayName: 'Get Named Value from KeyVault (clone)'
    method: 'GET'
    urlTemplate: '/NamedValuePrivate'
    templateParameters: []
    responses: []
  }
  dependsOn: [

    service_mfapim_name_resource
  ]
}

resource service_mfapim_name_test_619e21224c93bdbdba04e826 'Microsoft.ApiManagement/service/apis/operations@2021-12-01-preview' = {
  parent: service_mfapim_name_test
  name: '619e21224c93bdbdba04e826'
  properties: {
    displayName: 'MockXml 500'
    method: 'POST'
    urlTemplate: '/mockxmlfail'
    templateParameters: []
    responses: []
  }
  dependsOn: [

    service_mfapim_name_resource
  ]
}

resource service_mfapim_name_dad_joke_629e00bd8e9642aebd59cf3c 'Microsoft.ApiManagement/service/apis/operations@2021-12-01-preview' = {
  parent: service_mfapim_name_dad_joke
  name: '629e00bd8e9642aebd59cf3c'
  properties: {
    displayName: 'Fragment Search For Jokes'
    method: 'POST'
    urlTemplate: '/joke-search-fragment'
    templateParameters: []
    description: 'Search For Jokes'
    request: {
      description: 'The search criteria'
      queryParameters: []
      headers: []
      representations: [
        {
          contentType: 'application/json'
          examples: {
            default: {
              value: {
              }
            }
          }
          schemaId: '61efc2384ce57211f8a0d52f'
          typeName: 'JokeSearchRequest'
        }
      ]
    }
    responses: [
      {
        statusCode: 200
        description: 'OK'
        representations: [
          {
            contentType: 'application/json'
            examples: {
              default: {
                value: {
                }
              }
            }
            schemaId: '61efc2384ce57211f8a0d52f'
            typeName: 'JokeSearchResponse'
          }
        ]
        headers: []
      }
    ]
  }
  dependsOn: [

    service_mfapim_name_resource
  ]
}

resource service_mfapim_name_test_caching 'Microsoft.ApiManagement/service/apis/operations@2021-12-01-preview' = {
  parent: service_mfapim_name_test
  name: 'caching'
  properties: {
    displayName: 'Caching'
    method: 'GET'
    urlTemplate: '/cachetest'
    templateParameters: []
    request: {
      queryParameters: [
        {
          name: 'prefix'
          type: 'string'
          values: [
            '040'
          ]
        }
      ]
      headers: []
      representations: []
    }
    responses: []
  }
  dependsOn: [

    service_mfapim_name_resource
  ]
}

resource service_mfapim_name_managedidentity_callkeyvault 'Microsoft.ApiManagement/service/apis/operations@2021-12-01-preview' = {
  parent: service_mfapim_name_managedidentity
  name: 'callkeyvault'
  properties: {
    displayName: 'CallKeyVault'
    method: 'GET'
    urlTemplate: '/getsecrets'
    templateParameters: []
    responses: []
  }
  dependsOn: [

    service_mfapim_name_resource
  ]
}

resource service_mfapim_name_test_combinexml 'Microsoft.ApiManagement/service/apis/operations@2021-12-01-preview' = {
  parent: service_mfapim_name_test
  name: 'combinexml'
  properties: {
    displayName: 'combinexml'
    method: 'GET'
    urlTemplate: '/combinexml'
    templateParameters: []
    responses: []
  }
  dependsOn: [

    service_mfapim_name_resource
  ]
}

resource service_mfapim_name_echo_api_create_resource 'Microsoft.ApiManagement/service/apis/operations@2021-12-01-preview' = {
  parent: service_mfapim_name_echo_api
  name: 'create-resource'
  properties: {
    displayName: 'Create resource'
    method: 'POST'
    urlTemplate: '/resource'
    templateParameters: []
    description: '# Title \n## Sub Title \n![an image](https://avatars.githubusercontent.com/u/1851394?v=4)\n\n`this is some code`\n\n1. First item\n2. Second item\n3. Third item\n\nThis <em>word</em> is italic\n\n<table style="border:1px solid black;">\n<tr><th>Header 1</th><th>Header 2</th></tr>\n<tr><td>Value 1</td><td>Value 2</td></tr>\n</table>\n\nA demonstration of a POST call based on the echo backend above. The request body is expected to contain JSON-formatted data (see example below). A policy is used to automatically transform any request sent in JSON directly to XML. In a real-world scenario this could be used to enable modern clients to speak to a legacy backend.'
    request: {
      queryParameters: []
      headers: []
      representations: [
        {
          contentType: 'application/json'
        }
      ]
    }
    responses: [
      {
        statusCode: 200
        representations: []
        headers: []
      }
    ]
  }
  dependsOn: [

    service_mfapim_name_resource
  ]
}

resource service_mfapim_name_echo_api_rev_1_create_resource 'Microsoft.ApiManagement/service/apis/operations@2021-12-01-preview' = {
  parent: service_mfapim_name_echo_api_rev_1
  name: 'create-resource'
  properties: {
    displayName: 'Create resource'
    method: 'POST'
    urlTemplate: '/resource'
    templateParameters: []
    description: '# Title \n## Sub Title \n![an image](https://avatars.githubusercontent.com/u/1851394?v=4)\n\n`this is some code`\n\n1. First item\n2. Second item\n3. Third item\n\nThis <em>word</em> is italic\n\n<table style="border:1px solid black;">\n<tr><th>Header 1</th><th>Header 2</th></tr>\n<tr><td>Value 1</td><td>Value 2</td></tr>\n</table>\n\nA demonstration of a POST call based on the echo backend above. The request body is expected to contain JSON-formatted data (see example below). A policy is used to automatically transform any request sent in JSON directly to XML. In a real-world scenario this could be used to enable modern clients to speak to a legacy backend.'
    request: {
      queryParameters: []
      headers: []
      representations: [
        {
          contentType: 'application/json'
        }
      ]
    }
    responses: [
      {
        statusCode: 200
        representations: []
        headers: []
      }
    ]
  }
  dependsOn: [

    service_mfapim_name_resource
  ]
}

resource service_mfapim_name_test_dateformat 'Microsoft.ApiManagement/service/apis/operations@2021-12-01-preview' = {
  parent: service_mfapim_name_test
  name: 'dateformat'
  properties: {
    displayName: 'DateFormat'
    method: 'POST'
    urlTemplate: '/dateformat'
    templateParameters: []
    request: {
      queryParameters: []
      headers: []
      representations: [
        {
          contentType: 'application/json'
          examples: {
            default: {
              value: {
              }
            }
          }
          schemaId: '1625473429490'
          typeName: 'SchemaRequestDefnApi1'
        }
      ]
    }
    responses: []
  }
  dependsOn: [

    service_mfapim_name_resource
  ]
}

resource service_mfapim_name_test_datetimeformat 'Microsoft.ApiManagement/service/apis/operations@2021-12-01-preview' = {
  parent: service_mfapim_name_test
  name: 'datetimeformat'
  properties: {
    displayName: 'DateTimeFormat'
    method: 'GET'
    urlTemplate: '/datetimeformat'
    templateParameters: []
    responses: []
  }
  dependsOn: [

    service_mfapim_name_resource
  ]
}

resource service_mfapim_name_test_echojson 'Microsoft.ApiManagement/service/apis/operations@2021-12-01-preview' = {
  parent: service_mfapim_name_test
  name: 'echojson'
  properties: {
    displayName: 'EchoJson'
    method: 'POST'
    urlTemplate: '/echojson'
    templateParameters: []
    responses: []
  }
  dependsOn: [

    service_mfapim_name_resource
  ]
}

resource service_mfapim_name_test_eventhublogger 'Microsoft.ApiManagement/service/apis/operations@2021-12-01-preview' = {
  parent: service_mfapim_name_test
  name: 'eventhublogger'
  properties: {
    displayName: 'EventHubLogger'
    method: 'GET'
    urlTemplate: '/eventhublogger'
    templateParameters: []
    responses: []
  }
  dependsOn: [

    service_mfapim_name_resource
  ]
}

resource service_mfapim_name_test_extractheader 'Microsoft.ApiManagement/service/apis/operations@2021-12-01-preview' = {
  parent: service_mfapim_name_test
  name: 'extractheader'
  properties: {
    displayName: 'ExtractHeader'
    method: 'POST'
    urlTemplate: '/extractheader'
    templateParameters: []
    responses: []
  }
  dependsOn: [

    service_mfapim_name_resource
  ]
}

resource service_mfapim_name_vmtest_get 'Microsoft.ApiManagement/service/apis/operations@2021-12-01-preview' = {
  parent: service_mfapim_name_vmtest
  name: 'get'
  properties: {
    displayName: 'GET'
    method: 'GET'
    urlTemplate: '/'
    templateParameters: []
    responses: []
  }
  dependsOn: [

    service_mfapim_name_resource
  ]
}

resource service_mfapim_name_dad_joke_get_a_random_joke 'Microsoft.ApiManagement/service/apis/operations@2021-12-01-preview' = {
  parent: service_mfapim_name_dad_joke
  name: 'get-a-random-joke'
  properties: {
    displayName: 'Get a Random Joke'
    method: 'GET'
    urlTemplate: '/get-random-joke'
    templateParameters: []
    description: 'Get a Random Joke'
    responses: [
      {
        statusCode: 200
        description: 'OK'
        representations: [
          {
            contentType: 'application/json'
            examples: {
              default: {
                value: {
                }
              }
            }
            schemaId: '61efc2384ce57211f8a0d52f'
            typeName: 'SingleJokeResponse'
          }
        ]
        headers: []
      }
    ]
  }
  dependsOn: [

    service_mfapim_name_resource
  ]
}

resource service_mfapim_name_ratings_get_get_getrating 'Microsoft.ApiManagement/service/apis/operations@2021-12-01-preview' = {
  parent: service_mfapim_name_ratings_get
  name: 'get-getrating'
  properties: {
    displayName: 'GetRating'
    method: 'GET'
    urlTemplate: '/GetRating'
    templateParameters: []
    responses: []
  }
  dependsOn: [

    service_mfapim_name_resource
  ]
}

resource service_mfapim_name_ratings_get_get_getratings 'Microsoft.ApiManagement/service/apis/operations@2021-12-01-preview' = {
  parent: service_mfapim_name_ratings_get
  name: 'get-getratings'
  properties: {
    displayName: 'GetRatings'
    method: 'GET'
    urlTemplate: '/GetRatings'
    templateParameters: []
    responses: []
  }
  dependsOn: [

    service_mfapim_name_resource
  ]
}

resource service_mfapim_name_dad_joke_get_joke 'Microsoft.ApiManagement/service/apis/operations@2021-12-01-preview' = {
  parent: service_mfapim_name_dad_joke
  name: 'get-joke'
  properties: {
    displayName: 'Get Joke'
    method: 'GET'
    urlTemplate: '/get-joke?id={id}'
    templateParameters: [
      {
        name: 'id'
        description: 'The id of the joke'
        type: 'string'
        required: true
        values: []
      }
    ]
    description: 'Get Joke'
    responses: [
      {
        statusCode: 200
        description: 'OK'
        representations: [
          {
            contentType: 'application/json'
            examples: {
              default: {
                value: {
                }
              }
            }
            schemaId: '61efc2384ce57211f8a0d52f'
            typeName: 'SingleJokeResponse'
          }
        ]
        headers: []
      }
    ]
  }
  dependsOn: [

    service_mfapim_name_resource
  ]
}

resource service_mfapim_name_keyvault_get_named_value_from_keyvault 'Microsoft.ApiManagement/service/apis/operations@2021-12-01-preview' = {
  parent: service_mfapim_name_keyvault
  name: 'get-named-value-from-keyvault'
  properties: {
    displayName: 'Get Named Value from KeyVault'
    method: 'GET'
    urlTemplate: '/NamedValue'
    templateParameters: []
    responses: []
  }
  dependsOn: [

    service_mfapim_name_resource
  ]
}

resource service_mfapim_name_products_get_get_product 'Microsoft.ApiManagement/service/apis/operations@2021-12-01-preview' = {
  parent: service_mfapim_name_products_get
  name: 'get-product'
  properties: {
    displayName: 'Get Product'
    method: 'GET'
    urlTemplate: '/GetProduct'
    templateParameters: []
    request: {
      queryParameters: [
        {
          name: 'productId'
          values: []
          type: operations_get_product_type
        }
      ]
      headers: []
      representations: []
    }
    responses: []
  }
  dependsOn: [

    service_mfapim_name_resource
  ]
}

resource service_mfapim_name_products_get_get_products 'Microsoft.ApiManagement/service/apis/operations@2021-12-01-preview' = {
  parent: service_mfapim_name_products_get
  name: 'get-products'
  properties: {
    displayName: 'Get Products'
    method: 'GET'
    urlTemplate: '/GetProducts'
    templateParameters: []
    responses: []
  }
  dependsOn: [

    service_mfapim_name_resource
  ]
}

resource service_mfapim_name_managedidentity_getresourcegroups 'Microsoft.ApiManagement/service/apis/operations@2021-12-01-preview' = {
  parent: service_mfapim_name_managedidentity
  name: 'getresourcegroups'
  properties: {
    displayName: 'GetResourceGroups'
    method: 'GET'
    urlTemplate: '/getresourcegroups'
    templateParameters: []
    responses: []
  }
  dependsOn: [

    service_mfapim_name_resource
  ]
}

resource service_mfapim_name_demo_conference_api_GetSession 'Microsoft.ApiManagement/service/apis/operations@2021-12-01-preview' = {
  parent: service_mfapim_name_demo_conference_api
  name: 'GetSession'
  properties: {
    displayName: 'GetSession'
    method: 'GET'
    urlTemplate: '/session/{id}'
    templateParameters: [
      {
        name: 'id'
        description: 'Format - int32.'
        type: 'integer'
        required: true
        values: []
      }
    ]
    description: 'Retreive a representation of a single session by Id'
    responses: [
      {
        statusCode: 200
        description: 'OK'
        representations: [
          {
            contentType: 'application/hal+json'
          }
          {
            contentType: 'text/plain'
          }
        ]
        headers: []
      }
    ]
  }
  dependsOn: [

    service_mfapim_name_resource
  ]
}

resource service_mfapim_name_demo_conference_api_GetSessions 'Microsoft.ApiManagement/service/apis/operations@2021-12-01-preview' = {
  parent: service_mfapim_name_demo_conference_api
  name: 'GetSessions'
  properties: {
    displayName: 'GetSessions'
    method: 'GET'
    urlTemplate: '/sessions'
    templateParameters: []
    description: 'A list of sessions.  Optional parameters work as filters to reduce the listed sessions.'
    request: {
      queryParameters: [
        {
          name: 'speakername'
          type: 'string'
          values: []
        }
        {
          name: 'dayno'
          description: 'Format - int32.'
          type: 'integer'
          values: []
        }
        {
          name: 'keyword'
          type: 'string'
          values: []
        }
      ]
      headers: []
      representations: []
    }
    responses: [
      {
        statusCode: 200
        description: 'OK'
        representations: [
          {
            contentType: 'application/vnd.collection+json'
          }
        ]
        headers: []
      }
    ]
  }
  dependsOn: [

    service_mfapim_name_resource
  ]
}

resource service_mfapim_name_demo_conference_api_GetSessionTopics 'Microsoft.ApiManagement/service/apis/operations@2021-12-01-preview' = {
  parent: service_mfapim_name_demo_conference_api
  name: 'GetSessionTopics'
  properties: {
    displayName: 'GetSessionTopics'
    method: 'GET'
    urlTemplate: '/session/{id}/topics'
    templateParameters: [
      {
        name: 'id'
        description: 'Format - int32.'
        type: 'integer'
        required: true
        values: []
      }
    ]
    description: 'A list of topics covered by a particular session'
    responses: [
      {
        statusCode: 200
        description: 'OK'
        representations: [
          {
            contentType: 'application/vnd.collection+json'
          }
        ]
        headers: []
      }
    ]
  }
  dependsOn: [

    service_mfapim_name_resource
  ]
}

resource service_mfapim_name_mfsimplefunction_get_simplefunctionget 'Microsoft.ApiManagement/service/apis/operations@2021-12-01-preview' = {
  parent: Microsoft_ApiManagement_service_apis_service_mfapim_name_mfsimplefunction
  name: 'get-simplefunctionget'
  properties: {
    displayName: 'SimpleFunctionGet'
    method: 'GET'
    urlTemplate: '/SimpleFunctionGet'
    templateParameters: []
    request: {
      queryParameters: [
        {
          name: 'name'
          type: 'string'
          values: []
        }
      ]
      headers: []
      representations: []
    }
    responses: []
  }
  dependsOn: [

    service_mfapim_name_resource
  ]
}

resource service_mfapim_name_mfsimplefunction_v2_get_simplefunctionget 'Microsoft.ApiManagement/service/apis/operations@2021-12-01-preview' = {
  parent: service_mfapim_name_mfsimplefunction_v2
  name: 'get-simplefunctionget'
  properties: {
    displayName: 'SimpleFunctionGet'
    method: 'GET'
    urlTemplate: '/SimpleFunctionGet'
    templateParameters: []
    request: {
      queryParameters: [
        {
          name: 'name'
          type: 'string'
          values: []
        }
      ]
      headers: []
      representations: []
    }
    responses: []
  }
  dependsOn: [

    service_mfapim_name_resource
  ]
}

resource service_mfapim_name_demo_conference_api_GetSpeaker 'Microsoft.ApiManagement/service/apis/operations@2021-12-01-preview' = {
  parent: service_mfapim_name_demo_conference_api
  name: 'GetSpeaker'
  properties: {
    displayName: 'GetSpeaker'
    method: 'GET'
    urlTemplate: '/speaker/{id}'
    templateParameters: [
      {
        name: 'id'
        description: 'Format - int32.'
        type: 'integer'
        required: true
        values: []
      }
    ]
    responses: [
      {
        statusCode: 200
        description: 'OK'
        representations: [
          {
            contentType: 'application/vnd.hal+json'
          }
          {
            contentType: 'text/plain'
          }
        ]
        headers: []
      }
    ]
  }
  dependsOn: [

    service_mfapim_name_resource
  ]
}

resource service_mfapim_name_demo_conference_api_GetSpeakers 'Microsoft.ApiManagement/service/apis/operations@2021-12-01-preview' = {
  parent: service_mfapim_name_demo_conference_api
  name: 'GetSpeakers'
  properties: {
    displayName: 'GetSpeakers'
    method: 'GET'
    urlTemplate: '/speakers'
    templateParameters: []
    request: {
      queryParameters: [
        {
          name: 'dayno'
          description: 'Format - int32.'
          type: 'integer'
          values: []
        }
        {
          name: 'speakername'
          type: 'string'
          values: []
        }
      ]
      headers: []
      representations: []
    }
    responses: [
      {
        statusCode: 200
        description: 'OK'
        representations: [
          {
            contentType: 'application/vnd.collection+json'
          }
        ]
        headers: []
      }
    ]
  }
  dependsOn: [

    service_mfapim_name_resource
  ]
}

resource service_mfapim_name_demo_conference_api_GetSpeakerSessions 'Microsoft.ApiManagement/service/apis/operations@2021-12-01-preview' = {
  parent: service_mfapim_name_demo_conference_api
  name: 'GetSpeakerSessions'
  properties: {
    displayName: 'GetSpeakerSessions'
    method: 'GET'
    urlTemplate: '/speaker/{id}/sessions'
    templateParameters: [
      {
        name: 'id'
        description: 'Format - int32.'
        type: 'integer'
        required: true
        values: []
      }
    ]
    responses: [
      {
        statusCode: 200
        description: 'OK'
        representations: [
          {
            contentType: 'application/vnd.collection+json'
          }
        ]
        headers: []
      }
    ]
  }
  dependsOn: [

    service_mfapim_name_resource
  ]
}

resource service_mfapim_name_demo_conference_api_GetSpeakerTopics 'Microsoft.ApiManagement/service/apis/operations@2021-12-01-preview' = {
  parent: service_mfapim_name_demo_conference_api
  name: 'GetSpeakerTopics'
  properties: {
    displayName: 'GetSpeakerTopics'
    method: 'GET'
    urlTemplate: '/speaker/{id}/topics'
    templateParameters: [
      {
        name: 'id'
        description: 'Format - int32.'
        type: 'integer'
        required: true
        values: []
      }
    ]
    responses: [
      {
        statusCode: 200
        description: 'OK'
        representations: [
          {
            contentType: 'application/vnd.collection+json'
          }
        ]
        headers: []
      }
    ]
  }
  dependsOn: [

    service_mfapim_name_resource
  ]
}

resource service_mfapim_name_demo_conference_api_GetTopic 'Microsoft.ApiManagement/service/apis/operations@2021-12-01-preview' = {
  parent: service_mfapim_name_demo_conference_api
  name: 'GetTopic'
  properties: {
    displayName: 'GetTopic'
    method: 'GET'
    urlTemplate: '/topic/{id}'
    templateParameters: [
      {
        name: 'id'
        description: 'Format - int32.'
        type: 'integer'
        required: true
        values: []
      }
    ]
    responses: [
      {
        statusCode: 200
        description: 'OK'
        representations: [
          {
            contentType: 'application/hal+json'
          }
        ]
        headers: []
      }
    ]
  }
  dependsOn: [

    service_mfapim_name_resource
  ]
}

resource service_mfapim_name_demo_conference_api_GetTopics 'Microsoft.ApiManagement/service/apis/operations@2021-12-01-preview' = {
  parent: service_mfapim_name_demo_conference_api
  name: 'GetTopics'
  properties: {
    displayName: 'GetTopics'
    method: 'GET'
    urlTemplate: '/topics'
    templateParameters: []
    request: {
      queryParameters: [
        {
          name: 'dayno'
          description: 'Format - int32.'
          type: 'integer'
          values: []
        }
      ]
      headers: []
      representations: []
    }
    responses: [
      {
        statusCode: 200
        description: 'OK'
        representations: [
          {
            contentType: 'application/vnd.collection+json'
          }
        ]
        headers: []
      }
    ]
  }
  dependsOn: [

    service_mfapim_name_resource
  ]
}

resource service_mfapim_name_demo_conference_api_GetTopicSessions 'Microsoft.ApiManagement/service/apis/operations@2021-12-01-preview' = {
  parent: service_mfapim_name_demo_conference_api
  name: 'GetTopicSessions'
  properties: {
    displayName: 'GetTopicSessions'
    method: 'GET'
    urlTemplate: '/topic/{id}/sessions'
    templateParameters: [
      {
        name: 'id'
        description: 'Format - int32.'
        type: 'integer'
        required: true
        values: []
      }
    ]
    responses: [
      {
        statusCode: 200
        description: 'OK'
        representations: [
          {
            contentType: 'application/vnd.collection+json'
          }
        ]
        headers: []
      }
    ]
  }
  dependsOn: [

    service_mfapim_name_resource
  ]
}

resource service_mfapim_name_demo_conference_api_GetTopicSpeakers 'Microsoft.ApiManagement/service/apis/operations@2021-12-01-preview' = {
  parent: service_mfapim_name_demo_conference_api
  name: 'GetTopicSpeakers'
  properties: {
    displayName: 'GetTopicSpeakers'
    method: 'GET'
    urlTemplate: '/topic/{id}/speakers'
    templateParameters: [
      {
        name: 'id'
        description: 'Format - int32.'
        type: 'integer'
        required: true
        values: []
      }
    ]
    responses: [
      {
        statusCode: 200
        description: 'OK'
        representations: [
          {
            contentType: 'application/vnd.collection+json'
          }
        ]
        headers: []
      }
    ]
  }
  dependsOn: [

    service_mfapim_name_resource
  ]
}

resource service_mfapim_name_users_get_get_user 'Microsoft.ApiManagement/service/apis/operations@2021-12-01-preview' = {
  parent: service_mfapim_name_users_get
  name: 'get-user'
  properties: {
    displayName: 'Get User'
    method: 'GET'
    urlTemplate: '/GetUser'
    templateParameters: []
    request: {
      queryParameters: [
        {
          name: 'userId'
          values: []
          type: operations_get_user_type
        }
      ]
      headers: []
      representations: []
    }
    responses: []
  }
  dependsOn: [

    service_mfapim_name_resource
  ]
}

resource service_mfapim_name_users_get_get_users 'Microsoft.ApiManagement/service/apis/operations@2021-12-01-preview' = {
  parent: service_mfapim_name_users_get
  name: 'get-users'
  properties: {
    displayName: 'Get Users'
    method: 'GET'
    urlTemplate: '/GetUsers'
    templateParameters: []
    responses: []
  }
  dependsOn: [

    service_mfapim_name_resource
  ]
}

resource service_mfapim_name_vmtest_graphql 'Microsoft.ApiManagement/service/apis/operations@2021-12-01-preview' = {
  parent: service_mfapim_name_vmtest
  name: 'graphql'
  properties: {
    displayName: 'GraphQL'
    method: 'GET'
    urlTemplate: '/graphiql'
    templateParameters: []
    responses: []
  }
  dependsOn: [

    service_mfapim_name_resource
  ]
}

resource service_mfapim_name_test_handlefailbody 'Microsoft.ApiManagement/service/apis/operations@2021-12-01-preview' = {
  parent: service_mfapim_name_test
  name: 'handlefailbody'
  properties: {
    displayName: 'HandleFailBody'
    method: 'GET'
    urlTemplate: '/handlefail'
    templateParameters: []
    responses: []
  }
  dependsOn: [

    service_mfapim_name_resource
  ]
}

resource service_mfapim_name_test_liquidtransform 'Microsoft.ApiManagement/service/apis/operations@2021-12-01-preview' = {
  parent: service_mfapim_name_test
  name: 'liquidtransform'
  properties: {
    displayName: 'liquidtransform'
    method: 'POST'
    urlTemplate: '/liquidtransform'
    templateParameters: []
    request: {
      queryParameters: []
      headers: []
      representations: [
        {
          contentType: 'application/json'
          examples: {
            default: {
              value: {
              }
            }
          }
        }
      ]
    }
    responses: []
  }
  dependsOn: [

    service_mfapim_name_resource
  ]
}

resource service_mfapim_name_test_mockbackend 'Microsoft.ApiManagement/service/apis/operations@2021-12-01-preview' = {
  parent: service_mfapim_name_test
  name: 'mockbackend'
  properties: {
    displayName: 'mockbackend'
    method: 'GET'
    urlTemplate: '/mockbackend'
    templateParameters: []
    responses: []
  }
  dependsOn: [

    service_mfapim_name_resource
  ]
}

resource service_mfapim_name_test_mockentry 'Microsoft.ApiManagement/service/apis/operations@2021-12-01-preview' = {
  parent: service_mfapim_name_test
  name: 'mockentry'
  properties: {
    displayName: 'MockEntry'
    method: 'GET'
    urlTemplate: '/mockentry'
    templateParameters: []
    responses: []
  }
  dependsOn: [

    service_mfapim_name_resource
  ]
}

resource service_mfapim_name_test_mocksendrequest 'Microsoft.ApiManagement/service/apis/operations@2021-12-01-preview' = {
  parent: service_mfapim_name_test
  name: 'mocksendrequest'
  properties: {
    displayName: 'MockSendRequest'
    method: 'GET'
    urlTemplate: '/mocksendrequest'
    templateParameters: []
    responses: []
  }
  dependsOn: [

    service_mfapim_name_resource
  ]
}

resource service_mfapim_name_test_mockxml 'Microsoft.ApiManagement/service/apis/operations@2021-12-01-preview' = {
  parent: service_mfapim_name_test
  name: 'mockxml'
  properties: {
    displayName: 'MockXml'
    method: 'POST'
    urlTemplate: '/mockxml'
    templateParameters: []
    responses: []
  }
  dependsOn: [

    service_mfapim_name_resource
  ]
}

resource service_mfapim_name_echo_api_modify_resource 'Microsoft.ApiManagement/service/apis/operations@2021-12-01-preview' = {
  parent: service_mfapim_name_echo_api
  name: 'modify-resource'
  properties: {
    displayName: 'Modify Resource'
    method: 'PUT'
    urlTemplate: '/resource'
    templateParameters: []
    description: 'A demonstration of a PUT call handled by the same "echo" backend as above. You can now specify a request body in addition to headers and it will be returned as well.'
    responses: [
      {
        statusCode: 200
        representations: []
        headers: []
      }
    ]
  }
  dependsOn: [

    service_mfapim_name_resource
  ]
}

resource service_mfapim_name_echo_api_rev_1_modify_resource 'Microsoft.ApiManagement/service/apis/operations@2021-12-01-preview' = {
  parent: service_mfapim_name_echo_api_rev_1
  name: 'modify-resource'
  properties: {
    displayName: 'Modify Resource'
    method: 'PUT'
    urlTemplate: '/resource'
    templateParameters: []
    description: 'A demonstration of a PUT call handled by the same "echo" backend as above. You can now specify a request body in addition to headers and it will be returned as well.'
    responses: [
      {
        statusCode: 200
        representations: []
        headers: []
      }
    ]
  }
  dependsOn: [

    service_mfapim_name_resource
  ]
}

resource service_mfapim_name_test_multiquery 'Microsoft.ApiManagement/service/apis/operations@2021-12-01-preview' = {
  parent: service_mfapim_name_test
  name: 'multiquery'
  properties: {
    displayName: 'MultiQuery'
    method: 'GET'
    urlTemplate: '/multiquery'
    templateParameters: []
    responses: []
  }
  dependsOn: [

    service_mfapim_name_resource
  ]
}

resource service_mfapim_name_test_multivalueparsing 'Microsoft.ApiManagement/service/apis/operations@2021-12-01-preview' = {
  parent: service_mfapim_name_test
  name: 'multivalueparsing'
  properties: {
    displayName: 'MultiValueParsing'
    method: 'POST'
    urlTemplate: '/multivalueparsing'
    templateParameters: []
    request: {
      queryParameters: []
      headers: []
      representations: [
        {
          contentType: 'text/xml'
          examples: {
            default: {
              value: '<Root><Entry Underwriter_Ext="Advantage" PolicyNumber="20000006461" AddressLine1="2 Robert Street" City="CARDIFF" PostalCode="CF55AA" /></Root>'
            }
          }
        }
      ]
    }
    responses: []
  }
  dependsOn: [

    service_mfapim_name_resource
  ]
}

resource service_mfapim_name_test_post_ai_metric 'Microsoft.ApiManagement/service/apis/operations@2021-12-01-preview' = {
  parent: service_mfapim_name_test
  name: 'post-ai-metric'
  properties: {
    displayName: 'post-ai-metric'
    method: 'GET'
    urlTemplate: '/sendid/{id}'
    templateParameters: [
      {
        name: 'id'
        type: 'int'
        required: true
        values: []
      }
    ]
    responses: []
  }
  dependsOn: [

    service_mfapim_name_resource
  ]
}

resource service_mfapim_name_ratings_admin_post_createrating 'Microsoft.ApiManagement/service/apis/operations@2021-12-01-preview' = {
  parent: service_mfapim_name_ratings_admin
  name: 'post-createrating'
  properties: {
    displayName: 'CreateRating'
    method: 'POST'
    urlTemplate: '/CreateRating'
    templateParameters: []
    responses: []
  }
  dependsOn: [

    service_mfapim_name_resource
  ]
}

resource service_mfapim_name_securepassthru_post_securefunction 'Microsoft.ApiManagement/service/apis/operations@2021-12-01-preview' = {
  parent: service_mfapim_name_securepassthru
  name: 'post-securefunction'
  properties: {
    displayName: 'SecureFunction'
    method: 'POST'
    urlTemplate: '/SecureFunction'
    templateParameters: []
    responses: []
  }
  dependsOn: [

    service_mfapim_name_resource
  ]
}

resource service_mfapim_name_mfsimplefunction_post_simplefunctionget 'Microsoft.ApiManagement/service/apis/operations@2021-12-01-preview' = {
  parent: Microsoft_ApiManagement_service_apis_service_mfapim_name_mfsimplefunction
  name: 'post-simplefunctionget'
  properties: {
    displayName: 'SimpleFunctionGet'
    method: 'POST'
    urlTemplate: '/SimpleFunctionGet'
    templateParameters: []
    responses: []
  }
  dependsOn: [

    service_mfapim_name_resource
  ]
}

resource service_mfapim_name_mfsimplefunction_v2_post_simplefunctionget 'Microsoft.ApiManagement/service/apis/operations@2021-12-01-preview' = {
  parent: service_mfapim_name_mfsimplefunction_v2
  name: 'post-simplefunctionget'
  properties: {
    displayName: 'SimpleFunctionGet'
    method: 'POST'
    urlTemplate: '/SimpleFunctionGet'
    templateParameters: []
    responses: []
  }
  dependsOn: [

    service_mfapim_name_resource
  ]
}

resource service_mfapim_name_echo_api_remove_resource 'Microsoft.ApiManagement/service/apis/operations@2021-12-01-preview' = {
  parent: service_mfapim_name_echo_api
  name: 'remove-resource'
  properties: {
    displayName: 'Remove resource'
    method: 'DELETE'
    urlTemplate: '/resource'
    templateParameters: []
    description: 'A demonstration of a DELETE call which traditionally deletes the resource. It is based on the same "echo" backend as in all other operations so nothing is actually deleted.'
    responses: [
      {
        statusCode: 200
        representations: []
        headers: []
      }
    ]
  }
  dependsOn: [

    service_mfapim_name_resource
  ]
}

resource service_mfapim_name_echo_api_rev_1_remove_resource 'Microsoft.ApiManagement/service/apis/operations@2021-12-01-preview' = {
  parent: service_mfapim_name_echo_api_rev_1
  name: 'remove-resource'
  properties: {
    displayName: 'Remove resource'
    method: 'DELETE'
    urlTemplate: '/resource'
    templateParameters: []
    description: 'A demonstration of a DELETE call which traditionally deletes the resource. It is based on the same "echo" backend as in all other operations so nothing is actually deleted.'
    responses: [
      {
        statusCode: 200
        representations: []
        headers: []
      }
    ]
  }
  dependsOn: [

    service_mfapim_name_resource
  ]
}

resource service_mfapim_name_echo_api_retrieve_header_only 'Microsoft.ApiManagement/service/apis/operations@2021-12-01-preview' = {
  parent: service_mfapim_name_echo_api
  name: 'retrieve-header-only'
  properties: {
    displayName: 'Retrieve header only'
    method: 'HEAD'
    urlTemplate: '/resource'
    templateParameters: []
    description: 'The HEAD operation returns only headers. In this demonstration a policy is used to set additional headers when the response is returned and to enable JSONP.'
    responses: [
      {
        statusCode: 200
        representations: []
        headers: []
      }
    ]
  }
  dependsOn: [

    service_mfapim_name_resource
  ]
}

resource service_mfapim_name_echo_api_rev_1_retrieve_header_only 'Microsoft.ApiManagement/service/apis/operations@2021-12-01-preview' = {
  parent: service_mfapim_name_echo_api_rev_1
  name: 'retrieve-header-only'
  properties: {
    displayName: 'Retrieve header only'
    method: 'HEAD'
    urlTemplate: '/resource'
    templateParameters: []
    description: 'The HEAD operation returns only headers. In this demonstration a policy is used to set additional headers when the response is returned and to enable JSONP.'
    responses: [
      {
        statusCode: 200
        representations: []
        headers: []
      }
    ]
  }
  dependsOn: [

    service_mfapim_name_resource
  ]
}

resource service_mfapim_name_echo_api_retrieve_resource 'Microsoft.ApiManagement/service/apis/operations@2021-12-01-preview' = {
  parent: service_mfapim_name_echo_api
  name: 'retrieve-resource'
  properties: {
    displayName: 'Retrieve resource'
    method: 'GET'
    urlTemplate: '/resource?param1={param1}'
    templateParameters: [
      {
        name: 'param1'
        description: 'A sample parameter that is required and has a default value of "sample".'
        type: 'string'
        defaultValue: 'sample'
        required: true
        values: [
          'sample'
        ]
        schemaId: '61322b9c4ce5720f54428b30'
        typeName: 'ResourceGetRequest'
      }
    ]
    description: 'A demonstration of a GET call on a sample resource. It is handled by an "echo" backend which returns a response equal to the request (the supplied headers and body are being returned as received).'
    request: {
      queryParameters: [
        {
          name: 'param2'
          description: 'Another sample parameter, set to not required.'
          type: 'number'
          values: []
          schemaId: '61322b9c4ce5720f54428b30'
          typeName: 'ResourceGetRequest-1'
        }
      ]
      headers: []
      representations: []
    }
    responses: [
      {
        statusCode: 200
        description: 'Returned in all cases.'
        representations: []
        headers: []
      }
    ]
  }
  dependsOn: [

    service_mfapim_name_resource
  ]
}

resource service_mfapim_name_echo_api_rev_1_retrieve_resource 'Microsoft.ApiManagement/service/apis/operations@2021-12-01-preview' = {
  parent: service_mfapim_name_echo_api_rev_1
  name: 'retrieve-resource'
  properties: {
    displayName: 'Retrieve resource'
    method: 'GET'
    urlTemplate: '/resource?param1={param1}'
    templateParameters: [
      {
        name: 'param1'
        description: 'A sample parameter that is required and has a default value of "sample".'
        type: 'string'
        defaultValue: 'sample'
        required: true
        values: [
          'sample'
        ]
        schemaId: '61322b9c4ce5720f54428b30'
        typeName: 'ResourceGetRequest'
      }
    ]
    description: 'A demonstration of a GET call on a sample resource. It is handled by an "echo" backend which returns a response equal to the request (the supplied headers and body are being returned as received).'
    request: {
      queryParameters: [
        {
          name: 'param2'
          description: 'Another sample parameter, set to not required.'
          type: 'number'
          values: []
          schemaId: '61322b9c4ce5720f54428b30'
          typeName: 'ResourceGetRequest-1'
        }
      ]
      headers: []
      representations: []
    }
    responses: [
      {
        statusCode: 200
        description: 'Returned in all cases.'
        representations: []
        headers: []
      }
    ]
  }
  dependsOn: [

    service_mfapim_name_resource
  ]
}

resource service_mfapim_name_echo_api_retrieve_resource_cached 'Microsoft.ApiManagement/service/apis/operations@2021-12-01-preview' = {
  parent: service_mfapim_name_echo_api
  name: 'retrieve-resource-cached'
  properties: {
    displayName: 'Retrieve resource (cached)'
    method: 'GET'
    urlTemplate: '/resource-cached?param1={param1}'
    templateParameters: [
      {
        name: 'param1'
        description: 'A sample parameter that is required and has a default value of "sample".'
        type: 'string'
        defaultValue: 'sample'
        required: true
        values: [
          'sample'
        ]
        schemaId: '61322b9c4ce5720f54428b30'
        typeName: 'Resource-cachedGetRequest'
      }
    ]
    description: 'A demonstration of a GET call with caching enabled on the same "echo" backend as above. Cache TTL is set to 1 hour. When you make the first request the headers you supplied will be cached. Subsequent calls will return the same headers as the first time even if you change them in your request.'
    request: {
      queryParameters: [
        {
          name: 'param2'
          description: 'Another sample parameter, set to not required.'
          type: 'string'
          values: []
          schemaId: '61322b9c4ce5720f54428b30'
          typeName: 'Resource-cachedGetRequest-1'
        }
      ]
      headers: []
      representations: []
    }
    responses: [
      {
        statusCode: 200
        representations: []
        headers: []
      }
    ]
  }
  dependsOn: [

    service_mfapim_name_resource
  ]
}

resource service_mfapim_name_echo_api_rev_1_retrieve_resource_cached 'Microsoft.ApiManagement/service/apis/operations@2021-12-01-preview' = {
  parent: service_mfapim_name_echo_api_rev_1
  name: 'retrieve-resource-cached'
  properties: {
    displayName: 'Retrieve resource (cached)'
    method: 'GET'
    urlTemplate: '/resource-cached?param1={param1}'
    templateParameters: [
      {
        name: 'param1'
        description: 'A sample parameter that is required and has a default value of "sample".'
        type: 'string'
        defaultValue: 'sample'
        required: true
        values: [
          'sample'
        ]
        schemaId: '61322b9c4ce5720f54428b30'
        typeName: 'Resource-cachedGetRequest'
      }
    ]
    description: 'A demonstration of a GET call with caching enabled on the same "echo" backend as above. Cache TTL is set to 1 hour. When you make the first request the headers you supplied will be cached. Subsequent calls will return the same headers as the first time even if you change them in your request.'
    request: {
      queryParameters: [
        {
          name: 'param2'
          description: 'Another sample parameter, set to not required.'
          type: 'string'
          values: []
          schemaId: '61322b9c4ce5720f54428b30'
          typeName: 'Resource-cachedGetRequest-1'
        }
      ]
      headers: []
      representations: []
    }
    responses: [
      {
        statusCode: 200
        representations: []
        headers: []
      }
    ]
  }
  dependsOn: [

    service_mfapim_name_resource
  ]
}

resource service_mfapim_name_dad_joke_search_for_jokes 'Microsoft.ApiManagement/service/apis/operations@2021-12-01-preview' = {
  parent: service_mfapim_name_dad_joke
  name: 'search-for-jokes'
  properties: {
    displayName: 'Search For Jokes'
    method: 'POST'
    urlTemplate: '/joke-search'
    templateParameters: []
    description: 'Search For Jokes'
    request: {
      description: 'The search criteria'
      queryParameters: []
      headers: []
      representations: [
        {
          contentType: 'application/json'
          examples: {
            default: {
              value: {
              }
            }
          }
          schemaId: '61efc2384ce57211f8a0d52f'
          typeName: 'JokeSearchRequest'
        }
      ]
    }
    responses: [
      {
        statusCode: 200
        description: 'OK'
        representations: [
          {
            contentType: 'application/json'
            examples: {
              default: {
                value: {
                }
              }
            }
            schemaId: '61efc2384ce57211f8a0d52f'
            typeName: 'JokeSearchResponse'
          }
        ]
        headers: []
      }
    ]
  }
  dependsOn: [

    service_mfapim_name_resource
  ]
}

resource service_mfapim_name_test_secondsend 'Microsoft.ApiManagement/service/apis/operations@2021-12-01-preview' = {
  parent: service_mfapim_name_test
  name: 'secondsend'
  properties: {
    displayName: 'SecondSend'
    method: 'GET'
    urlTemplate: '/secondsend'
    templateParameters: []
    responses: []
  }
  dependsOn: [

    service_mfapim_name_resource
  ]
}

resource service_mfapim_name_test_selectiveliquid 'Microsoft.ApiManagement/service/apis/operations@2021-12-01-preview' = {
  parent: service_mfapim_name_test
  name: 'selectiveliquid'
  properties: {
    displayName: 'SelectiveLiquid'
    method: 'POST'
    urlTemplate: '/selectiveliquid'
    templateParameters: []
    request: {
      queryParameters: []
      headers: []
      representations: [
        {
          contentType: 'application/json'
          examples: {
            default: {
              value: {
              }
            }
          }
        }
      ]
    }
    responses: []
  }
  dependsOn: [

    service_mfapim_name_resource
  ]
}

resource service_mfapim_name_managedidentity_sendservicebusmessage 'Microsoft.ApiManagement/service/apis/operations@2021-12-01-preview' = {
  parent: service_mfapim_name_managedidentity
  name: 'sendservicebusmessage'
  properties: {
    displayName: 'SendServiceBusMessage'
    method: 'GET'
    urlTemplate: '/SendServiceBusMessage'
    templateParameters: []
    responses: []
  }
  dependsOn: [

    service_mfapim_name_resource
  ]
}

resource service_mfapim_name_test_stringcompare 'Microsoft.ApiManagement/service/apis/operations@2021-12-01-preview' = {
  parent: service_mfapim_name_test
  name: 'stringcompare'
  properties: {
    displayName: 'stringcompare'
    method: 'GET'
    urlTemplate: '/stringcompare'
    templateParameters: []
    request: {
      queryParameters: [
        {
          name: 'testval'
          type: 'string'
          values: []
        }
      ]
      headers: []
      representations: []
    }
    responses: []
  }
  dependsOn: [

    service_mfapim_name_resource
  ]
}

resource service_mfapim_name_demo_conference_api_SubmitSession 'Microsoft.ApiManagement/service/apis/operations@2021-12-01-preview' = {
  parent: service_mfapim_name_demo_conference_api
  name: 'SubmitSession'
  properties: {
    displayName: 'SubmitSession'
    method: 'POST'
    urlTemplate: '/session/{id}/feedback'
    templateParameters: [
      {
        name: 'id'
        description: 'Format - int32.'
        type: 'integer'
        required: true
        values: []
      }
    ]
    description: 'Retreive a representation of a single session by Id'
    request: {
      queryParameters: []
      headers: []
      representations: [
        {
          contentType: 'text/plain'
          examples: {
            default: {
            }
          }
          schemaId: '62fa5460bb9592114ca1fbb6'
          typeName: 'Body'
        }
      ]
    }
    responses: [
      {
        statusCode: 200
        description: 'OK'
        representations: [
          {
            contentType: 'application/hal+json'
          }
          {
            contentType: 'text/plain'
          }
        ]
        headers: []
      }
    ]
  }
  dependsOn: [

    service_mfapim_name_resource
  ]
}

resource service_mfapim_name_test_usingschema 'Microsoft.ApiManagement/service/apis/operations@2021-12-01-preview' = {
  parent: service_mfapim_name_test
  name: 'usingschema'
  properties: {
    displayName: 'UsingSchema'
    method: 'POST'
    urlTemplate: '/schema'
    templateParameters: []
    request: {
      queryParameters: []
      headers: []
      representations: [
        {
          contentType: 'application/json'
          examples: {
            default: {
              value: {
              }
            }
          }
          schemaId: '1625473429490'
          typeName: 'SchemeRequestDefn1'
        }
      ]
    }
    responses: []
  }
  dependsOn: [

    service_mfapim_name_resource
  ]
}

resource service_mfapim_name_test_usingschema2 'Microsoft.ApiManagement/service/apis/operations@2021-12-01-preview' = {
  parent: service_mfapim_name_test
  name: 'usingschema2'
  properties: {
    displayName: 'UsingSchema2'
    method: 'POST'
    urlTemplate: '/usingschema2'
    templateParameters: []
    request: {
      queryParameters: []
      headers: []
      representations: [
        {
          contentType: 'application/json'
          examples: {
            default: {
              value: {
              }
            }
          }
          schemaId: '1625473429490'
          typeName: 'SchemaRequestDefnApi1'
        }
      ]
    }
    responses: []
  }
  dependsOn: [

    service_mfapim_name_resource
  ]
}

resource service_mfapim_name_test_validation 'Microsoft.ApiManagement/service/apis/operations@2021-12-01-preview' = {
  parent: service_mfapim_name_test
  name: 'validation'
  properties: {
    displayName: 'validation'
    method: 'GET'
    urlTemplate: '/validation'
    templateParameters: []
    responses: []
  }
  dependsOn: [

    service_mfapim_name_resource
  ]
}

resource service_mfapim_name_managedidentity_writeblobtostorage 'Microsoft.ApiManagement/service/apis/operations@2021-12-01-preview' = {
  parent: service_mfapim_name_managedidentity
  name: 'writeblobtostorage'
  properties: {
    displayName: 'WriteBlobToStorage'
    method: 'GET'
    urlTemplate: '/writeblobtostorage'
    templateParameters: []
    responses: []
  }
  dependsOn: [

    service_mfapim_name_resource
  ]
}

resource service_mfapim_name_dad_joke_policy 'Microsoft.ApiManagement/service/apis/policies@2021-12-01-preview' = {
  parent: service_mfapim_name_dad_joke
  name: 'policy'
  properties: {
    value: '<policies>\r\n  <inbound>\r\n    <base />\r\n    <set-backend-service backend-id="ICanHazDadJoke" />\r\n  </inbound>\r\n  <backend>\r\n    <base />\r\n  </backend>\r\n  <outbound>\r\n    <base />\r\n  </outbound>\r\n  <on-error>\r\n    <base />\r\n  </on-error>\r\n</policies>'
    format: 'xml'
  }
  dependsOn: [

    service_mfapim_name_resource
  ]
}

resource service_mfapim_name_keyvault_policy 'Microsoft.ApiManagement/service/apis/policies@2021-12-01-preview' = {
  parent: service_mfapim_name_keyvault
  name: 'policy'
  properties: {
    value: '<!--\r\n    IMPORTANT:\r\n    - Policy elements can appear only within the <inbound>, <outbound>, <backend> section elements.\r\n    - To apply a policy to the incoming request (before it is forwarded to the backend service), place a corresponding policy element within the <inbound> section element.\r\n    - To apply a policy to the outgoing response (before it is sent back to the caller), place a corresponding policy element within the <outbound> section element.\r\n    - To add a policy, place the cursor at the desired insertion point and select a policy from the sidebar.\r\n    - To remove a policy, delete the corresponding policy statement from the policy document.\r\n    - Position the <base> element within a section element to inherit all policies from the corresponding section element in the enclosing scope.\r\n    - Remove the <base> element to prevent inheriting policies from the corresponding section element in the enclosing scope.\r\n    - Policies are applied in the order of their appearance, from the top down.\r\n    - Comments within policy elements are not supported and may disappear. Place your comments between policy elements or at a higher level scope.\r\n-->\r\n<policies>\r\n  <inbound>\r\n    <set-backend-service backend-id="my-backend-one" />\r\n    <base />\r\n  </inbound>\r\n  <backend>\r\n    <base />\r\n  </backend>\r\n  <outbound>\r\n    <base />\r\n  </outbound>\r\n  <on-error>\r\n    <base />\r\n  </on-error>\r\n</policies>'
    format: 'xml'
  }
  dependsOn: [

    service_mfapim_name_resource
  ]
}

resource service_mfapim_name_test_policy 'Microsoft.ApiManagement/service/apis/policies@2021-12-01-preview' = {
  parent: service_mfapim_name_test
  name: 'policy'
  properties: {
    value: '<!--\r\n    IMPORTANT:\r\n    - Policy elements can appear only within the <inbound>, <outbound>, <backend> section elements.\r\n    - To apply a policy to the incoming request (before it is forwarded to the backend service), place a corresponding policy element within the <inbound> section element.\r\n    - To apply a policy to the outgoing response (before it is sent back to the caller), place a corresponding policy element within the <outbound> section element.\r\n    - To add a policy, place the cursor at the desired insertion point and select a policy from the sidebar.\r\n    - To remove a policy, delete the corresponding policy statement from the policy document.\r\n    - Position the <base> element within a section element to inherit all policies from the corresponding section element in the enclosing scope.\r\n    - Remove the <base> element to prevent inheriting policies from the corresponding section element in the enclosing scope.\r\n    - Policies are applied in the order of their appearance, from the top down.\r\n    - Comments within policy elements are not supported and may disappear. Place your comments between policy elements or at a higher level scope.\r\n-->\r\n<policies>\r\n  <inbound>\r\n    <base />\r\n  </inbound>\r\n  <backend>\r\n    <base />\r\n  </backend>\r\n  <outbound>\r\n    <base />\r\n  </outbound>\r\n  <on-error>\r\n    <base />\r\n  </on-error>\r\n</policies>'
    format: 'xml'
  }
  dependsOn: [

    service_mfapim_name_resource
  ]
}

resource service_mfapim_name_echo_api_62c40fade98b61b263e7b01c 'Microsoft.ApiManagement/service/apis/releases@2021-12-01-preview' = {
  parent: service_mfapim_name_echo_api
  name: '62c40fade98b61b263e7b01c'
  properties: {
  }
  dependsOn: [

    service_mfapim_name_resource
  ]
}

resource service_mfapim_name_test_1625473429490 'Microsoft.ApiManagement/service/apis/schemas@2021-12-01-preview' = {
  parent: service_mfapim_name_test
  name: '1625473429490'
  properties: {
    contentType: 'application/vnd.oai.openapi.components+json'
  }
  dependsOn: [

    service_mfapim_name_resource
  ]
}

resource service_mfapim_name_test_1625473510785 'Microsoft.ApiManagement/service/apis/schemas@2021-12-01-preview' = {
  parent: service_mfapim_name_test
  name: '1625473510785'
  properties: {
    contentType: 'application/vnd.oai.openapi.components+json'
  }
  dependsOn: [

    service_mfapim_name_resource
  ]
}

resource service_mfapim_name_echo_api_61322b9c4ce5720f54428b30 'Microsoft.ApiManagement/service/apis/schemas@2021-12-01-preview' = {
  parent: service_mfapim_name_echo_api
  name: '61322b9c4ce5720f54428b30'
  properties: {
    contentType: 'application/vnd.oai.openapi.components+json'
  }
  dependsOn: [

    service_mfapim_name_resource
  ]
}

resource service_mfapim_name_echo_api_rev_1_61322b9c4ce5720f54428b30 'Microsoft.ApiManagement/service/apis/schemas@2021-12-01-preview' = {
  parent: service_mfapim_name_echo_api_rev_1
  name: '61322b9c4ce5720f54428b30'
  properties: {
    contentType: 'application/vnd.oai.openapi.components+json'
  }
  dependsOn: [

    service_mfapim_name_resource
  ]
}

resource service_mfapim_name_dad_joke_61efc2384ce57211f8a0d52f 'Microsoft.ApiManagement/service/apis/schemas@2021-12-01-preview' = {
  parent: service_mfapim_name_dad_joke
  name: '61efc2384ce57211f8a0d52f'
  properties: {
    contentType: 'application/vnd.ms-azure-apim.swagger.definitions+json'
  }
  dependsOn: [

    service_mfapim_name_resource
  ]
}

resource service_mfapim_name_demo_conference_api_62fa5460bb9592114ca1fbb6 'Microsoft.ApiManagement/service/apis/schemas@2021-12-01-preview' = {
  parent: service_mfapim_name_demo_conference_api
  name: '62fa5460bb9592114ca1fbb6'
  properties: {
    contentType: 'application/vnd.ms-azure-apim.swagger.definitions+json'
  }
  dependsOn: [

    service_mfapim_name_resource
  ]
}

resource service_mfapim_name_dad_joke_test 'Microsoft.ApiManagement/service/apis/tagDescriptions@2021-12-01-preview' = {
  parent: service_mfapim_name_dad_joke
  name: 'test'
  properties: {
  }
  dependsOn: [

    service_mfapim_name_resource
  ]
}

resource service_mfapim_name_mfsimplefunction_v2_apitag1 'Microsoft.ApiManagement/service/apis/tags@2021-12-01-preview' = {
  parent: service_mfapim_name_mfsimplefunction_v2
  name: 'apitag1'
  dependsOn: [

    service_mfapim_name_resource
  ]
}

resource service_mfapim_name_mfsimplefunction_v2_apitag3 'Microsoft.ApiManagement/service/apis/tags@2021-12-01-preview' = {
  parent: service_mfapim_name_mfsimplefunction_v2
  name: 'apitag3'
  dependsOn: [

    service_mfapim_name_resource
  ]
}

resource service_mfapim_name_applicationinsights 'Microsoft.ApiManagement/service/diagnostics@2021-12-01-preview' = {
  parent: service_mfapim_name_resource
  name: 'applicationinsights'
  properties: {
    alwaysLog: 'allErrors'
    httpCorrelationProtocol: 'Legacy'
    verbosity: 'information'
    logClientIp: true
    loggerId: service_mfapim_name_apim_kv_ai.id
    sampling: {
      samplingType: 'fixed'
      percentage: 100
    }
    frontend: {
      request: {
        headers: [
          'X-Forward-For'
        ]
        body: {
          bytes: 8192
        }
      }
      response: {
        headers: [
          'X-Forward-For'
        ]
        body: {
          bytes: 8192
        }
      }
    }
    backend: {
      request: {
        headers: [
          'X-Forward-For'
        ]
        body: {
          bytes: 8192
        }
      }
      response: {
        headers: [
          'X-Forward-For'
        ]
        body: {
          bytes: 8192
        }
      }
    }
  }
}

resource Microsoft_ApiManagement_service_diagnostics_service_mfapim_name_azuremonitor 'Microsoft.ApiManagement/service/diagnostics@2021-12-01-preview' = {
  parent: service_mfapim_name_resource
  name: 'azuremonitor'
  properties: {
    alwaysLog: 'allErrors'
    verbosity: 'information'
    logClientIp: true
    loggerId: service_mfapim_name_azuremonitor.id
    sampling: {
      samplingType: 'fixed'
      percentage: 100
    }
    frontend: {
      request: {
        headers: []
        body: {
          bytes: 0
        }
      }
      response: {
        headers: []
        body: {
          bytes: 0
        }
      }
    }
    backend: {
      request: {
        headers: []
        body: {
          bytes: 0
        }
      }
      response: {
        headers: []
        body: {
          bytes: 0
        }
      }
    }
  }
}

resource service_mfapim_name_applicationinsights_apim_kv_ai 'Microsoft.ApiManagement/service/diagnostics/loggers@2018-01-01' = {
  parent: service_mfapim_name_applicationinsights
  name: 'apim-kv-ai'
  dependsOn: [

    service_mfapim_name_resource
  ]
}

resource service_mfapim_name_azuremonitor_azuremonitor 'Microsoft.ApiManagement/service/diagnostics/loggers@2018-01-01' = {
  parent: Microsoft_ApiManagement_service_diagnostics_service_mfapim_name_azuremonitor
  name: 'azuremonitor'
  dependsOn: [

    service_mfapim_name_resource
  ]
}

resource service_mfapim_name_administrators_1 'Microsoft.ApiManagement/service/groups/users@2021-12-01-preview' = {
  parent: service_mfapim_name_administrators
  name: '1'
  dependsOn: [

    service_mfapim_name_resource
  ]
}

resource service_mfapim_name_developers_1 'Microsoft.ApiManagement/service/groups/users@2021-12-01-preview' = {
  parent: service_mfapim_name_developers
  name: '1'
  dependsOn: [

    service_mfapim_name_resource
  ]
}

resource service_mfapim_name_developers_60b8d2cd4ce5720ed8dfcfc6 'Microsoft.ApiManagement/service/groups/users@2021-12-01-preview' = {
  parent: service_mfapim_name_developers
  name: '60b8d2cd4ce5720ed8dfcfc6'
  dependsOn: [

    service_mfapim_name_resource
  ]
}

resource service_mfapim_name_external_60b8d2cd4ce5720ed8dfcfc6 'Microsoft.ApiManagement/service/groups/users@2021-12-01-preview' = {
  parent: service_mfapim_name_external
  name: '60b8d2cd4ce5720ed8dfcfc6'
  dependsOn: [

    service_mfapim_name_resource
  ]
}

resource service_mfapim_name_apim_kv_ai 'Microsoft.ApiManagement/service/loggers@2021-12-01-preview' = {
  parent: service_mfapim_name_resource
  name: 'apim-kv-ai'
  properties: {
    loggerType: 'applicationInsights'
    credentials: {
      instrumentationKey: '{{Logger-Credentials--60c38cad4ce5721780d17986}}'
    }
    isBuffered: true
    resourceId: components_apim_kv_ai_name_resource.id
  }
}

resource service_mfapim_name_service_mfapim_name_ai 'Microsoft.ApiManagement/service/loggers@2021-12-01-preview' = {
  parent: service_mfapim_name_resource
  name: '${service_mfapim_name}-ai'
  properties: {
    loggerType: 'applicationInsights'
    credentials: {
      instrumentationKey: '{{applicationinsightsinstrumentationkey}}'
    }
    isBuffered: true
    resourceId: components_apim_kv_ai_name_resource.id
  }
}

resource service_mfapim_name_DadJokeProduct_dad_joke 'Microsoft.ApiManagement/service/products/apis@2021-12-01-preview' = {
  parent: service_mfapim_name_DadJokeProduct
  name: 'dad-joke'
  dependsOn: [

    service_mfapim_name_resource
  ]
}

resource service_mfapim_name_internal_echo_api 'Microsoft.ApiManagement/service/products/apis@2021-12-01-preview' = {
  parent: Microsoft_ApiManagement_service_products_service_mfapim_name_internal
  name: 'echo-api'
  dependsOn: [

    service_mfapim_name_resource
  ]
}

resource service_mfapim_name_starter_echo_api 'Microsoft.ApiManagement/service/products/apis@2021-12-01-preview' = {
  parent: service_mfapim_name_starter
  name: 'echo-api'
  dependsOn: [

    service_mfapim_name_resource
  ]
}

resource service_mfapim_name_test_echo_api 'Microsoft.ApiManagement/service/products/apis@2021-12-01-preview' = {
  parent: Microsoft_ApiManagement_service_products_service_mfapim_name_test
  name: 'echo-api'
  dependsOn: [

    service_mfapim_name_resource
  ]
}

resource service_mfapim_name_unlimited_echo_api 'Microsoft.ApiManagement/service/products/apis@2021-12-01-preview' = {
  parent: service_mfapim_name_unlimited
  name: 'echo-api'
  dependsOn: [

    service_mfapim_name_resource
  ]
}

resource service_mfapim_name_test_keyvault 'Microsoft.ApiManagement/service/products/apis@2021-12-01-preview' = {
  parent: Microsoft_ApiManagement_service_products_service_mfapim_name_test
  name: 'keyvault'
  dependsOn: [

    service_mfapim_name_resource
  ]
}

resource service_mfapim_name_unlimited_keyvault 'Microsoft.ApiManagement/service/products/apis@2021-12-01-preview' = {
  parent: service_mfapim_name_unlimited
  name: 'keyvault'
  dependsOn: [

    service_mfapim_name_resource
  ]
}

resource service_mfapim_name_external_partners_managedidentity 'Microsoft.ApiManagement/service/products/apis@2021-12-01-preview' = {
  parent: service_mfapim_name_external_partners
  name: 'managedidentity'
  dependsOn: [

    service_mfapim_name_resource
  ]
}

resource service_mfapim_name_test_mfsimplefunction 'Microsoft.ApiManagement/service/products/apis@2021-12-01-preview' = {
  parent: Microsoft_ApiManagement_service_products_service_mfapim_name_test
  name: 'mfsimplefunction'
  dependsOn: [

    service_mfapim_name_resource
  ]
}

resource service_mfapim_name_unlimited_mfsimplefunction 'Microsoft.ApiManagement/service/products/apis@2021-12-01-preview' = {
  parent: service_mfapim_name_unlimited
  name: 'mfsimplefunction'
  dependsOn: [

    service_mfapim_name_resource
  ]
}

resource service_mfapim_name_test_mfsimplefunction_v2 'Microsoft.ApiManagement/service/products/apis@2021-12-01-preview' = {
  parent: Microsoft_ApiManagement_service_products_service_mfapim_name_test
  name: 'mfsimplefunction-v2'
  dependsOn: [

    service_mfapim_name_resource
  ]
}

resource service_mfapim_name_unlimited_mfsimplefunction_v2 'Microsoft.ApiManagement/service/products/apis@2021-12-01-preview' = {
  parent: service_mfapim_name_unlimited
  name: 'mfsimplefunction-v2'
  dependsOn: [

    service_mfapim_name_resource
  ]
}

resource service_mfapim_name_external_partners_products_get 'Microsoft.ApiManagement/service/products/apis@2021-12-01-preview' = {
  parent: service_mfapim_name_external_partners
  name: 'products-get'
  dependsOn: [

    service_mfapim_name_resource
  ]
}

resource service_mfapim_name_internal_business_users_products_get 'Microsoft.ApiManagement/service/products/apis@2021-12-01-preview' = {
  parent: service_mfapim_name_internal_business_users
  name: 'products-get'
  dependsOn: [

    service_mfapim_name_resource
  ]
}

resource service_mfapim_name_mobileapplications_products_get 'Microsoft.ApiManagement/service/products/apis@2021-12-01-preview' = {
  parent: service_mfapim_name_mobileapplications
  name: 'products-get'
  dependsOn: [

    service_mfapim_name_resource
  ]
}

resource service_mfapim_name_mobileapplications_ratings_admin 'Microsoft.ApiManagement/service/products/apis@2021-12-01-preview' = {
  parent: service_mfapim_name_mobileapplications
  name: 'ratings-admin'
  dependsOn: [

    service_mfapim_name_resource
  ]
}

resource service_mfapim_name_internal_business_users_ratings_get 'Microsoft.ApiManagement/service/products/apis@2021-12-01-preview' = {
  parent: service_mfapim_name_internal_business_users
  name: 'ratings-get'
  dependsOn: [

    service_mfapim_name_resource
  ]
}

resource service_mfapim_name_mobileapplications_ratings_get 'Microsoft.ApiManagement/service/products/apis@2021-12-01-preview' = {
  parent: service_mfapim_name_mobileapplications
  name: 'ratings-get'
  dependsOn: [

    service_mfapim_name_resource
  ]
}

resource service_mfapim_name_test_test 'Microsoft.ApiManagement/service/products/apis@2021-12-01-preview' = {
  parent: Microsoft_ApiManagement_service_products_service_mfapim_name_test
  name: 'test'
  dependsOn: [

    service_mfapim_name_resource
  ]
}

resource service_mfapim_name_mobileapplications_users_get 'Microsoft.ApiManagement/service/products/apis@2021-12-01-preview' = {
  parent: service_mfapim_name_mobileapplications
  name: 'users-get'
  dependsOn: [

    service_mfapim_name_resource
  ]
}

resource service_mfapim_name_DadJokeProduct_administrators 'Microsoft.ApiManagement/service/products/groups@2021-12-01-preview' = {
  parent: service_mfapim_name_DadJokeProduct
  name: 'administrators'
  dependsOn: [

    service_mfapim_name_resource
  ]
}

resource service_mfapim_name_external_partners_administrators 'Microsoft.ApiManagement/service/products/groups@2021-12-01-preview' = {
  parent: service_mfapim_name_external_partners
  name: 'administrators'
  dependsOn: [

    service_mfapim_name_resource
  ]
}

resource service_mfapim_name_insurer1_administrators 'Microsoft.ApiManagement/service/products/groups@2021-12-01-preview' = {
  parent: service_mfapim_name_insurer1
  name: 'administrators'
  dependsOn: [

    service_mfapim_name_resource
  ]
}

resource service_mfapim_name_insurer2_administrators 'Microsoft.ApiManagement/service/products/groups@2021-12-01-preview' = {
  parent: service_mfapim_name_insurer2
  name: 'administrators'
  dependsOn: [

    service_mfapim_name_resource
  ]
}

resource service_mfapim_name_internal_administrators 'Microsoft.ApiManagement/service/products/groups@2021-12-01-preview' = {
  parent: Microsoft_ApiManagement_service_products_service_mfapim_name_internal
  name: 'administrators'
  dependsOn: [

    service_mfapim_name_resource
  ]
}

resource service_mfapim_name_internal_business_users_administrators 'Microsoft.ApiManagement/service/products/groups@2021-12-01-preview' = {
  parent: service_mfapim_name_internal_business_users
  name: 'administrators'
  dependsOn: [

    service_mfapim_name_resource
  ]
}

resource service_mfapim_name_mobileapplications_administrators 'Microsoft.ApiManagement/service/products/groups@2021-12-01-preview' = {
  parent: service_mfapim_name_mobileapplications
  name: 'administrators'
  dependsOn: [

    service_mfapim_name_resource
  ]
}

resource service_mfapim_name_starter_administrators 'Microsoft.ApiManagement/service/products/groups@2021-12-01-preview' = {
  parent: service_mfapim_name_starter
  name: 'administrators'
  dependsOn: [

    service_mfapim_name_resource
  ]
}

resource service_mfapim_name_test_administrators 'Microsoft.ApiManagement/service/products/groups@2021-12-01-preview' = {
  parent: Microsoft_ApiManagement_service_products_service_mfapim_name_test
  name: 'administrators'
  dependsOn: [

    service_mfapim_name_resource
  ]
}

resource service_mfapim_name_unlimited_administrators 'Microsoft.ApiManagement/service/products/groups@2021-12-01-preview' = {
  parent: service_mfapim_name_unlimited
  name: 'administrators'
  dependsOn: [

    service_mfapim_name_resource
  ]
}

resource service_mfapim_name_internal_business_users_developers 'Microsoft.ApiManagement/service/products/groups@2021-12-01-preview' = {
  parent: service_mfapim_name_internal_business_users
  name: 'developers'
  dependsOn: [

    service_mfapim_name_resource
  ]
}

resource service_mfapim_name_starter_developers 'Microsoft.ApiManagement/service/products/groups@2021-12-01-preview' = {
  parent: service_mfapim_name_starter
  name: 'developers'
  dependsOn: [

    service_mfapim_name_resource
  ]
}

resource service_mfapim_name_unlimited_developers 'Microsoft.ApiManagement/service/products/groups@2021-12-01-preview' = {
  parent: service_mfapim_name_unlimited
  name: 'developers'
  dependsOn: [

    service_mfapim_name_resource
  ]
}

resource service_mfapim_name_external_partners_external 'Microsoft.ApiManagement/service/products/groups@2021-12-01-preview' = {
  parent: service_mfapim_name_external_partners
  name: 'external'
  dependsOn: [

    service_mfapim_name_resource
  ]
}

resource service_mfapim_name_starter_guests 'Microsoft.ApiManagement/service/products/groups@2021-12-01-preview' = {
  parent: service_mfapim_name_starter
  name: 'guests'
  dependsOn: [

    service_mfapim_name_resource
  ]
}

resource service_mfapim_name_unlimited_guests 'Microsoft.ApiManagement/service/products/groups@2021-12-01-preview' = {
  parent: service_mfapim_name_unlimited
  name: 'guests'
  dependsOn: [

    service_mfapim_name_resource
  ]
}

resource service_mfapim_name_external_partners_policy 'Microsoft.ApiManagement/service/products/policies@2021-12-01-preview' = {
  parent: service_mfapim_name_external_partners
  name: 'policy'
  properties: {
    value: '<!--\r\n    IMPORTANT:\r\n    - Policy elements can appear only within the <inbound>, <outbound>, <backend> section elements.\r\n    - To apply a policy to the incoming request (before it is forwarded to the backend service), place a corresponding policy element within the <inbound> section element.\r\n    - To apply a policy to the outgoing response (before it is sent back to the caller), place a corresponding policy element within the <outbound> section element.\r\n    - To add a policy, place the cursor at the desired insertion point and select a policy from the sidebar.\r\n    - To remove a policy, delete the corresponding policy statement from the policy document.\r\n    - Position the <base> element within a section element to inherit all policies from the corresponding section element in the enclosing scope.\r\n    - Remove the <base> element to prevent inheriting policies from the corresponding section element in the enclosing scope.\r\n    - Policies are applied in the order of their appearance, from the top down.\r\n    - Comments within policy elements are not supported and may disappear. Place your comments between policy elements or at a higher level scope.\r\n-->\r\n<policies>\r\n  <inbound>\r\n    <base />\r\n    <rate-limit calls="15" renewal-period="60" />\r\n  </inbound>\r\n  <backend>\r\n    <base />\r\n  </backend>\r\n  <outbound>\r\n    <base />\r\n  </outbound>\r\n  <on-error>\r\n    <base />\r\n  </on-error>\r\n</policies>'
    format: 'xml'
  }
  dependsOn: [

    service_mfapim_name_resource
  ]
}

resource service_mfapim_name_internal_business_users_policy 'Microsoft.ApiManagement/service/products/policies@2021-12-01-preview' = {
  parent: service_mfapim_name_internal_business_users
  name: 'policy'
  properties: {
    value: '<!--\r\n    IMPORTANT:\r\n    - Policy elements can appear only within the <inbound>, <outbound>, <backend> section elements.\r\n    - To apply a policy to the incoming request (before it is forwarded to the backend service), place a corresponding policy element within the <inbound> section element.\r\n    - To apply a policy to the outgoing response (before it is sent back to the caller), place a corresponding policy element within the <outbound> section element.\r\n    - To add a policy, place the cursor at the desired insertion point and select a policy from the sidebar.\r\n    - To remove a policy, delete the corresponding policy statement from the policy document.\r\n    - Position the <base> element within a section element to inherit all policies from the corresponding section element in the enclosing scope.\r\n    - Remove the <base> element to prevent inheriting policies from the corresponding section element in the enclosing scope.\r\n    - Policies are applied in the order of their appearance, from the top down.\r\n    - Comments within policy elements are not supported and may disappear. Place your comments between policy elements or at a higher level scope.\r\n-->\r\n<policies>\r\n  <inbound>\r\n    <base />\r\n    <rate-limit calls="10" renewal-period="60" />\r\n  </inbound>\r\n  <backend>\r\n    <base />\r\n  </backend>\r\n  <outbound>\r\n    <base />\r\n  </outbound>\r\n  <on-error>\r\n    <base />\r\n  </on-error>\r\n</policies>'
    format: 'xml'
  }
  dependsOn: [

    service_mfapim_name_resource
  ]
}

resource service_mfapim_name_starter_policy 'Microsoft.ApiManagement/service/products/policies@2021-12-01-preview' = {
  parent: service_mfapim_name_starter
  name: 'policy'
  properties: {
    value: '<!--\r\n            IMPORTANT:\r\n            - Policy elements can appear only within the <inbound>, <outbound>, <backend> section elements.\r\n            - Only the <forward-request> policy element can appear within the <backend> section element.\r\n            - To apply a policy to the incoming request (before it is forwarded to the backend service), place a corresponding policy element within the <inbound> section element.\r\n            - To apply a policy to the outgoing response (before it is sent back to the caller), place a corresponding policy element within the <outbound> section element.\r\n            - To add a policy position the cursor at the desired insertion point and click on the round button associated with the policy.\r\n            - To remove a policy, delete the corresponding policy statement from the policy document.\r\n            - Position the <base> element within a section element to inherit all policies from the corresponding section element in the enclosing scope.\r\n            - Remove the <base> element to prevent inheriting policies from the corresponding section element in the enclosing scope.\r\n            - Policies are applied in the order of their appearance, from the top down.\r\n        -->\r\n<policies>\r\n  <inbound>\r\n    <rate-limit calls="5" renewal-period="60" />\r\n    <quota calls="100" renewal-period="604800" />\r\n    <base />\r\n  </inbound>\r\n  <backend>\r\n    <base />\r\n  </backend>\r\n  <outbound>\r\n    <base />\r\n  </outbound>\r\n</policies>'
    format: 'xml'
  }
  dependsOn: [

    service_mfapim_name_resource
  ]
}

resource Microsoft_ApiManagement_service_products_policies_service_mfapim_name_test_policy 'Microsoft.ApiManagement/service/products/policies@2021-12-01-preview' = {
  parent: Microsoft_ApiManagement_service_products_service_mfapim_name_test
  name: 'policy'
  properties: {
    value: '<!--\r\n    IMPORTANT:\r\n    - Policy elements can appear only within the <inbound>, <outbound>, <backend> section elements.\r\n    - To apply a policy to the incoming request (before it is forwarded to the backend service), place a corresponding policy element within the <inbound> section element.\r\n    - To apply a policy to the outgoing response (before it is sent back to the caller), place a corresponding policy element within the <outbound> section element.\r\n    - To add a policy, place the cursor at the desired insertion point and select a policy from the sidebar.\r\n    - To remove a policy, delete the corresponding policy statement from the policy document.\r\n    - Position the <base> element within a section element to inherit all policies from the corresponding section element in the enclosing scope.\r\n    - Remove the <base> element to prevent inheriting policies from the corresponding section element in the enclosing scope.\r\n    - Policies are applied in the order of their appearance, from the top down.\r\n    - Comments within policy elements are not supported and may disappear. Place your comments between policy elements or at a higher level scope.\r\n-->\r\n<policies>\r\n  <inbound>\r\n    <trace source="MyProduct">\r\n      <message>Hello From Trace Message</message>\r\n    </trace>\r\n    <base />\r\n  </inbound>\r\n  <backend>\r\n    <base />\r\n  </backend>\r\n  <outbound>\r\n    <base />\r\n  </outbound>\r\n  <on-error>\r\n    <base />\r\n  </on-error>\r\n</policies>'
    format: 'xml'
  }
  dependsOn: [

    service_mfapim_name_resource
  ]
}

resource service_mfapim_name_mf_all 'Microsoft.ApiManagement/service/subscriptions@2021-12-01-preview' = {
  parent: service_mfapim_name_resource
  name: 'mf-all'
  properties: {
    ownerId: service_mfapim_name_60b8d2cd4ce5720ed8dfcfc6.id
    scope: '${service_mfapim_name_resource.id}/apis'
    displayName: 'All APIs subscription'
    state: 'active'
    allowTracing: true
  }
}

resource Microsoft_ApiManagement_service_subscriptions_service_mfapim_name_test 'Microsoft.ApiManagement/service/subscriptions@2021-12-01-preview' = {
  parent: service_mfapim_name_resource
  name: 'test'
  properties: {
    ownerId: service_mfapim_name_60b8d2cd4ce5720ed8dfcfc6.id
    scope: '${service_mfapim_name_resource.id}/apis'
    displayName: 'test'
    state: 'active'
    allowTracing: true
  }
}

resource privateDnsZones_privatelink_vaultcore_azure_net_name_5qscroxvvrj62 'Microsoft.Network/privateDnsZones/virtualNetworkLinks@2018-09-01' = {
  parent: privateDnsZones_privatelink_vaultcore_azure_net_name_resource
  name: '5qscroxvvrj62'
  location: 'global'
  properties: {
    registrationEnabled: false
    virtualNetwork: {
      id: virtualNetworks_vnet_name_resource.id
    }
  }
}

resource virtualNetworks_vnet_name_apim 'Microsoft.Network/virtualNetworks/subnets@2020-11-01' = {
  parent: virtualNetworks_vnet_name_resource
  name: 'apim'
  properties: {
    addressPrefix: '10.0.1.0/24'
    networkSecurityGroup: {
      id: networkSecurityGroups_vnet_apim_nsg_uksouth_name_resource.id
    }
    serviceEndpoints: [
      {
        service: 'Microsoft.KeyVault'
        locations: [
          '*'
        ]
      }
    ]
    delegations: []
    privateEndpointNetworkPolicies: 'Enabled'
    privateLinkServiceNetworkPolicies: 'Enabled'
  }
}

resource virtualNetworks_vnet_name_apim2 'Microsoft.Network/virtualNetworks/subnets@2020-11-01' = {
  parent: virtualNetworks_vnet_name_resource
  name: 'apim2'
  properties: {
    addressPrefix: '10.0.3.0/24'
    networkSecurityGroup: {
      id: networkSecurityGroups_vnet_apim2_nsg_uksouth_name_resource.id
    }
    serviceEndpoints: [
      {
        service: 'Microsoft.KeyVault'
        locations: [
          '*'
        ]
      }
    ]
    delegations: []
    privateEndpointNetworkPolicies: 'Enabled'
    privateLinkServiceNetworkPolicies: 'Enabled'
  }
}

resource virtualNetworks_vnet_name_default 'Microsoft.Network/virtualNetworks/subnets@2020-11-01' = {
  parent: virtualNetworks_vnet_name_resource
  name: 'default'
  properties: {
    addressPrefix: '10.0.0.0/24'
    networkSecurityGroup: {
      id: networkSecurityGroups_vnet_default_nsg_uksouth_name_resource.id
    }
    serviceEndpoints: []
    delegations: []
    privateEndpointNetworkPolicies: 'Enabled'
    privateLinkServiceNetworkPolicies: 'Enabled'
  }
}

resource virtualNetworks_vnet_name_keyvault 'Microsoft.Network/virtualNetworks/subnets@2020-11-01' = {
  parent: virtualNetworks_vnet_name_resource
  name: 'keyvault'
  properties: {
    addressPrefix: '10.0.2.0/24'
    networkSecurityGroup: {
      id: networkSecurityGroups_vnet_keyvault_nsg_uksouth_name_resource.id
    }
    serviceEndpoints: []
    delegations: []
    privateEndpointNetworkPolicies: 'Disabled'
    privateLinkServiceNetworkPolicies: 'Enabled'
  }
}

resource storageAccounts_mfapimdevportal_name_default_web 'Microsoft.Storage/storageAccounts/blobServices/containers@2021-09-01' = {
  parent: storageAccounts_mfapimdevportal_name_default
  name: '$web'
  properties: {
    immutableStorageWithVersioning: {
      enabled: false
    }
    defaultEncryptionScope: '$account-encryption-key'
    denyEncryptionScopeOverride: false
    publicAccess: 'None'
  }
  dependsOn: [

    storageAccounts_mfapimdevportal_name_resource
  ]
}

resource storageAccounts_mfapimdevportal_name_default_apimwrite 'Microsoft.Storage/storageAccounts/blobServices/containers@2021-09-01' = {
  parent: storageAccounts_mfapimdevportal_name_default
  name: 'apimwrite'
  properties: {
    immutableStorageWithVersioning: {
      enabled: false
    }
    defaultEncryptionScope: '$account-encryption-key'
    denyEncryptionScopeOverride: false
    publicAccess: 'None'
  }
  dependsOn: [

    storageAccounts_mfapimdevportal_name_resource
  ]
}

resource storageAccounts_mfapimdevportal_name_default_arm_test 'Microsoft.Storage/storageAccounts/blobServices/containers@2021-09-01' = {
  parent: storageAccounts_mfapimdevportal_name_default
  name: 'arm-test'
  properties: {
    immutableStorageWithVersioning: {
      enabled: false
    }
    defaultEncryptionScope: '$account-encryption-key'
    denyEncryptionScopeOverride: false
    publicAccess: 'None'
  }
  dependsOn: [

    storageAccounts_mfapimdevportal_name_resource
  ]
}

resource storageAccounts_mffuncstore01_name_default_azure_webjobs_hosts 'Microsoft.Storage/storageAccounts/blobServices/containers@2021-09-01' = {
  parent: storageAccounts_mffuncstore01_name_default
  name: 'azure-webjobs-hosts'
  properties: {
    immutableStorageWithVersioning: {
      enabled: false
    }
    defaultEncryptionScope: '$account-encryption-key'
    denyEncryptionScopeOverride: false
    publicAccess: 'None'
  }
  dependsOn: [

    storageAccounts_mffuncstore01_name_resource
  ]
}

resource storageAccounts_storageaccountapimkb9d9_name_default_azure_webjobs_hosts 'Microsoft.Storage/storageAccounts/blobServices/containers@2021-09-01' = {
  parent: storageAccounts_storageaccountapimkb9d9_name_default
  name: 'azure-webjobs-hosts'
  properties: {
    immutableStorageWithVersioning: {
      enabled: false
    }
    defaultEncryptionScope: '$account-encryption-key'
    denyEncryptionScopeOverride: false
    publicAccess: 'None'
  }
  dependsOn: [

    storageAccounts_storageaccountapimkb9d9_name_resource
  ]
}

resource storageAccounts_mffuncstore01_name_default_azure_webjobs_secrets 'Microsoft.Storage/storageAccounts/blobServices/containers@2021-09-01' = {
  parent: storageAccounts_mffuncstore01_name_default
  name: 'azure-webjobs-secrets'
  properties: {
    immutableStorageWithVersioning: {
      enabled: false
    }
    defaultEncryptionScope: '$account-encryption-key'
    denyEncryptionScopeOverride: false
    publicAccess: 'None'
  }
  dependsOn: [

    storageAccounts_mffuncstore01_name_resource
  ]
}

resource storageAccounts_storageaccountapimkb9d9_name_default_azure_webjobs_secrets 'Microsoft.Storage/storageAccounts/blobServices/containers@2021-09-01' = {
  parent: storageAccounts_storageaccountapimkb9d9_name_default
  name: 'azure-webjobs-secrets'
  properties: {
    immutableStorageWithVersioning: {
      enabled: false
    }
    defaultEncryptionScope: '$account-encryption-key'
    denyEncryptionScopeOverride: false
    publicAccess: 'None'
  }
  dependsOn: [

    storageAccounts_storageaccountapimkb9d9_name_resource
  ]
}

resource storageAccounts_mfapimdevportal_name_default_copytest 'Microsoft.Storage/storageAccounts/blobServices/containers@2021-09-01' = {
  parent: storageAccounts_mfapimdevportal_name_default
  name: 'copytest'
  properties: {
    immutableStorageWithVersioning: {
      enabled: false
    }
    defaultEncryptionScope: '$account-encryption-key'
    denyEncryptionScopeOverride: false
    publicAccess: 'None'
  }
  dependsOn: [

    storageAccounts_mfapimdevportal_name_resource
  ]
}

resource storageAccounts_mfapimdevportal_name_default_identitytrigger 'Microsoft.Storage/storageAccounts/blobServices/containers@2021-09-01' = {
  parent: storageAccounts_mfapimdevportal_name_default
  name: 'identitytrigger'
  properties: {
    immutableStorageWithVersioning: {
      enabled: false
    }
    defaultEncryptionScope: '$account-encryption-key'
    denyEncryptionScopeOverride: false
    publicAccess: 'None'
  }
  dependsOn: [

    storageAccounts_mfapimdevportal_name_resource
  ]
}

resource storageAccounts_mfapimdevportal_name_default_insights_logs_gatewaylogs 'Microsoft.Storage/storageAccounts/blobServices/containers@2021-09-01' = {
  parent: storageAccounts_mfapimdevportal_name_default
  name: 'insights-logs-gatewaylogs'
  properties: {
    immutableStorageWithVersioning: {
      enabled: false
    }
    defaultEncryptionScope: '$account-encryption-key'
    denyEncryptionScopeOverride: false
    publicAccess: 'None'
  }
  dependsOn: [

    storageAccounts_mfapimdevportal_name_resource
  ]
}

resource storageAccounts_mfapimdevportal_name_default_insights_metrics_pt1m 'Microsoft.Storage/storageAccounts/blobServices/containers@2021-09-01' = {
  parent: storageAccounts_mfapimdevportal_name_default
  name: 'insights-metrics-pt1m'
  properties: {
    immutableStorageWithVersioning: {
      enabled: false
    }
    defaultEncryptionScope: '$account-encryption-key'
    denyEncryptionScopeOverride: false
    publicAccess: 'None'
  }
  dependsOn: [

    storageAccounts_mfapimdevportal_name_resource
  ]
}

resource storageAccounts_storageaccountapimkb9d9_name_default_la_demo18a36 'Microsoft.Storage/storageAccounts/fileServices/shares@2021-09-01' = {
  parent: Microsoft_Storage_storageAccounts_fileServices_storageAccounts_storageaccountapimkb9d9_name_default
  name: 'la-demo18a36'
  properties: {
    accessTier: 'TransactionOptimized'
    shareQuota: 5120
    enabledProtocols: 'SMB'
  }
  dependsOn: [

    storageAccounts_storageaccountapimkb9d9_name_resource
  ]
}

resource storageAccounts_mffuncstore01_name_default_mfdemofunca2aa 'Microsoft.Storage/storageAccounts/fileServices/shares@2021-09-01' = {
  parent: Microsoft_Storage_storageAccounts_fileServices_storageAccounts_mffuncstore01_name_default
  name: 'mfdemofunca2aa'
  properties: {
    accessTier: 'TransactionOptimized'
    shareQuota: 5120
    enabledProtocols: 'SMB'
  }
  dependsOn: [

    storageAccounts_mffuncstore01_name_resource
  ]
}

resource storageAccounts_storageaccountapimkb9d9_name_default_flow49861799ad1d6c0jobtriggers00 'Microsoft.Storage/storageAccounts/queueServices/queues@2021-09-01' = {
  parent: Microsoft_Storage_storageAccounts_queueServices_storageAccounts_storageaccountapimkb9d9_name_default
  name: 'flow49861799ad1d6c0jobtriggers00'
  properties: {
    metadata: {
    }
  }
  dependsOn: [

    storageAccounts_storageaccountapimkb9d9_name_resource
  ]
}

resource storageAccounts_storageaccountapimkb9d9_name_default_flow49861799ad1d6c01b861eeb88ff151flows 'Microsoft.Storage/storageAccounts/tableServices/tables@2021-09-01' = {
  parent: Microsoft_Storage_storageAccounts_tableServices_storageAccounts_storageaccountapimkb9d9_name_default
  name: 'flow49861799ad1d6c01b861eeb88ff151flows'
  properties: {
  }
  dependsOn: [

    storageAccounts_storageaccountapimkb9d9_name_resource
  ]
}

resource storageAccounts_storageaccountapimkb9d9_name_default_flow49861799ad1d6c08d41c8ab39fe6afflows 'Microsoft.Storage/storageAccounts/tableServices/tables@2021-09-01' = {
  parent: Microsoft_Storage_storageAccounts_tableServices_storageAccounts_storageaccountapimkb9d9_name_default
  name: 'flow49861799ad1d6c08d41c8ab39fe6afflows'
  properties: {
  }
  dependsOn: [

    storageAccounts_storageaccountapimkb9d9_name_resource
  ]
}

resource storageAccounts_storageaccountapimkb9d9_name_default_flow49861799ad1d6c08d41c8ab39fe6afhistories 'Microsoft.Storage/storageAccounts/tableServices/tables@2021-09-01' = {
  parent: Microsoft_Storage_storageAccounts_tableServices_storageAccounts_storageaccountapimkb9d9_name_default
  name: 'flow49861799ad1d6c08d41c8ab39fe6afhistories'
  properties: {
  }
  dependsOn: [

    storageAccounts_storageaccountapimkb9d9_name_resource
  ]
}

resource storageAccounts_storageaccountapimkb9d9_name_default_flow49861799ad1d6c0f994db767d5e0d3flows 'Microsoft.Storage/storageAccounts/tableServices/tables@2021-09-01' = {
  parent: Microsoft_Storage_storageAccounts_tableServices_storageAccounts_storageaccountapimkb9d9_name_default
  name: 'flow49861799ad1d6c0f994db767d5e0d3flows'
  properties: {
  }
  dependsOn: [

    storageAccounts_storageaccountapimkb9d9_name_resource
  ]
}

resource storageAccounts_storageaccountapimkb9d9_name_default_flow49861799ad1d6c0flowaccesskeys 'Microsoft.Storage/storageAccounts/tableServices/tables@2021-09-01' = {
  parent: Microsoft_Storage_storageAccounts_tableServices_storageAccounts_storageaccountapimkb9d9_name_default
  name: 'flow49861799ad1d6c0flowaccesskeys'
  properties: {
  }
  dependsOn: [

    storageAccounts_storageaccountapimkb9d9_name_resource
  ]
}

resource storageAccounts_storageaccountapimkb9d9_name_default_flow49861799ad1d6c0flowruntimecontext 'Microsoft.Storage/storageAccounts/tableServices/tables@2021-09-01' = {
  parent: Microsoft_Storage_storageAccounts_tableServices_storageAccounts_storageaccountapimkb9d9_name_default
  name: 'flow49861799ad1d6c0flowruntimecontext'
  properties: {
  }
  dependsOn: [

    storageAccounts_storageaccountapimkb9d9_name_resource
  ]
}

resource storageAccounts_storageaccountapimkb9d9_name_default_flow49861799ad1d6c0flows 'Microsoft.Storage/storageAccounts/tableServices/tables@2021-09-01' = {
  parent: Microsoft_Storage_storageAccounts_tableServices_storageAccounts_storageaccountapimkb9d9_name_default
  name: 'flow49861799ad1d6c0flows'
  properties: {
  }
  dependsOn: [

    storageAccounts_storageaccountapimkb9d9_name_resource
  ]
}

resource storageAccounts_storageaccountapimkb9d9_name_default_flow49861799ad1d6c0flowsubscriptions 'Microsoft.Storage/storageAccounts/tableServices/tables@2021-09-01' = {
  parent: Microsoft_Storage_storageAccounts_tableServices_storageAccounts_storageaccountapimkb9d9_name_default
  name: 'flow49861799ad1d6c0flowsubscriptions'
  properties: {
  }
  dependsOn: [

    storageAccounts_storageaccountapimkb9d9_name_resource
  ]
}

resource storageAccounts_storageaccountapimkb9d9_name_default_flow49861799ad1d6c0flowsubscriptionsummary 'Microsoft.Storage/storageAccounts/tableServices/tables@2021-09-01' = {
  parent: Microsoft_Storage_storageAccounts_tableServices_storageAccounts_storageaccountapimkb9d9_name_default
  name: 'flow49861799ad1d6c0flowsubscriptionsummary'
  properties: {
  }
  dependsOn: [

    storageAccounts_storageaccountapimkb9d9_name_resource
  ]
}

resource storageAccounts_storageaccountapimkb9d9_name_default_flow49861799ad1d6c0jobdefinitions 'Microsoft.Storage/storageAccounts/tableServices/tables@2021-09-01' = {
  parent: Microsoft_Storage_storageAccounts_tableServices_storageAccounts_storageaccountapimkb9d9_name_default
  name: 'flow49861799ad1d6c0jobdefinitions'
  properties: {
  }
  dependsOn: [

    storageAccounts_storageaccountapimkb9d9_name_resource
  ]
}

resource storageAccounts_storageaccountapimkb9d9_name_default_Todo 'Microsoft.Storage/storageAccounts/tableServices/tables@2021-09-01' = {
  parent: Microsoft_Storage_storageAccounts_tableServices_storageAccounts_storageaccountapimkb9d9_name_default
  name: 'Todo'
  properties: {
  }
  dependsOn: [

    storageAccounts_storageaccountapimkb9d9_name_resource
  ]
}

resource service_mfapim_name_echo_api_applicationinsights 'Microsoft.ApiManagement/service/apis/diagnostics@2021-12-01-preview' = {
  parent: service_mfapim_name_echo_api
  name: 'applicationinsights'
  properties: {
    alwaysLog: 'allErrors'
    httpCorrelationProtocol: 'Legacy'
    verbosity: 'information'
    logClientIp: true
    loggerId: service_mfapim_name_apim_kv_ai.id
    sampling: {
      samplingType: 'fixed'
      percentage: 100
    }
    frontend: {
      request: {
        headers: []
        body: {
          bytes: 0
        }
      }
      response: {
        headers: []
        body: {
          bytes: 0
        }
      }
    }
    backend: {
      request: {
        headers: []
        body: {
          bytes: 0
        }
      }
      response: {
        headers: []
        body: {
          bytes: 0
        }
      }
    }
  }
  dependsOn: [

    service_mfapim_name_resource

  ]
}

resource service_mfapim_name_echo_api_rev_1_applicationinsights 'Microsoft.ApiManagement/service/apis/diagnostics@2021-12-01-preview' = {
  parent: service_mfapim_name_echo_api_rev_1
  name: 'applicationinsights'
  properties: {
    alwaysLog: 'allErrors'
    httpCorrelationProtocol: 'Legacy'
    verbosity: 'information'
    logClientIp: true
    loggerId: service_mfapim_name_apim_kv_ai.id
    sampling: {
      samplingType: 'fixed'
      percentage: 100
    }
    frontend: {
      request: {
        headers: []
        body: {
          bytes: 0
        }
      }
      response: {
        headers: []
        body: {
          bytes: 0
        }
      }
    }
    backend: {
      request: {
        headers: []
        body: {
          bytes: 0
        }
      }
      response: {
        headers: []
        body: {
          bytes: 0
        }
      }
    }
  }
  dependsOn: [

    service_mfapim_name_resource

  ]
}

resource service_mfapim_name_keyvault_applicationinsights 'Microsoft.ApiManagement/service/apis/diagnostics@2021-12-01-preview' = {
  parent: service_mfapim_name_keyvault
  name: 'applicationinsights'
  properties: {
    alwaysLog: 'allErrors'
    httpCorrelationProtocol: 'Legacy'
    verbosity: 'information'
    logClientIp: true
    loggerId: service_mfapim_name_apim_kv_ai.id
    sampling: {
      samplingType: 'fixed'
      percentage: 100
    }
    frontend: {
      request: {
        headers: []
        body: {
          bytes: 0
        }
      }
      response: {
        headers: []
        body: {
          bytes: 0
        }
      }
    }
    backend: {
      request: {
        headers: []
        body: {
          bytes: 0
        }
      }
      response: {
        headers: []
        body: {
          bytes: 0
        }
      }
    }
  }
  dependsOn: [

    service_mfapim_name_resource

  ]
}

resource service_mfapim_name_mfsimplefunction_applicationinsights 'Microsoft.ApiManagement/service/apis/diagnostics@2021-12-01-preview' = {
  parent: Microsoft_ApiManagement_service_apis_service_mfapim_name_mfsimplefunction
  name: 'applicationinsights'
  properties: {
    alwaysLog: 'allErrors'
    httpCorrelationProtocol: 'Legacy'
    verbosity: 'information'
    logClientIp: true
    loggerId: service_mfapim_name_apim_kv_ai.id
    sampling: {
      samplingType: 'fixed'
      percentage: 100
    }
    frontend: {
      request: {
        headers: []
        body: {
          bytes: 0
        }
      }
      response: {
        headers: []
        body: {
          bytes: 0
        }
      }
    }
    backend: {
      request: {
        headers: []
        body: {
          bytes: 0
        }
      }
      response: {
        headers: []
        body: {
          bytes: 0
        }
      }
    }
  }
  dependsOn: [

    service_mfapim_name_resource

  ]
}

resource service_mfapim_name_test_applicationinsights 'Microsoft.ApiManagement/service/apis/diagnostics@2021-12-01-preview' = {
  parent: service_mfapim_name_test
  name: 'applicationinsights'
  properties: {
    alwaysLog: 'allErrors'
    httpCorrelationProtocol: 'Legacy'
    logClientIp: true
    loggerId: service_mfapim_name_service_mfapim_name_ai.id
    sampling: {
      samplingType: 'fixed'
      percentage: 100
    }
    frontend: {
      request: {
        headers: [
          'Advanced'
        ]
        body: {
          bytes: 8192
        }
      }
      response: {
        headers: [
          'Advanced'
        ]
        body: {
          bytes: 8192
        }
      }
    }
    backend: {
      request: {
        headers: [
          'Advanced'
        ]
        body: {
          bytes: 8192
        }
      }
      response: {
        headers: [
          'Advanced'
        ]
        body: {
          bytes: 8192
        }
      }
    }
  }
  dependsOn: [

    service_mfapim_name_resource

  ]
}

resource service_mfapim_name_keyvault_azuremonitor 'Microsoft.ApiManagement/service/apis/diagnostics@2021-12-01-preview' = {
  parent: service_mfapim_name_keyvault
  name: 'azuremonitor'
  properties: {
    alwaysLog: 'allErrors'
    verbosity: 'information'
    logClientIp: true
    loggerId: service_mfapim_name_azuremonitor.id
    sampling: {
      samplingType: 'fixed'
      percentage: 100
    }
    frontend: {
      request: {
        headers: []
        body: {
          bytes: 0
        }
      }
      response: {
        headers: []
        body: {
          bytes: 0
        }
      }
    }
    backend: {
      request: {
        headers: []
        body: {
          bytes: 0
        }
      }
      response: {
        headers: []
        body: {
          bytes: 0
        }
      }
    }
  }
  dependsOn: [

    service_mfapim_name_resource

  ]
}

resource service_mfapim_name_echo_api_applicationinsights_apim_kv_ai 'Microsoft.ApiManagement/service/apis/diagnostics/loggers@2018-01-01' = {
  parent: service_mfapim_name_echo_api_applicationinsights
  name: 'apim-kv-ai'
  dependsOn: [

    service_mfapim_name_echo_api
    service_mfapim_name_resource
  ]
}

resource service_mfapim_name_echo_api_rev_1_applicationinsights_apim_kv_ai 'Microsoft.ApiManagement/service/apis/diagnostics/loggers@2018-01-01' = {
  parent: service_mfapim_name_echo_api_rev_1_applicationinsights
  name: 'apim-kv-ai'
  dependsOn: [

    service_mfapim_name_echo_api_rev_1
    service_mfapim_name_resource
  ]
}

resource service_mfapim_name_keyvault_applicationinsights_apim_kv_ai 'Microsoft.ApiManagement/service/apis/diagnostics/loggers@2018-01-01' = {
  parent: service_mfapim_name_keyvault_applicationinsights
  name: 'apim-kv-ai'
  dependsOn: [

    service_mfapim_name_keyvault
    service_mfapim_name_resource
  ]
}

resource service_mfapim_name_mfsimplefunction_applicationinsights_apim_kv_ai 'Microsoft.ApiManagement/service/apis/diagnostics/loggers@2018-01-01' = {
  parent: service_mfapim_name_mfsimplefunction_applicationinsights
  name: 'apim-kv-ai'
  dependsOn: [

    Microsoft_ApiManagement_service_apis_service_mfapim_name_mfsimplefunction
    service_mfapim_name_resource
  ]
}

resource service_mfapim_name_keyvault_azuremonitor_azuremonitor 'Microsoft.ApiManagement/service/apis/diagnostics/loggers@2018-01-01' = {
  parent: service_mfapim_name_keyvault_azuremonitor
  name: 'azuremonitor'
  dependsOn: [

    service_mfapim_name_keyvault
    service_mfapim_name_resource
  ]
}

resource service_mfapim_name_test_applicationinsights_service_mfapim_name_ai 'Microsoft.ApiManagement/service/apis/diagnostics/loggers@2018-01-01' = {
  parent: service_mfapim_name_test_applicationinsights
  name: '${service_mfapim_name}-ai'
  dependsOn: [

    service_mfapim_name_test
    service_mfapim_name_resource
  ]
}

resource service_mfapim_name_dad_joke_629e00bd8e9642aebd59cf3c_policy 'Microsoft.ApiManagement/service/apis/operations/policies@2021-12-01-preview' = {
  parent: service_mfapim_name_dad_joke_629e00bd8e9642aebd59cf3c
  name: 'policy'
  properties: {
    value: '<policies>\r\n  <inbound>\r\n    <base />\r\n    <rewrite-uri template="/search" copy-unmatched-params="false" />\r\n    <set-header name="Accept" exists-action="override">\r\n      <value>application/json</value>\r\n    </set-header>\r\n    <include-fragment fragment-id="set-dad-joke-parameters" />\r\n    <set-method>GET</set-method>\r\n  </inbound>\r\n  <backend>\r\n    <base />\r\n  </backend>\r\n  <outbound>\r\n    <base />\r\n  </outbound>\r\n  <on-error>\r\n    <base />\r\n  </on-error>\r\n</policies>'
    format: 'xml'
  }
  dependsOn: [

    service_mfapim_name_dad_joke
    service_mfapim_name_resource
  ]
}

resource service_mfapim_name_dad_joke_get_a_random_joke_policy 'Microsoft.ApiManagement/service/apis/operations/policies@2021-12-01-preview' = {
  parent: service_mfapim_name_dad_joke_get_a_random_joke
  name: 'policy'
  properties: {
    value: '<policies>\r\n  <inbound>\r\n    <base />\r\n    <rewrite-uri template="/" copy-unmatched-params="false" />\r\n    <set-header name="Accept" exists-action="override">\r\n      <value>application/json</value>\r\n    </set-header>\r\n  </inbound>\r\n  <backend>\r\n    <base />\r\n  </backend>\r\n  <outbound>\r\n    <base />\r\n  </outbound>\r\n  <on-error>\r\n    <base />\r\n  </on-error>\r\n</policies>'
    format: 'xml'
  }
  dependsOn: [

    service_mfapim_name_dad_joke
    service_mfapim_name_resource
  ]
}

resource service_mfapim_name_dad_joke_get_joke_policy 'Microsoft.ApiManagement/service/apis/operations/policies@2021-12-01-preview' = {
  parent: service_mfapim_name_dad_joke_get_joke
  name: 'policy'
  properties: {
    value: '<policies>\r\n  <inbound>\r\n    <base />\r\n    <rewrite-uri template="/j/{id}" copy-unmatched-params="false" />\r\n    <set-header name="Accept" exists-action="override">\r\n      <value>application/json</value>\r\n    </set-header>\r\n  </inbound>\r\n  <backend>\r\n    <base />\r\n  </backend>\r\n  <outbound>\r\n    <base />\r\n  </outbound>\r\n  <on-error>\r\n    <base />\r\n  </on-error>\r\n</policies>'
    format: 'xml'
  }
  dependsOn: [

    service_mfapim_name_dad_joke
    service_mfapim_name_resource
  ]
}

resource service_mfapim_name_dad_joke_search_for_jokes_policy 'Microsoft.ApiManagement/service/apis/operations/policies@2021-12-01-preview' = {
  parent: service_mfapim_name_dad_joke_search_for_jokes
  name: 'policy'
  properties: {
    value: '<policies>\r\n  <inbound>\r\n    <base />\r\n    <rewrite-uri template="/search" copy-unmatched-params="false" />\r\n    <set-header name="Accept" exists-action="override">\r\n      <value>application/json</value>\r\n    </set-header>\r\n    <set-variable name="jsonBody" value="@{&#xD;&#xA;            return context.Request.Body.As&lt;JObject&gt;();&#xD;&#xA;        }" />\r\n    <set-query-parameter name="page" exists-action="override">\r\n      <value>@(((JObject)context.Variables["jsonBody"])["page"].ToString())</value>\r\n    </set-query-parameter>\r\n    <set-query-parameter name="term" exists-action="override">\r\n      <value>@(((JObject)context.Variables["jsonBody"])["term"].ToString())</value>\r\n    </set-query-parameter>\r\n    <set-query-parameter name="limit" exists-action="override">\r\n      <value>{{ DadJokePageLimit }}</value>\r\n    </set-query-parameter>\r\n    <set-method>GET</set-method>\r\n  </inbound>\r\n  <backend>\r\n    <base />\r\n  </backend>\r\n  <outbound>\r\n    <base />\r\n  </outbound>\r\n  <on-error>\r\n    <base />\r\n  </on-error>\r\n</policies>'
    format: 'xml'
  }
  dependsOn: [

    service_mfapim_name_dad_joke
    service_mfapim_name_resource
  ]
}

resource service_mfapim_name_echo_api_create_resource_policy 'Microsoft.ApiManagement/service/apis/operations/policies@2021-12-01-preview' = {
  parent: service_mfapim_name_echo_api_create_resource
  name: 'policy'
  properties: {
    value: '<policies>\r\n  <inbound>\r\n    <base />\r\n    <json-to-xml apply="always" consider-accept-header="false" />\r\n  </inbound>\r\n  <backend>\r\n    <base />\r\n  </backend>\r\n  <outbound>\r\n    <base />\r\n  </outbound>\r\n</policies>'
    format: 'xml'
  }
  dependsOn: [

    service_mfapim_name_echo_api
    service_mfapim_name_resource
  ]
}

resource service_mfapim_name_echo_api_retrieve_header_only_policy 'Microsoft.ApiManagement/service/apis/operations/policies@2021-12-01-preview' = {
  parent: service_mfapim_name_echo_api_retrieve_header_only
  name: 'policy'
  properties: {
    value: '<policies>\r\n  <inbound>\r\n    <base />\r\n  </inbound>\r\n  <backend>\r\n    <base />\r\n  </backend>\r\n  <outbound>\r\n    <base />\r\n    <set-header name="X-My-Sample" exists-action="override">\r\n      <value>This is a sample</value>\r\n      <!-- for multiple headers with the same name add additional value elements -->\r\n    </set-header>\r\n    <jsonp callback-parameter-name="ProcessResponse" />\r\n  </outbound>\r\n</policies>'
    format: 'xml'
  }
  dependsOn: [

    service_mfapim_name_echo_api
    service_mfapim_name_resource
  ]
}

resource service_mfapim_name_echo_api_retrieve_resource_cached_policy 'Microsoft.ApiManagement/service/apis/operations/policies@2021-12-01-preview' = {
  parent: service_mfapim_name_echo_api_retrieve_resource_cached
  name: 'policy'
  properties: {
    value: '<policies>\r\n  <inbound>\r\n    <base />\r\n    <cache-lookup vary-by-developer="false" vary-by-developer-groups="false">\r\n      <vary-by-header>Accept</vary-by-header>\r\n      <vary-by-header>Accept-Charset</vary-by-header>\r\n    </cache-lookup>\r\n    <rewrite-uri template="/resource" />\r\n  </inbound>\r\n  <backend>\r\n    <base />\r\n  </backend>\r\n  <outbound>\r\n    <base />\r\n    <cache-store duration="3600" />\r\n  </outbound>\r\n</policies>'
    format: 'xml'
  }
  dependsOn: [

    service_mfapim_name_echo_api
    service_mfapim_name_resource
  ]
}

resource service_mfapim_name_echo_api_rev_1_create_resource_policy 'Microsoft.ApiManagement/service/apis/operations/policies@2021-12-01-preview' = {
  parent: service_mfapim_name_echo_api_rev_1_create_resource
  name: 'policy'
  properties: {
    value: '<policies>\r\n  <inbound>\r\n    <base />\r\n    <json-to-xml apply="always" consider-accept-header="false" />\r\n  </inbound>\r\n  <backend>\r\n    <base />\r\n  </backend>\r\n  <outbound>\r\n    <base />\r\n  </outbound>\r\n</policies>'
    format: 'xml'
  }
  dependsOn: [

    service_mfapim_name_echo_api_rev_1
    service_mfapim_name_resource
  ]
}

resource service_mfapim_name_echo_api_rev_1_retrieve_header_only_policy 'Microsoft.ApiManagement/service/apis/operations/policies@2021-12-01-preview' = {
  parent: service_mfapim_name_echo_api_rev_1_retrieve_header_only
  name: 'policy'
  properties: {
    value: '<policies>\r\n  <inbound>\r\n    <base />\r\n  </inbound>\r\n  <backend>\r\n    <base />\r\n  </backend>\r\n  <outbound>\r\n    <base />\r\n    <set-header name="X-My-Sample" exists-action="override">\r\n      <value>This is a sample</value>\r\n      <!-- for multiple headers with the same name add additional value elements -->\r\n    </set-header>\r\n    <jsonp callback-parameter-name="ProcessResponse" />\r\n  </outbound>\r\n</policies>'
    format: 'xml'
  }
  dependsOn: [

    service_mfapim_name_echo_api_rev_1
    service_mfapim_name_resource
  ]
}

resource service_mfapim_name_echo_api_rev_1_retrieve_resource_cached_policy 'Microsoft.ApiManagement/service/apis/operations/policies@2021-12-01-preview' = {
  parent: service_mfapim_name_echo_api_rev_1_retrieve_resource_cached
  name: 'policy'
  properties: {
    value: '<policies>\r\n  <inbound>\r\n    <base />\r\n    <cache-lookup vary-by-developer="false" vary-by-developer-groups="false">\r\n      <vary-by-header>Accept</vary-by-header>\r\n      <vary-by-header>Accept-Charset</vary-by-header>\r\n    </cache-lookup>\r\n    <rewrite-uri template="/resource" />\r\n  </inbound>\r\n  <backend>\r\n    <base />\r\n  </backend>\r\n  <outbound>\r\n    <base />\r\n    <cache-store duration="3600" />\r\n  </outbound>\r\n</policies>'
    format: 'xml'
  }
  dependsOn: [

    service_mfapim_name_echo_api_rev_1
    service_mfapim_name_resource
  ]
}

resource service_mfapim_name_keyvault_60b0ba6865c1eec905e07c72_policy 'Microsoft.ApiManagement/service/apis/operations/policies@2021-12-01-preview' = {
  parent: service_mfapim_name_keyvault_60b0ba6865c1eec905e07c72
  name: 'policy'
  properties: {
    value: '<!--\r\n    IMPORTANT:\r\n    - Policy elements can appear only within the <inbound>, <outbound>, <backend> section elements.\r\n    - To apply a policy to the incoming request (before it is forwarded to the backend service), place a corresponding policy element within the <inbound> section element.\r\n    - To apply a policy to the outgoing response (before it is sent back to the caller), place a corresponding policy element within the <outbound> section element.\r\n    - To add a policy, place the cursor at the desired insertion point and select a policy from the sidebar.\r\n    - To remove a policy, delete the corresponding policy statement from the policy document.\r\n    - Position the <base> element within a section element to inherit all policies from the corresponding section element in the enclosing scope.\r\n    - Remove the <base> element to prevent inheriting policies from the corresponding section element in the enclosing scope.\r\n    - Policies are applied in the order of their appearance, from the top down.\r\n    - Comments within policy elements are not supported and may disappear. Place your comments between policy elements or at a higher level scope.\r\n-->\r\n<policies>\r\n  <inbound>\r\n    <base />\r\n    <return-response>\r\n      <set-status code="200" reason="Successful" />\r\n      <set-header name="Content-Type" exists-action="override">\r\n        <value>text/plain</value>\r\n      </set-header>\r\n      <set-body>{{KVSecret2a}}</set-body>\r\n    </return-response>\r\n  </inbound>\r\n  <backend>\r\n    <base />\r\n  </backend>\r\n  <outbound>\r\n    <base />\r\n  </outbound>\r\n  <on-error>\r\n    <base />\r\n  </on-error>\r\n</policies>'
    format: 'xml'
  }
  dependsOn: [

    service_mfapim_name_keyvault
    service_mfapim_name_resource
  ]
}

resource service_mfapim_name_keyvault_get_named_value_from_keyvault_policy 'Microsoft.ApiManagement/service/apis/operations/policies@2021-12-01-preview' = {
  parent: service_mfapim_name_keyvault_get_named_value_from_keyvault
  name: 'policy'
  properties: {
    value: '<!--\r\n    IMPORTANT:\r\n    - Policy elements can appear only within the <inbound>, <outbound>, <backend> section elements.\r\n    - To apply a policy to the incoming request (before it is forwarded to the backend service), place a corresponding policy element within the <inbound> section element.\r\n    - To apply a policy to the outgoing response (before it is sent back to the caller), place a corresponding policy element within the <outbound> section element.\r\n    - To add a policy, place the cursor at the desired insertion point and select a policy from the sidebar.\r\n    - To remove a policy, delete the corresponding policy statement from the policy document.\r\n    - Position the <base> element within a section element to inherit all policies from the corresponding section element in the enclosing scope.\r\n    - Remove the <base> element to prevent inheriting policies from the corresponding section element in the enclosing scope.\r\n    - Policies are applied in the order of their appearance, from the top down.\r\n    - Comments within policy elements are not supported and may disappear. Place your comments between policy elements or at a higher level scope.\r\n-->\r\n<policies>\r\n  <inbound>\r\n    <base />\r\n    <return-response>\r\n      <set-status code="200" reason="Successful" />\r\n      <set-header name="Content-Type" exists-action="override">\r\n        <value>text/plain</value>\r\n      </set-header>\r\n      <set-body>{{KVSecret1a}}</set-body>\r\n    </return-response>\r\n  </inbound>\r\n  <backend>\r\n    <base />\r\n  </backend>\r\n  <outbound>\r\n    <base />\r\n  </outbound>\r\n  <on-error>\r\n    <base />\r\n  </on-error>\r\n</policies>'
    format: 'xml'
  }
  dependsOn: [

    service_mfapim_name_keyvault
    service_mfapim_name_resource
  ]
}

resource service_mfapim_name_managedidentity_callkeyvault_policy 'Microsoft.ApiManagement/service/apis/operations/policies@2021-12-01-preview' = {
  parent: service_mfapim_name_managedidentity_callkeyvault
  name: 'policy'
  properties: {
    value: '<!--\r\n    IMPORTANT:\r\n    - Policy elements can appear only within the <inbound>, <outbound>, <backend> section elements.\r\n    - To apply a policy to the incoming request (before it is forwarded to the backend service), place a corresponding policy element within the <inbound> section element.\r\n    - To apply a policy to the outgoing response (before it is sent back to the caller), place a corresponding policy element within the <outbound> section element.\r\n    - To add a policy, place the cursor at the desired insertion point and select a policy from the sidebar.\r\n    - To remove a policy, delete the corresponding policy statement from the policy document.\r\n    - Position the <base> element within a section element to inherit all policies from the corresponding section element in the enclosing scope.\r\n    - Remove the <base> element to prevent inheriting policies from the corresponding section element in the enclosing scope.\r\n    - Policies are applied in the order of their appearance, from the top down.\r\n    - Comments within policy elements are not supported and may disappear. Place your comments between policy elements or at a higher level scope.\r\n-->\r\n<policies>\r\n  <inbound>\r\n    <base />\r\n    <send-request mode="new" response-variable-name="keyvaultdata" timeout="10" ignore-error="true">\r\n      <set-url>https://{{keyvaulturl}}.vault.azure.net/secrets?api-version=7.2</set-url>\r\n      <set-method>GET</set-method>\r\n      <authentication-managed-identity resource="https://vault.azure.net" />\r\n    </send-request>\r\n    <return-response>\r\n      <set-status code="200" reason="Successful" />\r\n      <set-body>@(((IResponse)context.Variables["keyvaultdata"]).Body.As&lt;string&gt;())</set-body>\r\n    </return-response>\r\n  </inbound>\r\n  <backend>\r\n    <base />\r\n  </backend>\r\n  <outbound>\r\n    <base />\r\n  </outbound>\r\n  <on-error>\r\n    <base />\r\n  </on-error>\r\n</policies>'
    format: 'xml'
  }
  dependsOn: [

    service_mfapim_name_managedidentity
    service_mfapim_name_resource
  ]
}

resource service_mfapim_name_managedidentity_getresourcegroups_policy 'Microsoft.ApiManagement/service/apis/operations/policies@2021-12-01-preview' = {
  parent: service_mfapim_name_managedidentity_getresourcegroups
  name: 'policy'
  properties: {
    value: '<!--\r\n    IMPORTANT:\r\n    - Policy elements can appear only within the <inbound>, <outbound>, <backend> section elements.\r\n    - To apply a policy to the incoming request (before it is forwarded to the backend service), place a corresponding policy element within the <inbound> section element.\r\n    - To apply a policy to the outgoing response (before it is sent back to the caller), place a corresponding policy element within the <outbound> section element.\r\n    - To add a policy, place the cursor at the desired insertion point and select a policy from the sidebar.\r\n    - To remove a policy, delete the corresponding policy statement from the policy document.\r\n    - Position the <base> element within a section element to inherit all policies from the corresponding section element in the enclosing scope.\r\n    - Remove the <base> element to prevent inheriting policies from the corresponding section element in the enclosing scope.\r\n    - Policies are applied in the order of their appearance, from the top down.\r\n    - Comments within policy elements are not supported and may disappear. Place your comments between policy elements or at a higher level scope.\r\n-->\r\n<policies>\r\n  <inbound>\r\n    <base />\r\n    <send-request mode="new" response-variable-name="resourcedata" timeout="10" ignore-error="true">\r\n      <set-url>https://management.azure.com/subscriptions/{{subscriptionId}}/resourceGroups/{{resourceGroupName}}/resources?api-version=2021-04-01</set-url>\r\n      <set-method>GET</set-method>\r\n      <authentication-managed-identity resource="https://management.azure.com" />\r\n    </send-request>\r\n    <set-variable name="resourceshort" value="@(&quot;[&quot; + String.Join(&quot;,&quot;,(((IResponse)context.Variables[&quot;resourcedata&quot;]).Body.As&lt;JObject&gt;())[&quot;value&quot;].Select(r=&gt;String.Concat(&quot;\\&quot;&quot;,(string)r[&quot;name&quot;],&quot;\\&quot;&quot;)).ToArray()) + &quot;]&quot;)" />\r\n    <return-response>\r\n      <set-status code="200" reason="Successful" />\r\n      <set-body>@(((string)context.Variables["resourceshort"]))</set-body>\r\n    </return-response>\r\n  </inbound>\r\n  <backend>\r\n    <base />\r\n  </backend>\r\n  <outbound>\r\n    <base />\r\n  </outbound>\r\n  <on-error>\r\n    <base />\r\n  </on-error>\r\n</policies>'
    format: 'xml'
  }
  dependsOn: [

    service_mfapim_name_managedidentity
    service_mfapim_name_resource
  ]
}

resource service_mfapim_name_managedidentity_sendservicebusmessage_policy 'Microsoft.ApiManagement/service/apis/operations/policies@2021-12-01-preview' = {
  parent: service_mfapim_name_managedidentity_sendservicebusmessage
  name: 'policy'
  properties: {
    value: '<!--\r\n    IMPORTANT:\r\n    - Policy elements can appear only within the <inbound>, <outbound>, <backend> section elements.\r\n    - To apply a policy to the incoming request (before it is forwarded to the backend service), place a corresponding policy element within the <inbound> section element.\r\n    - To apply a policy to the outgoing response (before it is sent back to the caller), place a corresponding policy element within the <outbound> section element.\r\n    - To add a policy, place the cursor at the desired insertion point and select a policy from the sidebar.\r\n    - To remove a policy, delete the corresponding policy statement from the policy document.\r\n    - Position the <base> element within a section element to inherit all policies from the corresponding section element in the enclosing scope.\r\n    - Remove the <base> element to prevent inheriting policies from the corresponding section element in the enclosing scope.\r\n    - Policies are applied in the order of their appearance, from the top down.\r\n    - Comments within policy elements are not supported and may disappear. Place your comments between policy elements or at a higher level scope.\r\n-->\r\n<policies>\r\n  <inbound>\r\n    <base />\r\n    <send-request mode="new" response-variable-name="keyvaultdata" timeout="10" ignore-error="true">\r\n      <set-url>https://{{servicebusnamespace}}.servicebus.windows.net/{{queuePath}}/messages</set-url>\r\n      <set-method>POST</set-method>\r\n      <set-header name="Content-Type" exists-action="override">\r\n        <value>application/atom+xml;type=entry;charset=utf-8</value>\r\n      </set-header>\r\n      <set-body template="liquid">\r\n\t\t\t\t{\r\n                    "name" : "test"\r\n                }\r\n\t\t\t</set-body>\r\n      <authentication-managed-identity resource="https://servicebus.azure.net" />\r\n    </send-request>\r\n    <return-response>\r\n      <set-status code="200" reason="Successful" />\r\n    </return-response>\r\n  </inbound>\r\n  <backend>\r\n    <base />\r\n  </backend>\r\n  <outbound>\r\n    <base />\r\n  </outbound>\r\n  <on-error>\r\n    <base />\r\n  </on-error>\r\n</policies>'
    format: 'xml'
  }
  dependsOn: [

    service_mfapim_name_managedidentity
    service_mfapim_name_resource
  ]
}

resource service_mfapim_name_managedidentity_writeblobtostorage_policy 'Microsoft.ApiManagement/service/apis/operations/policies@2021-12-01-preview' = {
  parent: service_mfapim_name_managedidentity_writeblobtostorage
  name: 'policy'
  properties: {
    value: '<!--\r\n    IMPORTANT:\r\n    - Policy elements can appear only within the <inbound>, <outbound>, <backend> section elements.\r\n    - To apply a policy to the incoming request (before it is forwarded to the backend service), place a corresponding policy element within the <inbound> section element.\r\n    - To apply a policy to the outgoing response (before it is sent back to the caller), place a corresponding policy element within the <outbound> section element.\r\n    - To add a policy, place the cursor at the desired insertion point and select a policy from the sidebar.\r\n    - To remove a policy, delete the corresponding policy statement from the policy document.\r\n    - Position the <base> element within a section element to inherit all policies from the corresponding section element in the enclosing scope.\r\n    - Remove the <base> element to prevent inheriting policies from the corresponding section element in the enclosing scope.\r\n    - Policies are applied in the order of their appearance, from the top down.\r\n    - Comments within policy elements are not supported and may disappear. Place your comments between policy elements or at a higher level scope.\r\n-->\r\n<policies>\r\n  <inbound>\r\n    <base />\r\n    <set-variable name="blobdata" value="This is written to blob" />\r\n    <send-request mode="new" response-variable-name="storagewritedata" timeout="10" ignore-error="false">\r\n      <set-url>https://{{blobstorageaccount}}.blob.core.windows.net/{{blobcontainer}}/myblob</set-url>\r\n      <set-method>PUT</set-method>\r\n      <set-header name="x-ms-date" exists-action="override">\r\n        <value>@(DateTime.UtcNow.ToString("r"))</value>\r\n      </set-header>\r\n      <set-header name="x-ms-version" exists-action="override">\r\n        <value>2020-10-02</value>\r\n      </set-header>\r\n      <set-header name="x-ms-blob-type" exists-action="override">\r\n        <value>BlockBlob</value>\r\n      </set-header>\r\n      <set-body>@((string)context.Variables["blobdata"])</set-body>\r\n      <authentication-managed-identity resource="https://storage.azure.com/" />\r\n    </send-request>\r\n    <return-response>\r\n      <set-status code="200" reason="Successful" />\r\n    </return-response>\r\n  </inbound>\r\n  <backend>\r\n    <base />\r\n  </backend>\r\n  <outbound>\r\n    <base />\r\n  </outbound>\r\n  <on-error>\r\n    <base />\r\n  </on-error>\r\n</policies>'
    format: 'xml'
  }
  dependsOn: [

    service_mfapim_name_managedidentity
    service_mfapim_name_resource
  ]
}

resource service_mfapim_name_mfsimplefunction_get_simplefunctionget_policy 'Microsoft.ApiManagement/service/apis/operations/policies@2021-12-01-preview' = {
  parent: service_mfapim_name_mfsimplefunction_get_simplefunctionget
  name: 'policy'
  properties: {
    value: '<policies>\r\n  <inbound>\r\n    <base />\r\n    <set-backend-service id="apim-generated-policy" backend-id="mfsimplefunction" />\r\n  </inbound>\r\n  <backend>\r\n    <base />\r\n  </backend>\r\n  <outbound>\r\n    <base />\r\n  </outbound>\r\n  <on-error>\r\n    <base />\r\n  </on-error>\r\n</policies>'
    format: 'xml'
  }
  dependsOn: [

    Microsoft_ApiManagement_service_apis_service_mfapim_name_mfsimplefunction
    service_mfapim_name_resource
  ]
}

resource service_mfapim_name_mfsimplefunction_post_simplefunctionget_policy 'Microsoft.ApiManagement/service/apis/operations/policies@2021-12-01-preview' = {
  parent: service_mfapim_name_mfsimplefunction_post_simplefunctionget
  name: 'policy'
  properties: {
    value: '<policies>\r\n  <inbound>\r\n    <base />\r\n    <set-backend-service id="apim-generated-policy" backend-id="mfsimplefunction" />\r\n  </inbound>\r\n  <backend>\r\n    <base />\r\n  </backend>\r\n  <outbound>\r\n    <base />\r\n  </outbound>\r\n  <on-error>\r\n    <base />\r\n  </on-error>\r\n</policies>'
    format: 'xml'
  }
  dependsOn: [

    Microsoft_ApiManagement_service_apis_service_mfapim_name_mfsimplefunction
    service_mfapim_name_resource
  ]
}

resource service_mfapim_name_mfsimplefunction_v2_get_simplefunctionget_policy 'Microsoft.ApiManagement/service/apis/operations/policies@2021-12-01-preview' = {
  parent: service_mfapim_name_mfsimplefunction_v2_get_simplefunctionget
  name: 'policy'
  properties: {
    value: '<policies>\r\n  <inbound>\r\n    <base />\r\n    <set-backend-service id="apim-generated-policy" backend-id="mfsimplefunction" />\r\n  </inbound>\r\n  <backend>\r\n    <base />\r\n  </backend>\r\n  <outbound>\r\n    <base />\r\n  </outbound>\r\n  <on-error>\r\n    <base />\r\n  </on-error>\r\n</policies>'
    format: 'xml'
  }
  dependsOn: [

    service_mfapim_name_mfsimplefunction_v2
    service_mfapim_name_resource
  ]
}

resource service_mfapim_name_mfsimplefunction_v2_post_simplefunctionget_policy 'Microsoft.ApiManagement/service/apis/operations/policies@2021-12-01-preview' = {
  parent: service_mfapim_name_mfsimplefunction_v2_post_simplefunctionget
  name: 'policy'
  properties: {
    value: '<policies>\r\n  <inbound>\r\n    <base />\r\n    <set-backend-service id="apim-generated-policy" backend-id="mfsimplefunction" />\r\n  </inbound>\r\n  <backend>\r\n    <base />\r\n  </backend>\r\n  <outbound>\r\n    <base />\r\n  </outbound>\r\n  <on-error>\r\n    <base />\r\n  </on-error>\r\n</policies>'
    format: 'xml'
  }
  dependsOn: [

    service_mfapim_name_mfsimplefunction_v2
    service_mfapim_name_resource
  ]
}

resource service_mfapim_name_ratings_admin_post_createrating_policy 'Microsoft.ApiManagement/service/apis/operations/policies@2021-12-01-preview' = {
  parent: service_mfapim_name_ratings_admin_post_createrating
  name: 'policy'
  properties: {
    value: '<policies>\r\n  <inbound>\r\n    <base />\r\n    <set-backend-service id="apim-generated-policy" backend-id="mfohch1" />\r\n  </inbound>\r\n  <backend>\r\n    <base />\r\n  </backend>\r\n  <outbound>\r\n    <base />\r\n  </outbound>\r\n  <on-error>\r\n    <base />\r\n  </on-error>\r\n</policies>'
    format: 'xml'
  }
  dependsOn: [

    service_mfapim_name_ratings_admin
    service_mfapim_name_resource
  ]
}

resource service_mfapim_name_ratings_get_get_getrating_policy 'Microsoft.ApiManagement/service/apis/operations/policies@2021-12-01-preview' = {
  parent: service_mfapim_name_ratings_get_get_getrating
  name: 'policy'
  properties: {
    value: '<policies>\r\n  <inbound>\r\n    <base />\r\n    <set-backend-service id="apim-generated-policy" backend-id="mfohch1" />\r\n  </inbound>\r\n  <backend>\r\n    <base />\r\n  </backend>\r\n  <outbound>\r\n    <base />\r\n  </outbound>\r\n  <on-error>\r\n    <base />\r\n  </on-error>\r\n</policies>'
    format: 'xml'
  }
  dependsOn: [

    service_mfapim_name_ratings_get
    service_mfapim_name_resource
  ]
}

resource service_mfapim_name_ratings_get_get_getratings_policy 'Microsoft.ApiManagement/service/apis/operations/policies@2021-12-01-preview' = {
  parent: service_mfapim_name_ratings_get_get_getratings
  name: 'policy'
  properties: {
    value: '<policies>\r\n  <inbound>\r\n    <base />\r\n    <set-backend-service id="apim-generated-policy" backend-id="mfohch1" />\r\n  </inbound>\r\n  <backend>\r\n    <base />\r\n  </backend>\r\n  <outbound>\r\n    <base />\r\n  </outbound>\r\n  <on-error>\r\n    <base />\r\n  </on-error>\r\n</policies>'
    format: 'xml'
  }
  dependsOn: [

    service_mfapim_name_ratings_get
    service_mfapim_name_resource
  ]
}

resource service_mfapim_name_securepassthru_post_securefunction_policy 'Microsoft.ApiManagement/service/apis/operations/policies@2021-12-01-preview' = {
  parent: service_mfapim_name_securepassthru_post_securefunction
  name: 'policy'
  properties: {
    value: '<policies>\r\n  <inbound>\r\n    <base />\r\n    <set-backend-service id="apim-generated-policy" backend-id="mfsimplefunction" />\r\n    <validate-jwt header-name="Authorization" failed-validation-httpcode="401" failed-validation-error-message="Not alowed">\r\n      <openid-config url="https://login.microsoftonline.com/49cb1295-d9b0-4d76-9ac7-adfcb5621f1c/.well-known/openid-configuration" />\r\n      <audiences>\r\n        <audience>api://2f95ecc9-a101-409a-a27f-acc7289d0242</audience>\r\n      </audiences>\r\n    </validate-jwt>\r\n  </inbound>\r\n  <backend>\r\n    <base />\r\n  </backend>\r\n  <outbound>\r\n    <base />\r\n  </outbound>\r\n  <on-error>\r\n    <base />\r\n  </on-error>\r\n</policies>'
    format: 'xml'
  }
  dependsOn: [

    service_mfapim_name_securepassthru
    service_mfapim_name_resource
  ]
}

resource service_mfapim_name_test_619e21224c93bdbdba04e826_policy 'Microsoft.ApiManagement/service/apis/operations/policies@2021-12-01-preview' = {
  parent: service_mfapim_name_test_619e21224c93bdbdba04e826
  name: 'policy'
  properties: {
    value: '<!--\r\n    IMPORTANT:\r\n    - Policy elements can appear only within the <inbound>, <outbound>, <backend> section elements.\r\n    - To apply a policy to the incoming request (before it is forwarded to the backend service), place a corresponding policy element within the <inbound> section element.\r\n    - To apply a policy to the outgoing response (before it is sent back to the caller), place a corresponding policy element within the <outbound> section element.\r\n    - To add a policy, place the cursor at the desired insertion point and select a policy from the sidebar.\r\n    - To remove a policy, delete the corresponding policy statement from the policy document.\r\n    - Position the <base> element within a section element to inherit all policies from the corresponding section element in the enclosing scope.\r\n    - Remove the <base> element to prevent inheriting policies from the corresponding section element in the enclosing scope.\r\n    - Policies are applied in the order of their appearance, from the top down.\r\n    - Comments within policy elements are not supported and may disappear. Place your comments between policy elements or at a higher level scope.\r\n-->\r\n<policies>\r\n  <inbound>\r\n    <base />\r\n    <return-response>\r\n      <set-status code="500" reason="Fail" />\r\n      <set-header name="Content-Type" exists-action="override">\r\n        <value>text/xml</value>\r\n      </set-header>\r\n      <set-body template="liquid">\r\n        <soap12:Envelope xmlns:soap12="http://www.w3.org/2003/05/soap-envelope">\r\n          <soap12:Body>\r\n            <soap12:Fault>\r\n              <soap12:Code>\r\n                <soap12:Value>soap12:Receiver</soap12:Value>\r\n              </soap12:Code>\r\n              <soap12:Reason>\r\n                <soap12:Text>com.guidewire.pl.system.exception.DBAlreadyExecutedException: Transaction power:4 already executed</soap12:Text>\r\n              </soap12:Reason>\r\n            </soap12:Fault>\r\n          </soap12:Body>\r\n        </soap12:Envelope>\r\n      </set-body>\r\n    </return-response>\r\n  </inbound>\r\n  <backend>\r\n    <base />\r\n  </backend>\r\n  <outbound>\r\n    <base />\r\n  </outbound>\r\n  <on-error>\r\n    <base />\r\n  </on-error>\r\n</policies>'
    format: 'xml'
  }
  dependsOn: [

    service_mfapim_name_test
    service_mfapim_name_resource
  ]
}

resource service_mfapim_name_test_caching_policy 'Microsoft.ApiManagement/service/apis/operations/policies@2021-12-01-preview' = {
  parent: service_mfapim_name_test_caching
  name: 'policy'
  properties: {
    value: '<!--\r\n    IMPORTANT:\r\n    - Policy elements can appear only within the <inbound>, <outbound>, <backend> section elements.\r\n    - To apply a policy to the incoming request (before it is forwarded to the backend service), place a corresponding policy element within the <inbound> section element.\r\n    - To apply a policy to the outgoing response (before it is sent back to the caller), place a corresponding policy element within the <outbound> section element.\r\n    - To add a policy, place the cursor at the desired insertion point and select a policy from the sidebar.\r\n    - To remove a policy, delete the corresponding policy statement from the policy document.\r\n    - Position the <base> element within a section element to inherit all policies from the corresponding section element in the enclosing scope.\r\n    - Remove the <base> element to prevent inheriting policies from the corresponding section element in the enclosing scope.\r\n    - Policies are applied in the order of their appearance, from the top down.\r\n    - Comments within policy elements are not supported and may disappear. Place your comments between policy elements or at a higher level scope.\r\n-->\r\n<policies>\r\n  <inbound>\r\n    <base />\r\n    <cache-lookup-value key="typeList" default-value="0" variable-name="typeListCache" />\r\n    <choose>\r\n      <when condition="@(context.Variables.GetValueOrDefault&lt;String&gt;(&quot;typeListCache&quot;) == &quot;0&quot;)">\r\n        <send-request mode="new" response-variable-name="typeListResponse" timeout="60" ignore-error="true">\r\n          <set-url>https://mfapim.azure-api.net/test/mockentry</set-url>\r\n          <set-method>GET</set-method>\r\n          <set-header name="Content-Type" exists-action="override">\r\n            <value>text/xml</value>\r\n          </set-header>\r\n          <set-header name="Ocp-Apim-Subscription-Key" exists-action="override">\r\n            <value>79c09dfdd5194fc7961c524eb68f3565</value>\r\n          </set-header>\r\n        </send-request>\r\n        <choose>\r\n          <when condition="@(((IResponse)context.Variables[&quot;typeListResponse&quot;]).StatusCode &lt; 400)">\r\n            <trace source="me">Updating variable</trace>\r\n            <cache-store-value key="typeList" value="@((string)((IResponse)context.Variables[&quot;typeListResponse&quot;]).Body.As&lt;string&gt;())" duration="100000" />\r\n            <cache-lookup-value key="typeList" variable-name="typeListCache" />\r\n          </when>\r\n        </choose>\r\n      </when>\r\n    </choose>\r\n    <set-variable name="prefixTest" value="@{&#xA;            return context.Request.Url.Query.GetValueOrDefault(&quot;prefix&quot;);&#xA;         }" />\r\n    <set-variable name="holderTitle" value="@{&#xA;                    var prefix = context.Request.Url.Query.GetValueOrDefault(&quot;prefix&quot;);&#xA;                    &#xA;                    var typelistDoc = XDocument.Parse((string)(context.Variables[&quot;typeListCache&quot;]));&#xA;                    &#xA;                    var name = typelistDoc.Descendants().Where(r =&gt; r.Name.LocalName == &quot;Entry&quot;).Where(e =&gt; e.Descendants().Where(r =&gt; r.Name.LocalName == &quot;Code&quot;).First().Value == prefix).FirstOrDefault()?.Descendants().Where(r=&gt;r.Name.LocalName == &quot;Name&quot;).FirstOrDefault()?.Value;&#xA;&#xA;                    return name == null ? prefix : name;&#xA;                }" />\r\n    <return-response>\r\n      <set-status code="200" reason="OK" />\r\n      <set-body>All good</set-body>\r\n    </return-response>\r\n  </inbound>\r\n  <backend>\r\n    <base />\r\n  </backend>\r\n  <outbound>\r\n    <base />\r\n  </outbound>\r\n  <on-error>\r\n    <base />\r\n  </on-error>\r\n</policies>'
    format: 'xml'
  }
  dependsOn: [

    service_mfapim_name_test
    service_mfapim_name_resource
  ]
}

resource service_mfapim_name_test_combinexml_policy 'Microsoft.ApiManagement/service/apis/operations/policies@2021-12-01-preview' = {
  parent: service_mfapim_name_test_combinexml
  name: 'policy'
  properties: {
    value: '<!--\r\n    IMPORTANT:\r\n    - Policy elements can appear only within the <inbound>, <outbound>, <backend> section elements.\r\n    - To apply a policy to the incoming request (before it is forwarded to the backend service), place a corresponding policy element within the <inbound> section element.\r\n    - To apply a policy to the outgoing response (before it is sent back to the caller), place a corresponding policy element within the <outbound> section element.\r\n    - To add a policy, place the cursor at the desired insertion point and select a policy from the sidebar.\r\n    - To remove a policy, delete the corresponding policy statement from the policy document.\r\n    - Position the <base> element within a section element to inherit all policies from the corresponding section element in the enclosing scope.\r\n    - Remove the <base> element to prevent inheriting policies from the corresponding section element in the enclosing scope.\r\n    - Policies are applied in the order of their appearance, from the top down.\r\n    - Comments within policy elements are not supported and may disappear. Place your comments between policy elements or at a higher level scope.\r\n-->\r\n<policies>\r\n  <inbound>\r\n    <base />\r\n    <set-backend-service backend-id="my-backend" />\r\n    <rewrite-uri template="/" />\r\n    <!-- Make a request to an additional api that will return the following xml response \r\n        \r\n        <message1>\r\n            <conditionValue>true</conditionValue>\r\n            <value1>MESSAGE1_TEST1</value1>\r\n            <value2>MESSAGE1_TEST2</value2>\r\n            <value3>MESSAGE1_TEST3</value3>\r\n        </message1>\r\n        \r\n        -->\r\n    <send-request mode="new" response-variable-name="sendRequestResponse">\r\n      <set-url>{{my-send-request}}</set-url>\r\n      <set-method>GET</set-method>\r\n      <set-header name="Content-Type" exists-action="override">\r\n        <value>text/xml</value>\r\n      </set-header>\r\n    </send-request>\r\n    <!-- extract specific values from the sendRequestResponse variable into a Json Object -->\r\n    <set-variable name="jsonResponse" value="@{&#xA;&#xA;            // Some commment&#xA;            var doc = XDocument.Parse(((IResponse)context.Variables[&quot;sendRequestResponse&quot;]).Body.As&lt;string&gt;());&#xA;            var obj = new JObject();&#xA;            obj[&quot;conditionValue&quot;] = doc.Descendants().Where(r=&gt;r.Name.LocalName == &quot;conditionValue&quot;).First().Value;&#xA;            obj[&quot;value1&quot;] = doc.Descendants().Where(r=&gt;r.Name.LocalName == &quot;value1&quot;).First().Value;&#xA;            obj[&quot;value3&quot;] = doc.Descendants().Where(r=&gt;r.Name.LocalName == &quot;value3&quot;).First().Value;&#xA;            return obj;&#xA;            }" />\r\n    <!-- The jsonResponse variable now contains an object that looks like this...\r\n\r\n                {\r\n                    "conditionValue": "true",\r\n                    "value1": "MESSAGE1_TEST1",\r\n                    "value3": "MESSAGE1_TEST3"\r\n                } \r\n\r\n            Individual properties can then be referenced in expressions like this..  \r\n        -->\r\n    <choose>\r\n      <when condition="@((bool)((JObject)context.Variables[&quot;jsonResponse&quot;])[&quot;conditionValue&quot;])">\r\n        <!-- Do something when condition is met -->\r\n        <trace source="My API" severity="verbose">\r\n          <message>Condition was met</message>\r\n        </trace>\r\n      </when>\r\n    </choose>\r\n    <!-- Or in liquid transformations like this.. -->\r\n    <set-body template="liquid">\r\n            {% assign vars = context.Variables["jsonResponse"] %}\r\n\r\n            <message3><data val1="{{ vars[\'value1\'] }}" val3="{{ vars[\'value3\'] }}" /></message3></set-body>\r\n  </inbound>\r\n  <backend>\r\n    <base />\r\n  </backend>\r\n  <outbound>\r\n    <base />\r\n  </outbound>\r\n  <on-error>\r\n    <base />\r\n  </on-error>\r\n</policies>'
    format: 'xml'
  }
  dependsOn: [

    service_mfapim_name_test
    service_mfapim_name_resource
  ]
}

resource service_mfapim_name_test_dateformat_policy 'Microsoft.ApiManagement/service/apis/operations/policies@2021-12-01-preview' = {
  parent: service_mfapim_name_test_dateformat
  name: 'policy'
  properties: {
    value: '<!--\r\n    IMPORTANT:\r\n    - Policy elements can appear only within the <inbound>, <outbound>, <backend> section elements.\r\n    - To apply a policy to the incoming request (before it is forwarded to the backend service), place a corresponding policy element within the <inbound> section element.\r\n    - To apply a policy to the outgoing response (before it is sent back to the caller), place a corresponding policy element within the <outbound> section element.\r\n    - To add a policy, place the cursor at the desired insertion point and select a policy from the sidebar.\r\n    - To remove a policy, delete the corresponding policy statement from the policy document.\r\n    - Position the <base> element within a section element to inherit all policies from the corresponding section element in the enclosing scope.\r\n    - Remove the <base> element to prevent inheriting policies from the corresponding section element in the enclosing scope.\r\n    - Policies are applied in the order of their appearance, from the top down.\r\n    - Comments within policy elements are not supported and may disappear. Place your comments between policy elements or at a higher level scope.\r\n-->\r\n<policies>\r\n  <inbound>\r\n    <set-body template="liquid">\r\n      <test>\r\n        <criteria AsOfDate="{{body.searchForPolicies.criteria.asOfDate[0] | Date: \'yyyy-MM-ddTHH:mm:ss\'}}" PolicyNumber="{{body.searchForPolicies.criteria.policyNumber[0]}}" LicensePlate_Ext="{{body.searchForPolicies.criteria.licensePlate_Ext[0]}}" IncludeArchived="false" />\r\n      </test>\r\n    </set-body>\r\n    <return-response response-variable-name="context">\r\n      <set-status code="200" reason="OK" />\r\n      <set-header name="Content-Type" exists-action="override">\r\n        <value>text/xml</value>\r\n      </set-header>\r\n      <set-body template="liquid">\r\n        <test>\r\n          <criteria AsOfDate="{{body.searchForPolicies.criteria.asOfDate[0] | Date: \'yyyy-MM-ddTHH:mm:ss\'}}" PolicyNumber="{{body.searchForPolicies.criteria.policyNumber[0]}}" LicensePlate_Ext="{{body.searchForPolicies.criteria.licensePlate_Ext[0]}}" IncludeArchived="false" />\r\n        </test>\r\n      </set-body>\r\n    </return-response>\r\n    <base />\r\n  </inbound>\r\n  <backend>\r\n    <base />\r\n  </backend>\r\n  <outbound>\r\n    <base />\r\n  </outbound>\r\n  <on-error>\r\n    <base />\r\n  </on-error>\r\n</policies>'
    format: 'xml'
  }
  dependsOn: [

    service_mfapim_name_test
    service_mfapim_name_resource
  ]
}

resource service_mfapim_name_test_datetimeformat_policy 'Microsoft.ApiManagement/service/apis/operations/policies@2021-12-01-preview' = {
  parent: service_mfapim_name_test_datetimeformat
  name: 'policy'
  properties: {
    value: '<!--\r\n    IMPORTANT:\r\n    - Policy elements can appear only within the <inbound>, <outbound>, <backend> section elements.\r\n    - To apply a policy to the incoming request (before it is forwarded to the backend service), place a corresponding policy element within the <inbound> section element.\r\n    - To apply a policy to the outgoing response (before it is sent back to the caller), place a corresponding policy element within the <outbound> section element.\r\n    - To add a policy, place the cursor at the desired insertion point and select a policy from the sidebar.\r\n    - To remove a policy, delete the corresponding policy statement from the policy document.\r\n    - Position the <base> element within a section element to inherit all policies from the corresponding section element in the enclosing scope.\r\n    - Remove the <base> element to prevent inheriting policies from the corresponding section element in the enclosing scope.\r\n    - Policies are applied in the order of their appearance, from the top down.\r\n    - Comments within policy elements are not supported and may disappear. Place your comments between policy elements or at a higher level scope.\r\n-->\r\n<policies>\r\n  <inbound>\r\n    <base />\r\n    <set-backend-service base-url="https://mfapim.azure-api.net/test" />\r\n    <set-method>POST</set-method>\r\n    <rewrite-uri template="/mockxml" copy-unmatched-params="true" />\r\n  </inbound>\r\n  <backend>\r\n    <base />\r\n  </backend>\r\n  <outbound>\r\n    <base />\r\n    <set-variable name="retrievePolicyResponseBodyXml" value="@(context.Response.Body.As&lt;string&gt;())" />\r\n    <set-variable name="dateTime" value="@{&#xA;            var xdoc = XDocument.Parse((string)(context.Variables[&quot;retrievePolicyResponseBodyXml&quot;]));&#xA;            var sDate = xdoc.Descendants().Where(p =&gt; p.Name.LocalName == &quot;CCPolicy&quot;).Attributes(&quot;EffectiveDate&quot;).FirstOrDefault().Value;&#xA;            return DateTime.Parse(sDate).ToString(&quot;yyyy-MM-ddTHH:mm:ss K&quot;);&#xA;        }" />\r\n  </outbound>\r\n  <on-error>\r\n    <base />\r\n  </on-error>\r\n</policies>'
    format: 'xml'
  }
  dependsOn: [

    service_mfapim_name_test
    service_mfapim_name_resource
  ]
}

resource service_mfapim_name_test_echojson_policy 'Microsoft.ApiManagement/service/apis/operations/policies@2021-12-01-preview' = {
  parent: service_mfapim_name_test_echojson
  name: 'policy'
  properties: {
    value: '<!--\r\n    IMPORTANT:\r\n    - Policy elements can appear only within the <inbound>, <outbound>, <backend> section elements.\r\n    - To apply a policy to the incoming request (before it is forwarded to the backend service), place a corresponding policy element within the <inbound> section element.\r\n    - To apply a policy to the outgoing response (before it is sent back to the caller), place a corresponding policy element within the <outbound> section element.\r\n    - To add a policy, place the cursor at the desired insertion point and select a policy from the sidebar.\r\n    - To remove a policy, delete the corresponding policy statement from the policy document.\r\n    - Position the <base> element within a section element to inherit all policies from the corresponding section element in the enclosing scope.\r\n    - Remove the <base> element to prevent inheriting policies from the corresponding section element in the enclosing scope.\r\n    - Policies are applied in the order of their appearance, from the top down.\r\n    - Comments within policy elements are not supported and may disappear. Place your comments between policy elements or at a higher level scope.\r\n-->\r\n<policies>\r\n  <inbound>\r\n    <base />\r\n    <return-response>\r\n      <set-status code="200" reason="ok" />\r\n      <set-body>\r\n                @(context.Request.Body.As&lt;String&gt;())\r\n            </set-body>\r\n    </return-response>\r\n  </inbound>\r\n  <backend>\r\n    <base />\r\n  </backend>\r\n  <outbound>\r\n    <base />\r\n  </outbound>\r\n  <on-error>\r\n    <base />\r\n  </on-error>\r\n</policies>'
    format: 'xml'
  }
  dependsOn: [

    service_mfapim_name_test
    service_mfapim_name_resource
  ]
}

resource service_mfapim_name_test_eventhublogger_policy 'Microsoft.ApiManagement/service/apis/operations/policies@2021-12-01-preview' = {
  parent: service_mfapim_name_test_eventhublogger
  name: 'policy'
  properties: {
    value: '<!--\r\n    IMPORTANT:\r\n    - Policy elements can appear only within the <inbound>, <outbound>, <backend> section elements.\r\n    - To apply a policy to the incoming request (before it is forwarded to the backend service), place a corresponding policy element within the <inbound> section element.\r\n    - To apply a policy to the outgoing response (before it is sent back to the caller), place a corresponding policy element within the <outbound> section element.\r\n    - To add a policy, place the cursor at the desired insertion point and select a policy from the sidebar.\r\n    - To remove a policy, delete the corresponding policy statement from the policy document.\r\n    - Position the <base> element within a section element to inherit all policies from the corresponding section element in the enclosing scope.\r\n    - Remove the <base> element to prevent inheriting policies from the corresponding section element in the enclosing scope.\r\n    - Policies are applied in the order of their appearance, from the top down.\r\n    - Comments within policy elements are not supported and may disappear. Place your comments between policy elements or at a higher level scope.\r\n-->\r\n<policies>\r\n  <inbound>\r\n    <base />\r\n    <log-to-eventhub logger-id="apimeventhublogger">\r\n            @{\r\n                return new JObject(\r\n                    new JProperty("EventTime", DateTime.UtcNow.ToString()),\r\n                    new JProperty("ServiceName", context.Deployment.ServiceName),\r\n                    new JProperty("RequestId", context.RequestId),\r\n                    new JProperty("RequestIp", context.Request.IpAddress),\r\n                    new JProperty("OperationName", context.Operation.Name)\r\n                ).ToString();\r\n            }\r\n        </log-to-eventhub>\r\n    <return-response>\r\n      <set-status code="200" reason="OK" />\r\n      <set-body>OK</set-body>\r\n    </return-response>\r\n  </inbound>\r\n  <backend>\r\n    <base />\r\n  </backend>\r\n  <outbound>\r\n    <base />\r\n  </outbound>\r\n  <on-error>\r\n    <base />\r\n  </on-error>\r\n</policies>'
    format: 'xml'
  }
  dependsOn: [

    service_mfapim_name_test
    service_mfapim_name_resource
  ]
}

resource service_mfapim_name_test_extractheader_policy 'Microsoft.ApiManagement/service/apis/operations/policies@2021-12-01-preview' = {
  parent: service_mfapim_name_test_extractheader
  name: 'policy'
  properties: {
    value: '<!--\r\n    IMPORTANT:\r\n    - Policy elements can appear only within the <inbound>, <outbound>, <backend> section elements.\r\n    - To apply a policy to the incoming request (before it is forwarded to the backend service), place a corresponding policy element within the <inbound> section element.\r\n    - To apply a policy to the outgoing response (before it is sent back to the caller), place a corresponding policy element within the <outbound> section element.\r\n    - To add a policy, place the cursor at the desired insertion point and select a policy from the sidebar.\r\n    - To remove a policy, delete the corresponding policy statement from the policy document.\r\n    - Position the <base> element within a section element to inherit all policies from the corresponding section element in the enclosing scope.\r\n    - Remove the <base> element to prevent inheriting policies from the corresponding section element in the enclosing scope.\r\n    - Policies are applied in the order of their appearance, from the top down.\r\n    - Comments within policy elements are not supported and may disappear. Place your comments between policy elements or at a higher level scope.\r\n-->\r\n<policies>\r\n  <inbound>\r\n    <base />\r\n    <set-backend-service base-url="https://mfapim.azure-api.net/test/echojson" />\r\n    <rewrite-uri template="/" copy-unmatched-params="true" />\r\n  </inbound>\r\n  <backend>\r\n    <base />\r\n  </backend>\r\n  <outbound>\r\n    <base />\r\n    <set-variable name="extractedResponseJson" value="@(context.Response.Body.As&lt;JObject&gt;(preserveContent: true))" />\r\n    <set-variable name="extractedResponseValue" value="@((string)((JObject)context.Variables[&quot;extractedResponseJson&quot;])[&quot;id&quot;])" />\r\n    <set-header name="id" exists-action="override">\r\n      <value>@((string)context.Variables["extractedResponseValue"])</value>\r\n    </set-header>\r\n  </outbound>\r\n  <on-error>\r\n    <base />\r\n  </on-error>\r\n</policies>'
    format: 'xml'
  }
  dependsOn: [

    service_mfapim_name_test
    service_mfapim_name_resource
  ]
}

resource service_mfapim_name_test_handlefailbody_policy 'Microsoft.ApiManagement/service/apis/operations/policies@2021-12-01-preview' = {
  parent: service_mfapim_name_test_handlefailbody
  name: 'policy'
  properties: {
    value: '<!--\r\n    IMPORTANT:\r\n    - Policy elements can appear only within the <inbound>, <outbound>, <backend> section elements.\r\n    - To apply a policy to the incoming request (before it is forwarded to the backend service), place a corresponding policy element within the <inbound> section element.\r\n    - To apply a policy to the outgoing response (before it is sent back to the caller), place a corresponding policy element within the <outbound> section element.\r\n    - To add a policy, place the cursor at the desired insertion point and select a policy from the sidebar.\r\n    - To remove a policy, delete the corresponding policy statement from the policy document.\r\n    - Position the <base> element within a section element to inherit all policies from the corresponding section element in the enclosing scope.\r\n    - Remove the <base> element to prevent inheriting policies from the corresponding section element in the enclosing scope.\r\n    - Policies are applied in the order of their appearance, from the top down.\r\n    - Comments within policy elements are not supported and may disappear. Place your comments between policy elements or at a higher level scope.\r\n-->\r\n<policies>\r\n  <inbound>\r\n    <base />\r\n    <set-backend-service base-url="https://mfapim.azure-api.net/test" />\r\n    <set-method>POST</set-method>\r\n    <rewrite-uri template="/mockxmlfail" copy-unmatched-params="true" />\r\n  </inbound>\r\n  <backend>\r\n    <base />\r\n  </backend>\r\n  <outbound>\r\n    <base />\r\n    <set-variable name="createNoteResponseXml" value="@(context.Response.Body.As&lt;string&gt;())" />\r\n    <choose>\r\n      <when condition="@(context.Response.StatusCode == 500)">\r\n        <set-variable name="errorText" value="@{&#xA;                var xdoc = XDocument.Parse((string)(context.Variables[&quot;createNoteResponseXml&quot;]));&#xA;                var attr = xdoc.Descendants().Where(p =&gt; p.Name.LocalName == &quot;Text&quot;).FirstOrDefault()?.Value;&#xA;                return attr;&#xA;                }" />\r\n        <choose>\r\n          <when condition="@(((string)context.Variables[&quot;errorText&quot;]).Contains(&quot;DBAlreadyExecutedException&quot;))">\r\n            <set-status code="200" />\r\n            <set-body template="liquid">{\r\n                            "error": {\r\n                                    "code": "404",\r\n                                    "message": "Claim with given publicId was not found."\r\n                                }\r\n                        }</set-body>\r\n          </when>\r\n        </choose>\r\n      </when>\r\n    </choose>\r\n  </outbound>\r\n  <on-error>\r\n    <base />\r\n  </on-error>\r\n</policies>'
    format: 'xml'
  }
  dependsOn: [

    service_mfapim_name_test
    service_mfapim_name_resource
  ]
}

resource service_mfapim_name_test_liquidtransform_policy 'Microsoft.ApiManagement/service/apis/operations/policies@2021-12-01-preview' = {
  parent: service_mfapim_name_test_liquidtransform
  name: 'policy'
  properties: {
    value: '<!--\r\n    IMPORTANT:\r\n    - Policy elements can appear only within the <inbound>, <outbound>, <backend> section elements.\r\n    - To apply a policy to the incoming request (before it is forwarded to the backend service), place a corresponding policy element within the <inbound> section element.\r\n    - To apply a policy to the outgoing response (before it is sent back to the caller), place a corresponding policy element within the <outbound> section element.\r\n    - To add a policy, place the cursor at the desired insertion point and select a policy from the sidebar.\r\n    - To remove a policy, delete the corresponding policy statement from the policy document.\r\n    - Position the <base> element within a section element to inherit all policies from the corresponding section element in the enclosing scope.\r\n    - Remove the <base> element to prevent inheriting policies from the corresponding section element in the enclosing scope.\r\n    - Policies are applied in the order of their appearance, from the top down.\r\n    - Comments within policy elements are not supported and may disappear. Place your comments between policy elements or at a higher level scope.\r\n-->\r\n<policies>\r\n  <inbound>\r\n    <base />\r\n    <set-variable name="criteria" value="@(context.Request.Body.As&lt;JObject&gt;()[&quot;searchForPolicies&quot;][&quot;criteria&quot;])" />\r\n    <set-variable name="policyId" value="@(((JObject)context.Variables[&quot;criteria&quot;])[&quot;policyNumber&quot;])" />\r\n    <set-variable name="licensePlate" value="@(((JObject)context.Variables[&quot;criteria&quot;])[&quot;licensePlate_Ext&quot;])" />\r\n    <set-variable name="asOfDate" value="@(DateTime.Parse(((JObject)context.Variables[&quot;criteria&quot;])[&quot;asOfDate&quot;].ToString()).ToString(&quot;yyyy-MM-ddTHH:mm:ssZ&quot;))" />\r\n    <send-request mode="new" response-variable-name="firstCall" timeout="60" ignore-error="true">\r\n      <set-url>https://mfapim.azure-api.net/test/mockxml</set-url>\r\n      <set-method>POST</set-method>\r\n      <set-header name="Content-Type" exists-action="override">\r\n        <value>text/xml</value>\r\n      </set-header>\r\n      <set-header name="Ocp-Apim-Subscription-Key" exists-action="override">\r\n        <value>@(context.Request.Headers.GetValueOrDefault("Ocp-Apim-Subscription-Key",""))</value>\r\n      </set-header>\r\n      <set-body template="liquid">\r\n        <soap:Envelope xmlns:soap="http://www.w3.org/2003/05/soap-envelope" xmlns:soap1="http://guidewire.com/ws/soapheaders" xmlns:ccp="http://guidewire.com/pc/ws/gw/webservice/pc/pc800/ccintegration/CCPolicySearchIntegration" xmlns:ccin="http://guidewire.com/pc/ccintegration">\r\n          <soap:Header>\r\n            <soap1:locale>en_GB</soap1:locale>\r\n            <soap1:authentication>\r\n              <soap1:username>su</soap1:username>\r\n              <soap1:password>gw</soap1:password>\r\n            </soap1:authentication>\r\n          </soap:Header>\r\n          <soap:Body>\r\n            <ccp:searchForPolicies>\r\n              <ccp:criteria AsOfDate="{{context.Variables[\'asOfDate\']}}" PolicyNumber="{{context.Variables[\'policyId\']}}" LicensePlate_Ext="{{context.Variables[\'licensePlate\']}}" IncludeArchived="true" />\r\n            </ccp:searchForPolicies>\r\n          </soap:Body>\r\n        </soap:Envelope>\r\n      </set-body>\r\n    </send-request>\r\n    <set-header name="Content-Type" exists-action="override">\r\n      <value>text/xml</value>\r\n    </set-header>\r\n    <set-variable name="criteria" value="@{&#xA;            var body = ((IResponse)context.Variables[&quot;firstCall&quot;]).Body.As&lt;string&gt;();&#xA;            return body;&#xA;        }" />\r\n    <set-variable name="policyNumber" value="@{&#xA;            var xdoc = XDocument.Parse((string)(context.Variables[&quot;criteria&quot;]));&#xA;            var attr = xdoc.Descendants().Where(p =&gt; p.Name.LocalName == &quot;Entry&quot;).Attributes(&quot;PolicyNumber&quot;).FirstOrDefault().Value;&#xA;            return attr;&#xA;        }" />\r\n    <set-variable name="addressLine1" value="@{&#xA;            var xdoc = XDocument.Parse((string)(context.Variables[&quot;criteria&quot;]));&#xA;            var attr = xdoc.Descendants().Where(p =&gt; p.Name.LocalName == &quot;Entry&quot;).Attributes(&quot;AddressLine1&quot;).FirstOrDefault().Value;&#xA;            return attr;&#xA;        }" />\r\n    <set-variable name="city" value="@{&#xA;            var xdoc = XDocument.Parse((string)(context.Variables[&quot;criteria&quot;]));&#xA;            var attr = xdoc.Descendants().Where(p =&gt; p.Name.LocalName == &quot;Entry&quot;).Attributes(&quot;City&quot;).FirstOrDefault().Value;&#xA;            return attr;&#xA;        }" />\r\n    <set-variable name="licensePlate " value="@{&#xA;            var xdoc = XDocument.Parse((string)(context.Variables[&quot;criteria&quot;]));&#xA;            var attr = xdoc.Descendants().Where(p =&gt; p.Name.LocalName == &quot;Vehicles&quot;).Attributes(&quot;LicensePlate&quot;).FirstOrDefault().Value;&#xA;            return attr;&#xA;        }" />\r\n    <return-response>\r\n      <set-status code="200" reason="OK" />\r\n      <set-body template="liquid" />\r\n    </return-response>\r\n  </inbound>\r\n  <backend>\r\n    <base />\r\n  </backend>\r\n  <outbound>\r\n    <base />\r\n    <set-variable name="retrievePolicyResponseBodyXml" value="@{&#xA;            var body = context.Response.Body.As&lt;string&gt;();&#xA;            return body;&#xA;        }" />\r\n    <set-variable name="replacement" value="@{&#xA;                    var xdoc = XDocument.Parse((string)(context.Variables[&quot;retrievePolicyResponseBodyXml&quot;]));&#xA;                    var comprehensive = xdoc.Descendants().Where(r =&gt; r.Name.LocalName == &quot;Coverages&quot; &amp;&amp; r.Attribute(&quot;Type&quot;)?.Value == &quot;PCGlassDamageCov_Ext&quot;).FirstOrDefault()?.Descendants().Where(r=&gt;r.Name.LocalName == &quot;CovTerms&quot; &amp;&amp; r.Attribute(&quot;CovTermPattern&quot;)?.Value == &quot;PCGlassDmgWreplacementdmgCT_Ext&quot;).FirstOrDefault()?.Attribute(&quot;FinancialAmount&quot;)?.Value;&#xA;                    return comprehensive;&#xA;}" />\r\n  </outbound>\r\n  <on-error>\r\n    <base />\r\n  </on-error>\r\n</policies>'
    format: 'xml'
  }
  dependsOn: [

    service_mfapim_name_test
    service_mfapim_name_resource
  ]
}

resource service_mfapim_name_test_mockbackend_policy 'Microsoft.ApiManagement/service/apis/operations/policies@2021-12-01-preview' = {
  parent: service_mfapim_name_test_mockbackend
  name: 'policy'
  properties: {
    value: '<!--\r\n    IMPORTANT:\r\n    - Policy elements can appear only within the <inbound>, <outbound>, <backend> section elements.\r\n    - To apply a policy to the incoming request (before it is forwarded to the backend service), place a corresponding policy element within the <inbound> section element.\r\n    - To apply a policy to the outgoing response (before it is sent back to the caller), place a corresponding policy element within the <outbound> section element.\r\n    - To add a policy, place the cursor at the desired insertion point and select a policy from the sidebar.\r\n    - To remove a policy, delete the corresponding policy statement from the policy document.\r\n    - Position the <base> element within a section element to inherit all policies from the corresponding section element in the enclosing scope.\r\n    - Remove the <base> element to prevent inheriting policies from the corresponding section element in the enclosing scope.\r\n    - Policies are applied in the order of their appearance, from the top down.\r\n    - Comments within policy elements are not supported and may disappear. Place your comments between policy elements or at a higher level scope.\r\n-->\r\n<policies>\r\n  <inbound>\r\n    <base />\r\n    <return-response>\r\n      <set-status code="200" reason="OK" />\r\n      <set-header name="Content-Type" exists-action="override">\r\n        <value>text/xml</value>\r\n      </set-header>\r\n      <set-body template="liquid">\r\n        <message2>\r\n          <property1>MESSAGE2_TEST1</property1>\r\n          <property2>MESSAGE2_TEST2</property2>\r\n        </message2>\r\n      </set-body>\r\n    </return-response>\r\n  </inbound>\r\n  <backend>\r\n    <base />\r\n  </backend>\r\n  <outbound>\r\n    <base />\r\n  </outbound>\r\n  <on-error>\r\n    <base />\r\n  </on-error>\r\n</policies>'
    format: 'xml'
  }
  dependsOn: [

    service_mfapim_name_test
    service_mfapim_name_resource
  ]
}

resource service_mfapim_name_test_mockentry_policy 'Microsoft.ApiManagement/service/apis/operations/policies@2021-12-01-preview' = {
  parent: service_mfapim_name_test_mockentry
  name: 'policy'
  properties: {
    value: '<!--\r\n    IMPORTANT:\r\n    - Policy elements can appear only within the <inbound>, <outbound>, <backend> section elements.\r\n    - To apply a policy to the incoming request (before it is forwarded to the backend service), place a corresponding policy element within the <inbound> section element.\r\n    - To apply a policy to the outgoing response (before it is sent back to the caller), place a corresponding policy element within the <outbound> section element.\r\n    - To add a policy, place the cursor at the desired insertion point and select a policy from the sidebar.\r\n    - To remove a policy, delete the corresponding policy statement from the policy document.\r\n    - Position the <base> element within a section element to inherit all policies from the corresponding section element in the enclosing scope.\r\n    - Remove the <base> element to prevent inheriting policies from the corresponding section element in the enclosing scope.\r\n    - Policies are applied in the order of their appearance, from the top down.\r\n    - Comments within policy elements are not supported and may disappear. Place your comments between policy elements or at a higher level scope.\r\n-->\r\n<policies>\r\n  <inbound>\r\n    <base />\r\n    <return-response>\r\n      <set-status code="200" reason="OK" />\r\n      <set-body template="liquid">\r\n        <soap12:Envelope xmlns:soap12="http://www.w3.org/2003/05/soap-envelope">\r\n          <soap12:Body>\r\n            <getTypelistValuesResponse xmlns="http://guidewire.com/pl/ws/gw/wsi/pl/TypelistToolsAPI">\r\n              <return>\r\n                <Entry xmlns:pogo="http://guidewire.com/gw/api/webservice/typelisttools">\r\n                  <pogo:Code>003_Mr</pogo:Code>\r\n                  <pogo:Description>Mr</pogo:Description>\r\n                  <pogo:Name>Mr</pogo:Name>\r\n                  <pogo:Retired>false</pogo:Retired>\r\n                </Entry>\r\n                <Entry xmlns:pogo="http://guidewire.com/gw/api/webservice/typelisttools">\r\n                  <pogo:Code>004</pogo:Code>\r\n                  <pogo:Description>Mrs</pogo:Description>\r\n                  <pogo:Name>Mrs</pogo:Name>\r\n                  <pogo:Retired>false</pogo:Retired>\r\n                </Entry>\r\n                <Entry xmlns:pogo="http://guidewire.com/gw/api/webservice/typelisttools">\r\n                  <pogo:Code>002</pogo:Code>\r\n                  <pogo:Description>Miss</pogo:Description>\r\n                  <pogo:Name>Miss</pogo:Name>\r\n                  <pogo:Retired>false</pogo:Retired>\r\n                </Entry>\r\n                <Entry xmlns:pogo="http://guidewire.com/gw/api/webservice/typelisttools">\r\n                  <pogo:Code>005_Ms</pogo:Code>\r\n                  <pogo:Description>Ms</pogo:Description>\r\n                  <pogo:Name>Ms</pogo:Name>\r\n                  <pogo:Retired>false</pogo:Retired>\r\n                </Entry>\r\n                <Entry xmlns:pogo="http://guidewire.com/gw/api/webservice/typelisttools">\r\n                  <pogo:Code>005</pogo:Code>\r\n                  <pogo:Description>Doctor-female</pogo:Description>\r\n                  <pogo:Name>Doctor-female</pogo:Name>\r\n                  <pogo:Retired>false</pogo:Retired>\r\n                </Entry>\r\n                <Entry xmlns:pogo="http://guidewire.com/gw/api/webservice/typelisttools">\r\n                  <pogo:Code>003</pogo:Code>\r\n                  <pogo:Description>Doctor-male</pogo:Description>\r\n                  <pogo:Name>Doctor-male</pogo:Name>\r\n                  <pogo:Retired>false</pogo:Retired>\r\n                </Entry>\r\n                <Entry xmlns:pogo="http://guidewire.com/gw/api/webservice/typelisttools">\r\n                  <pogo:Code>040</pogo:Code>\r\n                  <pogo:Description>Admiral</pogo:Description>\r\n                  <pogo:Name>Admiral</pogo:Name>\r\n                  <pogo:Retired>false</pogo:Retired>\r\n                </Entry>\r\n                <Entry xmlns:pogo="http://guidewire.com/gw/api/webservice/typelisttools">\r\n                  <pogo:Code>103</pogo:Code>\r\n                  <pogo:Description>Advocate</pogo:Description>\r\n                  <pogo:Name>Advocate</pogo:Name>\r\n                  <pogo:Retired>false</pogo:Retired>\r\n                </Entry>\r\n                <Entry xmlns:pogo="http://guidewire.com/gw/api/webservice/typelisttools">\r\n                  <pogo:Code>039</pogo:Code>\r\n                  <pogo:Description>Air Chief Marshal</pogo:Description>\r\n                  <pogo:Name>Air Chief Marshal</pogo:Name>\r\n                  <pogo:Retired>false</pogo:Retired>\r\n                </Entry>\r\n                <Entry xmlns:pogo="http://guidewire.com/gw/api/webservice/typelisttools">\r\n                  <pogo:Code>041</pogo:Code>\r\n                  <pogo:Description>Air Commodore</pogo:Description>\r\n                  <pogo:Name>Air Commodore</pogo:Name>\r\n                  <pogo:Retired>false</pogo:Retired>\r\n                </Entry>\r\n                <Entry xmlns:pogo="http://guidewire.com/gw/api/webservice/typelisttools">\r\n                  <pogo:Code>043</pogo:Code>\r\n                  <pogo:Description>Air Marshal</pogo:Description>\r\n                  <pogo:Name>Air Marshal</pogo:Name>\r\n                  <pogo:Retired>false</pogo:Retired>\r\n                </Entry>\r\n                <Entry xmlns:pogo="http://guidewire.com/gw/api/webservice/typelisttools">\r\n                  <pogo:Code>044</pogo:Code>\r\n                  <pogo:Description>Air Vice Marshall</pogo:Description>\r\n                  <pogo:Name>Air Vice Marshall</pogo:Name>\r\n                  <pogo:Retired>false</pogo:Retired>\r\n                </Entry>\r\n                <Entry xmlns:pogo="http://guidewire.com/gw/api/webservice/typelisttools">\r\n                  <pogo:Code>042</pogo:Code>\r\n                  <pogo:Description>Airman</pogo:Description>\r\n                  <pogo:Name>Airman</pogo:Name>\r\n                  <pogo:Retired>false</pogo:Retired>\r\n                </Entry>\r\n                <Entry xmlns:pogo="http://guidewire.com/gw/api/webservice/typelisttools">\r\n                  <pogo:Code>037</pogo:Code>\r\n                  <pogo:Description>An tUasal</pogo:Description>\r\n                  <pogo:Name>An tUasal</pogo:Name>\r\n                  <pogo:Retired>false</pogo:Retired>\r\n                </Entry>\r\n                <Entry xmlns:pogo="http://guidewire.com/gw/api/webservice/typelisttools">\r\n                  <pogo:Code>068</pogo:Code>\r\n                  <pogo:Description>Baron</pogo:Description>\r\n                  <pogo:Name>Baron</pogo:Name>\r\n                  <pogo:Retired>false</pogo:Retired>\r\n                </Entry>\r\n                <Entry xmlns:pogo="http://guidewire.com/gw/api/webservice/typelisttools">\r\n                  <pogo:Code>069</pogo:Code>\r\n                  <pogo:Description>Baroness</pogo:Description>\r\n                  <pogo:Name>Baroness</pogo:Name>\r\n                  <pogo:Retired>false</pogo:Retired>\r\n                </Entry>\r\n                <Entry xmlns:pogo="http://guidewire.com/gw/api/webservice/typelisttools">\r\n                  <pogo:Code>038</pogo:Code>\r\n                  <pogo:Description>Bean</pogo:Description>\r\n                  <pogo:Name>Bean</pogo:Name>\r\n                  <pogo:Retired>false</pogo:Retired>\r\n                </Entry>\r\n                <Entry xmlns:pogo="http://guidewire.com/gw/api/webservice/typelisttools">\r\n                  <pogo:Code>045</pogo:Code>\r\n                  <pogo:Description>Bombardier</pogo:Description>\r\n                  <pogo:Name>Bombardier</pogo:Name>\r\n                  <pogo:Retired>false</pogo:Retired>\r\n                </Entry>\r\n                <Entry xmlns:pogo="http://guidewire.com/gw/api/webservice/typelisttools">\r\n                  <pogo:Code>008</pogo:Code>\r\n                  <pogo:Description>Brigadier</pogo:Description>\r\n                  <pogo:Name>Brigadier</pogo:Name>\r\n                  <pogo:Retired>false</pogo:Retired>\r\n                </Entry>\r\n                <Entry xmlns:pogo="http://guidewire.com/gw/api/webservice/typelisttools">\r\n                  <pogo:Code>027</pogo:Code>\r\n                  <pogo:Description>Brother</pogo:Description>\r\n                  <pogo:Name>Brother</pogo:Name>\r\n                  <pogo:Retired>false</pogo:Retired>\r\n                </Entry>\r\n                <Entry xmlns:pogo="http://guidewire.com/gw/api/webservice/typelisttools">\r\n                  <pogo:Code>046</pogo:Code>\r\n                  <pogo:Description>Canon</pogo:Description>\r\n                  <pogo:Name>Canon</pogo:Name>\r\n                  <pogo:Retired>false</pogo:Retired>\r\n                </Entry>\r\n                <Entry xmlns:pogo="http://guidewire.com/gw/api/webservice/typelisttools">\r\n                  <pogo:Code>009</pogo:Code>\r\n                  <pogo:Description>Captain</pogo:Description>\r\n                  <pogo:Name>Captain</pogo:Name>\r\n                  <pogo:Retired>false</pogo:Retired>\r\n                </Entry>\r\n                <Entry xmlns:pogo="http://guidewire.com/gw/api/webservice/typelisttools">\r\n                  <pogo:Code>070</pogo:Code>\r\n                  <pogo:Description>Cardinal</pogo:Description>\r\n                  <pogo:Name>Cardinal</pogo:Name>\r\n                  <pogo:Retired>false</pogo:Retired>\r\n                </Entry>\r\n                <Entry xmlns:pogo="http://guidewire.com/gw/api/webservice/typelisttools">\r\n                  <pogo:Code>010</pogo:Code>\r\n                  <pogo:Description>Chief</pogo:Description>\r\n                  <pogo:Name>Chief</pogo:Name>\r\n                  <pogo:Retired>false</pogo:Retired>\r\n                </Entry>\r\n                <Entry xmlns:pogo="http://guidewire.com/gw/api/webservice/typelisttools">\r\n                  <pogo:Code>011</pogo:Code>\r\n                  <pogo:Description>Colonel</pogo:Description>\r\n                  <pogo:Name>Colonel</pogo:Name>\r\n                  <pogo:Retired>false</pogo:Retired>\r\n                </Entry>\r\n                <Entry xmlns:pogo="http://guidewire.com/gw/api/webservice/typelisttools">\r\n                  <pogo:Code>089</pogo:Code>\r\n                  <pogo:Description>Colour Sergeant</pogo:Description>\r\n                  <pogo:Name>Colour Sergeant</pogo:Name>\r\n                  <pogo:Retired>false</pogo:Retired>\r\n                </Entry>\r\n                <Entry xmlns:pogo="http://guidewire.com/gw/api/webservice/typelisttools">\r\n                  <pogo:Code>012</pogo:Code>\r\n                  <pogo:Description>Commander</pogo:Description>\r\n                  <pogo:Name>Commander</pogo:Name>\r\n                  <pogo:Retired>false</pogo:Retired>\r\n                </Entry>\r\n                <Entry xmlns:pogo="http://guidewire.com/gw/api/webservice/typelisttools">\r\n                  <pogo:Code>013</pogo:Code>\r\n                  <pogo:Description>Commodore</pogo:Description>\r\n                  <pogo:Name>Commodore</pogo:Name>\r\n                  <pogo:Retired>false</pogo:Retired>\r\n                </Entry>\r\n                <Entry xmlns:pogo="http://guidewire.com/gw/api/webservice/typelisttools">\r\n                  <pogo:Code>047</pogo:Code>\r\n                  <pogo:Description>Corporal</pogo:Description>\r\n                  <pogo:Name>Corporal</pogo:Name>\r\n                  <pogo:Retired>false</pogo:Retired>\r\n                </Entry>\r\n                <Entry xmlns:pogo="http://guidewire.com/gw/api/webservice/typelisttools">\r\n                  <pogo:Code>028</pogo:Code>\r\n                  <pogo:Description>Councillor</pogo:Description>\r\n                  <pogo:Name>Councillor</pogo:Name>\r\n                  <pogo:Retired>false</pogo:Retired>\r\n                </Entry>\r\n                <Entry xmlns:pogo="http://guidewire.com/gw/api/webservice/typelisttools">\r\n                  <pogo:Code>071</pogo:Code>\r\n                  <pogo:Description>Count</pogo:Description>\r\n                  <pogo:Name>Count</pogo:Name>\r\n                  <pogo:Retired>false</pogo:Retired>\r\n                </Entry>\r\n                <Entry xmlns:pogo="http://guidewire.com/gw/api/webservice/typelisttools">\r\n                  <pogo:Code>072</pogo:Code>\r\n                  <pogo:Description>Countess</pogo:Description>\r\n                  <pogo:Name>Countess</pogo:Name>\r\n                  <pogo:Retired>false</pogo:Retired>\r\n                </Entry>\r\n                <Entry xmlns:pogo="http://guidewire.com/gw/api/webservice/typelisttools">\r\n                  <pogo:Code>014</pogo:Code>\r\n                  <pogo:Description>Dame</pogo:Description>\r\n                  <pogo:Name>Dame</pogo:Name>\r\n                  <pogo:Retired>false</pogo:Retired>\r\n                </Entry>\r\n                <Entry xmlns:pogo="http://guidewire.com/gw/api/webservice/typelisttools">\r\n                  <pogo:Code>048</pogo:Code>\r\n                  <pogo:Description>Dean</pogo:Description>\r\n                  <pogo:Name>Dean</pogo:Name>\r\n                  <pogo:Retired>false</pogo:Retired>\r\n                </Entry>\r\n                <Entry xmlns:pogo="http://guidewire.com/gw/api/webservice/typelisttools">\r\n                  <pogo:Code>001</pogo:Code>\r\n                  <pogo:Description>Doctor</pogo:Description>\r\n                  <pogo:Name>Doctor</pogo:Name>\r\n                  <pogo:Retired>false</pogo:Retired>\r\n                </Entry>\r\n                <Entry xmlns:pogo="http://guidewire.com/gw/api/webservice/typelisttools">\r\n                  <pogo:Code>090</pogo:Code>\r\n                  <pogo:Description>Duchess</pogo:Description>\r\n                  <pogo:Name>Duchess</pogo:Name>\r\n                  <pogo:Retired>false</pogo:Retired>\r\n                </Entry>\r\n                <Entry xmlns:pogo="http://guidewire.com/gw/api/webservice/typelisttools">\r\n                  <pogo:Code>087</pogo:Code>\r\n                  <pogo:Description>Estate Of</pogo:Description>\r\n                  <pogo:Name>Estate Of</pogo:Name>\r\n                  <pogo:Retired>false</pogo:Retired>\r\n                </Entry>\r\n                <Entry xmlns:pogo="http://guidewire.com/gw/api/webservice/typelisttools">\r\n                  <pogo:Code>034</pogo:Code>\r\n                  <pogo:Description>Executor(s) of</pogo:Description>\r\n                  <pogo:Name>Executor(s) of</pogo:Name>\r\n                  <pogo:Retired>false</pogo:Retired>\r\n                </Entry>\r\n                <Entry xmlns:pogo="http://guidewire.com/gw/api/webservice/typelisttools">\r\n                  <pogo:Code>035</pogo:Code>\r\n                  <pogo:Description>Father</pogo:Description>\r\n                  <pogo:Name>Father</pogo:Name>\r\n                  <pogo:Retired>false</pogo:Retired>\r\n                </Entry>\r\n                <Entry xmlns:pogo="http://guidewire.com/gw/api/webservice/typelisttools">\r\n                  <pogo:Code>049</pogo:Code>\r\n                  <pogo:Description>Field Marshal</pogo:Description>\r\n                  <pogo:Name>Field Marshal</pogo:Name>\r\n                  <pogo:Retired>false</pogo:Retired>\r\n                </Entry>\r\n                <Entry xmlns:pogo="http://guidewire.com/gw/api/webservice/typelisttools">\r\n                  <pogo:Code>015</pogo:Code>\r\n                  <pogo:Description>Flight Lieutenant</pogo:Description>\r\n                  <pogo:Name>Flight Lieutenant</pogo:Name>\r\n                  <pogo:Retired>false</pogo:Retired>\r\n                </Entry>\r\n                <Entry xmlns:pogo="http://guidewire.com/gw/api/webservice/typelisttools">\r\n                  <pogo:Code>091</pogo:Code>\r\n                  <pogo:Description>Flight Officer</pogo:Description>\r\n                  <pogo:Name>Flight Officer</pogo:Name>\r\n                  <pogo:Retired>false</pogo:Retired>\r\n                </Entry>\r\n                <Entry xmlns:pogo="http://guidewire.com/gw/api/webservice/typelisttools">\r\n                  <pogo:Code>050</pogo:Code>\r\n                  <pogo:Description>Flight Sergeant</pogo:Description>\r\n                  <pogo:Name>Flight Sergeant</pogo:Name>\r\n                  <pogo:Retired>false</pogo:Retired>\r\n                </Entry>\r\n                <Entry xmlns:pogo="http://guidewire.com/gw/api/webservice/typelisttools">\r\n                  <pogo:Code>016</pogo:Code>\r\n                  <pogo:Description>General</pogo:Description>\r\n                  <pogo:Name>General</pogo:Name>\r\n                  <pogo:Retired>false</pogo:Retired>\r\n                </Entry>\r\n                <Entry xmlns:pogo="http://guidewire.com/gw/api/webservice/typelisttools">\r\n                  <pogo:Code>051</pogo:Code>\r\n                  <pogo:Description>Group Captain</pogo:Description>\r\n                  <pogo:Name>Group Captain</pogo:Name>\r\n                  <pogo:Retired>false</pogo:Retired>\r\n                </Entry>\r\n                <Entry xmlns:pogo="http://guidewire.com/gw/api/webservice/typelisttools">\r\n                  <pogo:Code>052</pogo:Code>\r\n                  <pogo:Description>Gunner</pogo:Description>\r\n                  <pogo:Name>Gunner</pogo:Name>\r\n                  <pogo:Retired>false</pogo:Retired>\r\n                </Entry>\r\n                <Entry xmlns:pogo="http://guidewire.com/gw/api/webservice/typelisttools">\r\n                  <pogo:Code>105</pogo:Code>\r\n                  <pogo:Description>Her Excellency</pogo:Description>\r\n                  <pogo:Name>Her Excellency</pogo:Name>\r\n                  <pogo:Retired>false</pogo:Retired>\r\n                </Entry>\r\n                <Entry xmlns:pogo="http://guidewire.com/gw/api/webservice/typelisttools">\r\n                  <pogo:Code>104</pogo:Code>\r\n                  <pogo:Description>His Excellency</pogo:Description>\r\n                  <pogo:Name>His Excellency</pogo:Name>\r\n                  <pogo:Retired>false</pogo:Retired>\r\n                </Entry>\r\n                <Entry xmlns:pogo="http://guidewire.com/gw/api/webservice/typelisttools">\r\n                  <pogo:Code>017</pogo:Code>\r\n                  <pogo:Description>Honourable</pogo:Description>\r\n                  <pogo:Name>Honourable</pogo:Name>\r\n                  <pogo:Retired>false</pogo:Retired>\r\n                </Entry>\r\n                <Entry xmlns:pogo="http://guidewire.com/gw/api/webservice/typelisttools">\r\n                  <pogo:Code>092</pogo:Code>\r\n                  <pogo:Description>HRH</pogo:Description>\r\n                  <pogo:Name>HRH</pogo:Name>\r\n                  <pogo:Retired>false</pogo:Retired>\r\n                </Entry>\r\n                <Entry xmlns:pogo="http://guidewire.com/gw/api/webservice/typelisttools">\r\n                  <pogo:Code>018</pogo:Code>\r\n                  <pogo:Description>Judge</pogo:Description>\r\n                  <pogo:Name>Judge</pogo:Name>\r\n                  <pogo:Retired>false</pogo:Retired>\r\n                </Entry>\r\n                <Entry xmlns:pogo="http://guidewire.com/gw/api/webservice/typelisttools">\r\n                  <pogo:Code>019</pogo:Code>\r\n                  <pogo:Description>Lady</pogo:Description>\r\n                  <pogo:Name>Lady</pogo:Name>\r\n                  <pogo:Retired>false</pogo:Retired>\r\n                </Entry>\r\n                <Entry xmlns:pogo="http://guidewire.com/gw/api/webservice/typelisttools">\r\n                  <pogo:Code>053</pogo:Code>\r\n                  <pogo:Description>Lance Bombardier</pogo:Description>\r\n                  <pogo:Name>Lance Bombardier</pogo:Name>\r\n                  <pogo:Retired>false</pogo:Retired>\r\n                </Entry>\r\n                <Entry xmlns:pogo="http://guidewire.com/gw/api/webservice/typelisttools">\r\n                  <pogo:Code>055</pogo:Code>\r\n                  <pogo:Description>Lance Corporal</pogo:Description>\r\n                  <pogo:Name>Lance Corporal</pogo:Name>\r\n                  <pogo:Retired>false</pogo:Retired>\r\n                </Entry>\r\n                <Entry xmlns:pogo="http://guidewire.com/gw/api/webservice/typelisttools">\r\n                  <pogo:Code>020</pogo:Code>\r\n                  <pogo:Description>Lieutenant</pogo:Description>\r\n                  <pogo:Name>Lieutenant</pogo:Name>\r\n                  <pogo:Retired>false</pogo:Retired>\r\n                </Entry>\r\n                <Entry xmlns:pogo="http://guidewire.com/gw/api/webservice/typelisttools">\r\n                  <pogo:Code>054</pogo:Code>\r\n                  <pogo:Description>Lieutenant Colonel</pogo:Description>\r\n                  <pogo:Name>Lieutenant Colonel</pogo:Name>\r\n                  <pogo:Retired>false</pogo:Retired>\r\n                </Entry>\r\n                <Entry xmlns:pogo="http://guidewire.com/gw/api/webservice/typelisttools">\r\n                  <pogo:Code>076</pogo:Code>\r\n                  <pogo:Description>Lieutenant Commander</pogo:Description>\r\n                  <pogo:Name>Lieutenant Commander</pogo:Name>\r\n                  <pogo:Retired>false</pogo:Retired>\r\n                </Entry>\r\n                <Entry xmlns:pogo="http://guidewire.com/gw/api/webservice/typelisttools">\r\n                  <pogo:Code>056</pogo:Code>\r\n                  <pogo:Description>Lieutenant General</pogo:Description>\r\n                  <pogo:Name>Lieutenant General</pogo:Name>\r\n                  <pogo:Retired>false</pogo:Retired>\r\n                </Entry>\r\n                <Entry xmlns:pogo="http://guidewire.com/gw/api/webservice/typelisttools">\r\n                  <pogo:Code>021</pogo:Code>\r\n                  <pogo:Description>Lord</pogo:Description>\r\n                  <pogo:Name>Lord</pogo:Name>\r\n                  <pogo:Retired>false</pogo:Retired>\r\n                </Entry>\r\n                <Entry xmlns:pogo="http://guidewire.com/gw/api/webservice/typelisttools">\r\n                  <pogo:Code>093</pogo:Code>\r\n                  <pogo:Description>Madam</pogo:Description>\r\n                  <pogo:Name>Madam</pogo:Name>\r\n                  <pogo:Retired>false</pogo:Retired>\r\n                </Entry>\r\n                <Entry xmlns:pogo="http://guidewire.com/gw/api/webservice/typelisttools">\r\n                  <pogo:Code>022</pogo:Code>\r\n                  <pogo:Description>Major</pogo:Description>\r\n                  <pogo:Name>Major</pogo:Name>\r\n                  <pogo:Retired>false</pogo:Retired>\r\n                </Entry>\r\n                <Entry xmlns:pogo="http://guidewire.com/gw/api/webservice/typelisttools">\r\n                  <pogo:Code>085</pogo:Code>\r\n                  <pogo:Description>Major General</pogo:Description>\r\n                  <pogo:Name>Major General</pogo:Name>\r\n                  <pogo:Retired>false</pogo:Retired>\r\n                </Entry>\r\n                <Entry xmlns:pogo="http://guidewire.com/gw/api/webservice/typelisttools">\r\n                  <pogo:Code>094</pogo:Code>\r\n                  <pogo:Description>Marquis</pogo:Description>\r\n                  <pogo:Name>Marquis</pogo:Name>\r\n                  <pogo:Retired>false</pogo:Retired>\r\n                </Entry>\r\n                <Entry xmlns:pogo="http://guidewire.com/gw/api/webservice/typelisttools">\r\n                  <pogo:Code>095</pogo:Code>\r\n                  <pogo:Description>Marshal Of The Royal Air Force</pogo:Description>\r\n                  <pogo:Name>Marshal Of The Royal Air Force</pogo:Name>\r\n                  <pogo:Retired>false</pogo:Retired>\r\n                </Entry>\r\n                <Entry xmlns:pogo="http://guidewire.com/gw/api/webservice/typelisttools">\r\n                  <pogo:Code>023</pogo:Code>\r\n                  <pogo:Description>Master</pogo:Description>\r\n                  <pogo:Name>Master</pogo:Name>\r\n                  <pogo:Retired>false</pogo:Retired>\r\n                </Entry>\r\n                <Entry xmlns:pogo="http://guidewire.com/gw/api/webservice/typelisttools">\r\n                  <pogo:Code>064</pogo:Code>\r\n                  <pogo:Description>Master Sergeant</pogo:Description>\r\n                  <pogo:Name>Master Sergeant</pogo:Name>\r\n                  <pogo:Retired>false</pogo:Retired>\r\n                </Entry>\r\n                <Entry xmlns:pogo="http://guidewire.com/gw/api/webservice/typelisttools">\r\n                  <pogo:Code>036</pogo:Code>\r\n                  <pogo:Description>Mother</pogo:Description>\r\n                  <pogo:Name>Mother</pogo:Name>\r\n                  <pogo:Retired>false</pogo:Retired>\r\n                </Entry>\r\n                <Entry xmlns:pogo="http://guidewire.com/gw/api/webservice/typelisttools">\r\n                  <pogo:Code>079</pogo:Code>\r\n                  <pogo:Description>Mr Justice</pogo:Description>\r\n                  <pogo:Name>Mr Justice</pogo:Name>\r\n                  <pogo:Retired>false</pogo:Retired>\r\n                </Entry>\r\n                <Entry xmlns:pogo="http://guidewire.com/gw/api/webservice/typelisttools">\r\n                  <pogo:Code>000</pogo:Code>\r\n                  <pogo:Description>Not Available</pogo:Description>\r\n                  <pogo:Name>N/A</pogo:Name>\r\n                  <pogo:Retired>false</pogo:Retired>\r\n                </Entry>\r\n                <Entry xmlns:pogo="http://guidewire.com/gw/api/webservice/typelisttools">\r\n                  <pogo:Code>096</pogo:Code>\r\n                  <pogo:Description>Pilot Officer</pogo:Description>\r\n                  <pogo:Name>Pilot Officer</pogo:Name>\r\n                  <pogo:Retired>false</pogo:Retired>\r\n                </Entry>\r\n                <Entry xmlns:pogo="http://guidewire.com/gw/api/webservice/typelisttools">\r\n                  <pogo:Code>080</pogo:Code>\r\n                  <pogo:Description>Prince</pogo:Description>\r\n                  <pogo:Name>Prince</pogo:Name>\r\n                  <pogo:Retired>false</pogo:Retired>\r\n                </Entry>\r\n                <Entry xmlns:pogo="http://guidewire.com/gw/api/webservice/typelisttools">\r\n                  <pogo:Code>097</pogo:Code>\r\n                  <pogo:Description>Princess</pogo:Description>\r\n                  <pogo:Name>Princess</pogo:Name>\r\n                  <pogo:Retired>false</pogo:Retired>\r\n                </Entry>\r\n                <Entry xmlns:pogo="http://guidewire.com/gw/api/webservice/typelisttools">\r\n                  <pogo:Code>057</pogo:Code>\r\n                  <pogo:Description>Private</pogo:Description>\r\n                  <pogo:Name>Private</pogo:Name>\r\n                  <pogo:Retired>false</pogo:Retired>\r\n                </Entry>\r\n                <Entry xmlns:pogo="http://guidewire.com/gw/api/webservice/typelisttools">\r\n                  <pogo:Code>024</pogo:Code>\r\n                  <pogo:Description>Professor</pogo:Description>\r\n                  <pogo:Name>Professor</pogo:Name>\r\n                  <pogo:Retired>false</pogo:Retired>\r\n                </Entry>\r\n                <Entry xmlns:pogo="http://guidewire.com/gw/api/webservice/typelisttools">\r\n                  <pogo:Code>077</pogo:Code>\r\n                  <pogo:Description>Provost</pogo:Description>\r\n                  <pogo:Name>Provost</pogo:Name>\r\n                  <pogo:Retired>false</pogo:Retired>\r\n                </Entry>\r\n                <Entry xmlns:pogo="http://guidewire.com/gw/api/webservice/typelisttools">\r\n                  <pogo:Code>029</pogo:Code>\r\n                  <pogo:Description>Rabbi</pogo:Description>\r\n                  <pogo:Name>Rabbi</pogo:Name>\r\n                  <pogo:Retired>false</pogo:Retired>\r\n                </Entry>\r\n                <Entry xmlns:pogo="http://guidewire.com/gw/api/webservice/typelisttools">\r\n                  <pogo:Code>058</pogo:Code>\r\n                  <pogo:Description>Rear Admiral</pogo:Description>\r\n                  <pogo:Name>Rear Admiral</pogo:Name>\r\n                  <pogo:Retired>false</pogo:Retired>\r\n                </Entry>\r\n                <Entry xmlns:pogo="http://guidewire.com/gw/api/webservice/typelisttools">\r\n                  <pogo:Code>059</pogo:Code>\r\n                  <pogo:Description>Regimental Sergeant Major</pogo:Description>\r\n                  <pogo:Name>Regimental Sergeant Major</pogo:Name>\r\n                  <pogo:Retired>false</pogo:Retired>\r\n                </Entry>\r\n                <Entry xmlns:pogo="http://guidewire.com/gw/api/webservice/typelisttools">\r\n                  <pogo:Code>006</pogo:Code>\r\n                  <pogo:Description>Reverend</pogo:Description>\r\n                  <pogo:Name>Reverend</pogo:Name>\r\n                  <pogo:Retired>false</pogo:Retired>\r\n                </Entry>\r\n                <Entry xmlns:pogo="http://guidewire.com/gw/api/webservice/typelisttools">\r\n                  <pogo:Code>098</pogo:Code>\r\n                  <pogo:Description>Reverend Doctor</pogo:Description>\r\n                  <pogo:Name>Reverend Doctor</pogo:Name>\r\n                  <pogo:Retired>false</pogo:Retired>\r\n                </Entry>\r\n                <Entry xmlns:pogo="http://guidewire.com/gw/api/webservice/typelisttools">\r\n                  <pogo:Code>032</pogo:Code>\r\n                  <pogo:Description>Right Reverend</pogo:Description>\r\n                  <pogo:Name>Right Reverend</pogo:Name>\r\n                  <pogo:Retired>false</pogo:Retired>\r\n                </Entry>\r\n                <Entry xmlns:pogo="http://guidewire.com/gw/api/webservice/typelisttools">\r\n                  <pogo:Code>099</pogo:Code>\r\n                  <pogo:Description>Sachem</pogo:Description>\r\n                  <pogo:Name>Sachem</pogo:Name>\r\n                  <pogo:Retired>false</pogo:Retired>\r\n                </Entry>\r\n                <Entry xmlns:pogo="http://guidewire.com/gw/api/webservice/typelisttools">\r\n                  <pogo:Code>060</pogo:Code>\r\n                  <pogo:Description>Sergeant</pogo:Description>\r\n                  <pogo:Name>Sergeant</pogo:Name>\r\n                  <pogo:Retired>false</pogo:Retired>\r\n                </Entry>\r\n                <Entry xmlns:pogo="http://guidewire.com/gw/api/webservice/typelisttools">\r\n                  <pogo:Code>081</pogo:Code>\r\n                  <pogo:Description>Sheikh</pogo:Description>\r\n                  <pogo:Name>Sheikh</pogo:Name>\r\n                  <pogo:Retired>false</pogo:Retired>\r\n                </Entry>\r\n                <Entry xmlns:pogo="http://guidewire.com/gw/api/webservice/typelisttools">\r\n                  <pogo:Code>101</pogo:Code>\r\n                  <pogo:Description>Sheriff</pogo:Description>\r\n                  <pogo:Name>Sheriff</pogo:Name>\r\n                  <pogo:Retired>false</pogo:Retired>\r\n                </Entry>\r\n                <Entry xmlns:pogo="http://guidewire.com/gw/api/webservice/typelisttools">\r\n                  <pogo:Code>007</pogo:Code>\r\n                  <pogo:Description>Sir</pogo:Description>\r\n                  <pogo:Name>Sir</pogo:Name>\r\n                  <pogo:Retired>false</pogo:Retired>\r\n                </Entry>\r\n                <Entry xmlns:pogo="http://guidewire.com/gw/api/webservice/typelisttools">\r\n                  <pogo:Code>030</pogo:Code>\r\n                  <pogo:Description>Sister</pogo:Description>\r\n                  <pogo:Name>Sister</pogo:Name>\r\n                  <pogo:Retired>false</pogo:Retired>\r\n                </Entry>\r\n                <Entry xmlns:pogo="http://guidewire.com/gw/api/webservice/typelisttools">\r\n                  <pogo:Code>025</pogo:Code>\r\n                  <pogo:Description>Squadron Leader</pogo:Description>\r\n                  <pogo:Name>Squadron Leader</pogo:Name>\r\n                  <pogo:Retired>false</pogo:Retired>\r\n                </Entry>\r\n                <Entry xmlns:pogo="http://guidewire.com/gw/api/webservice/typelisttools">\r\n                  <pogo:Code>061</pogo:Code>\r\n                  <pogo:Description>Staff Sergeant</pogo:Description>\r\n                  <pogo:Name>Staff Sergeant</pogo:Name>\r\n                  <pogo:Retired>false</pogo:Retired>\r\n                </Entry>\r\n                <Entry xmlns:pogo="http://guidewire.com/gw/api/webservice/typelisttools">\r\n                  <pogo:Code>100</pogo:Code>\r\n                  <pogo:Description>Surgeon Captain</pogo:Description>\r\n                  <pogo:Name>Surgeon Captain</pogo:Name>\r\n                  <pogo:Retired>false</pogo:Retired>\r\n                </Entry>\r\n                <Entry xmlns:pogo="http://guidewire.com/gw/api/webservice/typelisttools">\r\n                  <pogo:Code>083</pogo:Code>\r\n                  <pogo:Description>The Duke of</pogo:Description>\r\n                  <pogo:Name>The Duke of</pogo:Name>\r\n                  <pogo:Retired>false</pogo:Retired>\r\n                </Entry>\r\n                <Entry xmlns:pogo="http://guidewire.com/gw/api/webservice/typelisttools">\r\n                  <pogo:Code>082</pogo:Code>\r\n                  <pogo:Description>The Earl of</pogo:Description>\r\n                  <pogo:Name>The Earl of</pogo:Name>\r\n                  <pogo:Retired>false</pogo:Retired>\r\n                </Entry>\r\n                <Entry xmlns:pogo="http://guidewire.com/gw/api/webservice/typelisttools">\r\n                  <pogo:Code>073</pogo:Code>\r\n                  <pogo:Description>The Honourable Lady</pogo:Description>\r\n                  <pogo:Name>The Honourable Lady</pogo:Name>\r\n                  <pogo:Retired>false</pogo:Retired>\r\n                </Entry>\r\n                <Entry xmlns:pogo="http://guidewire.com/gw/api/webservice/typelisttools">\r\n                  <pogo:Code>086</pogo:Code>\r\n                  <pogo:Description>The Honourable Miss</pogo:Description>\r\n                  <pogo:Name>The Honourable Miss</pogo:Name>\r\n                  <pogo:Retired>false</pogo:Retired>\r\n                </Entry>\r\n                <Entry xmlns:pogo="http://guidewire.com/gw/api/webservice/typelisttools">\r\n                  <pogo:Code>074</pogo:Code>\r\n                  <pogo:Description>The Honourable Mrs</pogo:Description>\r\n                  <pogo:Name>The Honourable Mrs</pogo:Name>\r\n                  <pogo:Retired>false</pogo:Retired>\r\n                </Entry>\r\n                <Entry xmlns:pogo="http://guidewire.com/gw/api/webservice/typelisttools">\r\n                  <pogo:Code>075</pogo:Code>\r\n                  <pogo:Description>The Honourable Sir</pogo:Description>\r\n                  <pogo:Name>The Honourable Sir</pogo:Name>\r\n                  <pogo:Retired>false</pogo:Retired>\r\n                </Entry>\r\n                <Entry xmlns:pogo="http://guidewire.com/gw/api/webservice/typelisttools">\r\n                  <pogo:Code>084</pogo:Code>\r\n                  <pogo:Description>The Marquess of</pogo:Description>\r\n                  <pogo:Name>The Marquess of</pogo:Name>\r\n                  <pogo:Retired>false</pogo:Retired>\r\n                </Entry>\r\n                <Entry xmlns:pogo="http://guidewire.com/gw/api/webservice/typelisttools">\r\n                  <pogo:Code>066</pogo:Code>\r\n                  <pogo:Description>The Most Reverend</pogo:Description>\r\n                  <pogo:Name>The Most Reverend</pogo:Name>\r\n                  <pogo:Retired>false</pogo:Retired>\r\n                </Entry>\r\n                <Entry xmlns:pogo="http://guidewire.com/gw/api/webservice/typelisttools">\r\n                  <pogo:Code>031</pogo:Code>\r\n                  <pogo:Description>The Right Honourable</pogo:Description>\r\n                  <pogo:Name>The Right Honourable</pogo:Name>\r\n                  <pogo:Retired>false</pogo:Retired>\r\n                </Entry>\r\n                <Entry xmlns:pogo="http://guidewire.com/gw/api/webservice/typelisttools">\r\n                  <pogo:Code>067</pogo:Code>\r\n                  <pogo:Description>The Venerable</pogo:Description>\r\n                  <pogo:Name>The Venerable</pogo:Name>\r\n                  <pogo:Retired>false</pogo:Retired>\r\n                </Entry>\r\n                <Entry xmlns:pogo="http://guidewire.com/gw/api/webservice/typelisttools">\r\n                  <pogo:Code>088</pogo:Code>\r\n                  <pogo:Description>Trustees Of</pogo:Description>\r\n                  <pogo:Name>Trustees Of</pogo:Name>\r\n                  <pogo:Retired>false</pogo:Retired>\r\n                </Entry>\r\n                <Entry xmlns:pogo="http://guidewire.com/gw/api/webservice/typelisttools">\r\n                  <pogo:Code>033</pogo:Code>\r\n                  <pogo:Description>Very Reverend</pogo:Description>\r\n                  <pogo:Name>Very Reverend</pogo:Name>\r\n                  <pogo:Retired>false</pogo:Retired>\r\n                </Entry>\r\n                <Entry xmlns:pogo="http://guidewire.com/gw/api/webservice/typelisttools">\r\n                  <pogo:Code>102</pogo:Code>\r\n                  <pogo:Description>Vice Admiral</pogo:Description>\r\n                  <pogo:Name>Vice Admiral</pogo:Name>\r\n                  <pogo:Retired>false</pogo:Retired>\r\n                </Entry>\r\n                <Entry xmlns:pogo="http://guidewire.com/gw/api/webservice/typelisttools">\r\n                  <pogo:Code>065</pogo:Code>\r\n                  <pogo:Description>Viscount</pogo:Description>\r\n                  <pogo:Name>Viscount</pogo:Name>\r\n                  <pogo:Retired>false</pogo:Retired>\r\n                </Entry>\r\n                <Entry xmlns:pogo="http://guidewire.com/gw/api/webservice/typelisttools">\r\n                  <pogo:Code>062</pogo:Code>\r\n                  <pogo:Description>Warrant Officer 1</pogo:Description>\r\n                  <pogo:Name>Warrant Officer 1</pogo:Name>\r\n                  <pogo:Retired>false</pogo:Retired>\r\n                </Entry>\r\n                <Entry xmlns:pogo="http://guidewire.com/gw/api/webservice/typelisttools">\r\n                  <pogo:Code>063</pogo:Code>\r\n                  <pogo:Description>Warrant Officer 2</pogo:Description>\r\n                  <pogo:Name>Warrant Officer 2</pogo:Name>\r\n                  <pogo:Retired>false</pogo:Retired>\r\n                </Entry>\r\n                <Entry xmlns:pogo="http://guidewire.com/gw/api/webservice/typelisttools">\r\n                  <pogo:Code>026</pogo:Code>\r\n                  <pogo:Description>Wing Commander</pogo:Description>\r\n                  <pogo:Name>Wing Commander</pogo:Name>\r\n                  <pogo:Retired>false</pogo:Retired>\r\n                </Entry>\r\n              </return>\r\n            </getTypelistValuesResponse>\r\n          </soap12:Body>\r\n        </soap12:Envelope>\r\n      </set-body>\r\n    </return-response>\r\n  </inbound>\r\n  <backend>\r\n    <base />\r\n  </backend>\r\n  <outbound>\r\n    <base />\r\n  </outbound>\r\n  <on-error>\r\n    <base />\r\n  </on-error>\r\n</policies>'
    format: 'xml'
  }
  dependsOn: [

    service_mfapim_name_test
    service_mfapim_name_resource
  ]
}

resource service_mfapim_name_test_mocksendrequest_policy 'Microsoft.ApiManagement/service/apis/operations/policies@2021-12-01-preview' = {
  parent: service_mfapim_name_test_mocksendrequest
  name: 'policy'
  properties: {
    value: '<!--\r\n    IMPORTANT:\r\n    - Policy elements can appear only within the <inbound>, <outbound>, <backend> section elements.\r\n    - To apply a policy to the incoming request (before it is forwarded to the backend service), place a corresponding policy element within the <inbound> section element.\r\n    - To apply a policy to the outgoing response (before it is sent back to the caller), place a corresponding policy element within the <outbound> section element.\r\n    - To add a policy, place the cursor at the desired insertion point and select a policy from the sidebar.\r\n    - To remove a policy, delete the corresponding policy statement from the policy document.\r\n    - Position the <base> element within a section element to inherit all policies from the corresponding section element in the enclosing scope.\r\n    - Remove the <base> element to prevent inheriting policies from the corresponding section element in the enclosing scope.\r\n    - Policies are applied in the order of their appearance, from the top down.\r\n    - Comments within policy elements are not supported and may disappear. Place your comments between policy elements or at a higher level scope.\r\n-->\r\n<policies>\r\n  <inbound>\r\n    <base />\r\n    <return-response>\r\n      <set-status code="200" reason="OK" />\r\n      <set-header name="Content-Type" exists-action="override">\r\n        <value>text/xml</value>\r\n      </set-header>\r\n      <set-body template="liquid">\r\n        <message1>\r\n          <conditionValue>true</conditionValue>\r\n          <value1>MESSAGE1_TEST1</value1>\r\n          <value2>MESSAGE1_TEST2</value2>\r\n          <value3>MESSAGE1_TEST3</value3>\r\n        </message1>\r\n      </set-body>\r\n    </return-response>\r\n  </inbound>\r\n  <backend>\r\n    <base />\r\n  </backend>\r\n  <outbound>\r\n    <base />\r\n  </outbound>\r\n  <on-error>\r\n    <base />\r\n  </on-error>\r\n</policies>'
    format: 'xml'
  }
  dependsOn: [

    service_mfapim_name_test
    service_mfapim_name_resource
  ]
}

resource service_mfapim_name_test_mockxml_policy 'Microsoft.ApiManagement/service/apis/operations/policies@2021-12-01-preview' = {
  parent: service_mfapim_name_test_mockxml
  name: 'policy'
  properties: {
    value: '<!--\r\n    IMPORTANT:\r\n    - Policy elements can appear only within the <inbound>, <outbound>, <backend> section elements.\r\n    - To apply a policy to the incoming request (before it is forwarded to the backend service), place a corresponding policy element within the <inbound> section element.\r\n    - To apply a policy to the outgoing response (before it is sent back to the caller), place a corresponding policy element within the <outbound> section element.\r\n    - To add a policy, place the cursor at the desired insertion point and select a policy from the sidebar.\r\n    - To remove a policy, delete the corresponding policy statement from the policy document.\r\n    - Position the <base> element within a section element to inherit all policies from the corresponding section element in the enclosing scope.\r\n    - Remove the <base> element to prevent inheriting policies from the corresponding section element in the enclosing scope.\r\n    - Policies are applied in the order of their appearance, from the top down.\r\n    - Comments within policy elements are not supported and may disappear. Place your comments between policy elements or at a higher level scope.\r\n-->\r\n<policies>\r\n  <inbound>\r\n    <base />\r\n    <return-response>\r\n      <set-status code="200" reason="OK" />\r\n      <set-header name="Content-Type" exists-action="override">\r\n        <value>text/xml</value>\r\n      </set-header>\r\n      <set-body template="liquid">\r\n        <soap12:Envelope xmlns:soap12="http://www.w3.org/2003/05/soap-envelope">\r\n          <soap12:Body>\r\n            <retrievePolicyResponse xmlns="http://guidewire.com/pc/ws/gw/webservice/pc/pc800/ccintegration/CCPolicySearchIntegration">\r\n              <return>\r\n                <tns:Envelope xmlns:tns="http://guidewire.com/pc/ccintegration" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance">\r\n                  <tns:CCAddress AddressBookUID="ab:226883" AddressLine1="2 Robert Street" AddressLine2="Ely" AddressType="home" City="CARDIFF" Country="GB" PostalCode="CF55AA" ID="_1" />\r\n                  <tns:CCAddress AddressLine1="2 Robert Street" AddressLine2="Ely" AddressType="home" City="CARDIFF" Country="GB" PostalCode="CF55AA" ID="_3" />\r\n                  <tns:CCContact CellPhone="false" DateOfBirth="1989-05-01T00:00:00+01:00" FirstName="Louis" Gender="M" LastName="Mousehunt" LicenseState="GB" MaritalStatus="M" Prefix="003_Mr" DriverLicenseTestDate_Ext="2007-08-27T00:00:00+01:00" DriverLicenseType_Ext="F_FM" ID="_0" WorkPhone=" FaxPhone=" HomePhone="false" TaxStatus="unconfirmed" EmailAddress2="a61820db-ec63-403b-88ba-8ff1d29356d1@gmail.com" EmailAddress1="Bottle07@gmail.com" PrimaryPhone="home" AddressBookUID="wardev:325918" PolicySystemID="wardev:370462" Preferred="false" xsi:type="tns:CCPerson">\r\n                    <tns:AllAddresses>_1</tns:AllAddresses>\r\n                    <tns:PrimaryAddress>_1</tns:PrimaryAddress>\r\n                    <tns:DriverInfo_Ext>\r\n                      <tns:MedicalConditions Description="No" DateDiagnozed="2021-10-26T00:00:00+01:00" />\r\n                    </tns:DriverInfo_Ext>\r\n                  </tns:CCContact>\r\n                  <tns:CCPolicy Account="10000258390" Currency="gbp" EffectiveDate="2021-10-26T00:01:00+01:00" ExpirationDate="2022-10-25T00:01:00+01:00" OriginalEffectiveDate="2021-10-26T00:00:00+01:00" PolicyNumber="20000170191" PolicySuffix="1" PolicySystemPeriodID="1345947" PolicyType="PrivateCar_Ext" ProducerCode="Confused: Inspop" Status="inforce" TotalProperties="0" TotalVehicles="1" ProductVariation_Ext="tpft" PolicyBrand_Ext="HD" AncillaryInfo_Ext="MERCEDES-BENZ E250 SPORT ED125 CDI BLUE (2012) VK11EOT (No coverages)" Underwriter_Ext="Advantage" AccountName_Ext="Louis Mousehunt" AlternatePolicyNumber_Ext="22037PC0112842" StaffOrFamilyAndFriends_Ext="None">\r\n                    <tns:CoveredParty>_0</tns:CoveredParty>\r\n                    <tns:Insured>_0</tns:Insured>\r\n                    <tns:RiskUnits VehicleOwner_Ext="1_PR" AnnualMileage_Ext="9000" NoClaimYears_Ext="6" ProtectedNoClaim_Ext="true" VehicleGaraged_Ext="F" RUNumber="1" Description="MERCEDES-BENZ E250 SPORT ED125 CDI BLUE (2012) VK11EOT" PolicySystemID="entity.HDPrivateCar_Ext:2336429" ID="_4" xsi:type="tns:CCVehicleRU">\r\n                      <tns:Coverages Currency="gbp" EffectiveDate="2021-10-26T00:01:00+01:00" ExpirationDate="2022-10-26T00:01:00+01:00" PolicySystemID="entity.HDPrivateCarCov_Ext:20438251" Type="PCAccidentalDamageCov_Ext" xsi:type="tns:CCVehicleCoverage">\r\n                        <tns:CovTerms FinancialAmount="195.0000 gbp" PolicySystemID="entity.HDPrivateCarCov_Ext:20438251.PCAccDmgCompExcessCT_Ext" CovTermOrder="100" CovTermPattern="PCAccDmgCompExcessCT_Ext" xsi:type="tns:CCFinancialCovTerm" />\r\n                        <tns:CovTerms FinancialAmount="200.0000 gbp" PolicySystemID="entity.HDPrivateCarCov_Ext:20438251.PCAccDmgVolExcessCT_Ext" CovTermOrder="300" CovTermPattern="PCAccDmgVolExcessCT_Ext" xsi:type="tns:CCFinancialCovTerm" />\r\n                        <tns:CovTerms PolicySystemID="entity.HDPrivateCarCov_Ext:20438251.PCAccDmgYngInexpDrivExcessCT_Ext" CovTermOrder="400" CovTermPattern="PCAccDmgYngInexpDrivExcessCT_Ext" xsi:type="tns:CCFinancialCovTerm" />\r\n                      </tns:Coverages>\r\n                      <tns:Coverages Currency="gbp" EffectiveDate="2021-10-26T00:01:00+01:00" ExpirationDate="2022-10-26T00:01:00+01:00" PolicySystemID="entity.HDPrivateCarCov_Ext:20438252" Type="PCAudioSatNavCov_Ext" xsi:type="tns:CCVehicleCoverage">\r\n                        <tns:CovTerms FinancialAmount="300.0000 gbp" PolicySystemID="entity.HDPrivateCarCov_Ext:20438252.PCAudSatNavLimitPostRegCT_Ext" CovTermOrder="600" CovTermPattern="PCAudSatNavLimitPostRegCT_Ext" xsi:type="tns:CCFinancialCovTerm" />\r\n                        <tns:CovTerms NumericValue="1" Units="other" PolicySystemID="entity.HDPrivateCarCov_Ext:20438252.PCAudSatNavLimitFirstRegCT_Ext" CovTermOrder="700" CovTermPattern="PCAudSatNavLimitFirstRegCT_Ext" xsi:type="tns:CCNumericCovTerm" />\r\n                      </tns:Coverages>\r\n                      <tns:Coverages Currency="gbp" EffectiveDate="2021-10-26T00:01:00+01:00" ExpirationDate="2022-10-26T00:01:00+01:00" PolicySystemID="entity.HDPrivateCarCov_Ext:20435199" Type="PCChildSeatCov_Ext" xsi:type="tns:CCVehicleCoverage">\r\n                        <tns:CovTerms FinancialAmount="300.0000 gbp" PolicySystemID="entity.HDPrivateCarCov_Ext:20435199.PCChildSeatLimitCT_Ext" CovTermOrder="200" CovTermPattern="PCChildSeatLimitCT_Ext" xsi:type="tns:CCFinancialCovTerm" />\r\n                      </tns:Coverages>\r\n                      <tns:Coverages Currency="gbp" EffectiveDate="2021-10-26T00:01:00+01:00" ExpirationDate="2022-10-26T00:01:00+01:00" PolicySystemID="entity.HDPrivateCarCov_Ext:20435200" Type="PCCourtesyCar_Ext" xsi:type="tns:CCVehicleCoverage">\r\n                        <tns:CovTerms PolicySystemID="entity.HDPrivateCarCov_Ext:20435200.PCRepairDurationCT_Ext" CovTermOrder="100" CovTermPattern="PCRepairDurationCT_Ext" xsi:type="tns:CCClassificationCovTerm" />\r\n                      </tns:Coverages>\r\n                      <tns:Coverages Currency="gbp" EffectiveDate="2021-10-26T00:01:00+01:00" ExpirationDate="2022-10-26T00:01:00+01:00" PolicySystemID="entity.HDPrivateCarCov_Ext:20435201" Type="PCExtendedTerritorialLimitsCov_Ext" xsi:type="tns:CCVehicleCoverage">\r\n                        <tns:CovTerms NumericValue="90.0000" Units="days" PolicySystemID="entity.HDPrivateCarCov_Ext:20435201.PCExtTerrDaysCT_Ext" CovTermOrder="100" CovTermPattern="PCExtTerrDaysCT_Ext" xsi:type="tns:CCNumericCovTerm" />\r\n                      </tns:Coverages>\r\n                      <tns:Coverages Currency="gbp" EffectiveDate="2021-10-26T00:01:00+01:00" ExpirationDate="2022-10-26T00:01:00+01:00" PolicySystemID="entity.HDPrivateCarCov_Ext:20435202" Type="PCGlassDamageCov_Ext" xsi:type="tns:CCVehicleCoverage">\r\n                        <tns:CovTerms FinancialAmount="115.0000 gbp" PolicySystemID="entity.HDPrivateCarCov_Ext:20435202.PCGlassDmgWreplacementdmgCT_Ext" CovTermOrder="400" CovTermPattern="PCGlassDmgWreplacementdmgCT_Ext" xsi:type="tns:CCFinancialCovTerm" />\r\n                        <tns:CovTerms FinancialAmount="25.0000 gbp" PolicySystemID="entity.HDPrivateCarCov_Ext:20435202.PCGlassDmgWrepairdmgCT_Ext" CovTermOrder="500" CovTermPattern="PCGlassDmgWrepairdmgCT_Ext" xsi:type="tns:CCFinancialCovTerm" />\r\n                      </tns:Coverages>\r\n                      <tns:Coverages Currency="gbp" EffectiveDate="2021-10-26T00:01:00+01:00" ExpirationDate="2022-10-26T00:01:00+01:00" PolicySystemID="entity.HDPrivateCarCov_Ext:20435203" Type="PCLiabilityThirdPartiesCov_Ext" xsi:type="tns:CCVehicleCoverage">\r\n                        <tns:CovTerms FinancialAmount="5000000.0000 gbp" PolicySystemID="entity.HDPrivateCarCov_Ext:20435203.PCLiabilitiesTPLimitLgExpCT_Ext" CovTermOrder="100" CovTermPattern="PCLiabilitiesTPLimitLgExpCT_Ext" xsi:type="tns:CCFinancialCovTerm" />\r\n                        <tns:CovTerms FinancialAmount="20000000.0000 gbp" PolicySystemID="entity.HDPrivateCarCov_Ext:20435203.PCLiabilitiesTPLimitPropDmgCT_Ext" CovTermOrder="200" CovTermPattern="PCLiabilitiesTPLimitPropDmgCT_Ext" xsi:type="tns:CCFinancialCovTerm" />\r\n                      </tns:Coverages>\r\n                      <tns:Coverages Currency="gbp" EffectiveDate="2021-10-26T00:01:00+01:00" ExpirationDate="2022-10-26T00:01:00+01:00" PolicySystemID="entity.HDPrivateCarCov_Ext:20435204" Type="PCLossFireTheftCov_Ext" xsi:type="tns:CCVehicleCoverage">\r\n                        <tns:CovTerms FinancialAmount="195.0000 gbp" PolicySystemID="entity.HDPrivateCarCov_Ext:20435204.PCLossFireTheftCompExcessCT_Ext" CovTermOrder="100" CovTermPattern="PCLossFireTheftCompExcessCT_Ext" xsi:type="tns:CCFinancialCovTerm" />\r\n                        <tns:CovTerms FinancialAmount="200.0000 gbp" PolicySystemID="entity.HDPrivateCarCov_Ext:20435204.PCLossFireTheftVolExcessCT_Ext" CovTermOrder="300" CovTermPattern="PCLossFireTheftVolExcessCT_Ext" xsi:type="tns:CCFinancialCovTerm" />\r\n                      </tns:Coverages>\r\n                      <tns:Coverages Currency="gbp" EffectiveDate="2021-10-26T00:01:00+01:00" ExpirationDate="2022-10-26T00:01:00+01:00" PolicySystemID="entity.HDPrivateCarCov_Ext:20435205" Type="PCMedicalExpensesCov_Ext" xsi:type="tns:CCVehicleCoverage">\r\n                        <tns:CovTerms FinancialAmount="500.0000 gbp" PolicySystemID="entity.HDPrivateCarCov_Ext:20435205.PCMedExpLimitCTEXT" CovTermOrder="100" CovTermPattern="PCMedExpLimitCTEXT" xsi:type="tns:CCFinancialCovTerm" />\r\n                      </tns:Coverages>\r\n                      <tns:Coverages Currency="gbp" EffectiveDate="2021-10-26T00:01:00+01:00" ExpirationDate="2022-10-26T00:01:00+01:00" PolicySystemID="entity.HDPrivateCarCov_Ext:20435206" Type="PCNewCarReplacementCov_Ext" xsi:type="tns:CCVehicleCoverage">\r\n                        <tns:CovTerms PolicySystemID="entity.HDPrivateCarCov_Ext:20435206.PCNewCarReplacementCovCT_Ext" CovTermOrder="100" CovTermPattern="PCNewCarReplacementCovCT_Ext" xsi:type="tns:CCClassificationCovTerm" />\r\n                      </tns:Coverages>\r\n                      <tns:Coverages Currency="gbp" EffectiveDate="2021-10-26T00:01:00+01:00" ExpirationDate="2022-10-26T00:01:00+01:00" PolicySystemID="entity.HDPrivateCarCov_Ext:20435207" Type="PCOvernightAccoTransCov_Ext" xsi:type="tns:CCVehicleCoverage">\r\n                        <tns:CovTerms FinancialAmount="50.0000 gbp" PolicySystemID="entity.HDPrivateCarCov_Ext:20435207.PCOvnghtAccomoOnwdTransLimitByPersonCT_Ext" CovTermOrder="200" CovTermPattern="PCOvnghtAccomoOnwdTransLimitByPersonCT_Ext" xsi:type="tns:CCFinancialCovTerm" />\r\n                        <tns:CovTerms FinancialAmount="250.0000 gbp" PolicySystemID="entity.HDPrivateCarCov_Ext:20435207.PCOvnghtAccomoOnwdTransLimitByAccidentCT_Ext" CovTermOrder="300" CovTermPattern="PCOvnghtAccomoOnwdTransLimitByAccidentCT_Ext" xsi:type="tns:CCFinancialCovTerm" />\r\n                      </tns:Coverages>\r\n                      <tns:Coverages Currency="gbp" EffectiveDate="2021-10-26T00:01:00+01:00" ExpirationDate="2022-10-26T00:01:00+01:00" PolicySystemID="entity.HDPrivateCarCov_Ext:20435208" Type="PCPersonalAccidentCov_Ext" xsi:type="tns:CCVehicleCoverage">\r\n                        <tns:CovTerms FinancialAmount="5000.0000 gbp" PolicySystemID="entity.HDPrivateCarCov_Ext:20435208.PCPersonalAccCovLimitCT_Ext" CovTermOrder="100" CovTermPattern="PCPersonalAccCovLimitCT_Ext" xsi:type="tns:CCFinancialCovTerm" />\r\n                      </tns:Coverages>\r\n                      <tns:Coverages Currency="gbp" EffectiveDate="2021-10-26T00:01:00+01:00" ExpirationDate="2022-10-26T00:01:00+01:00" PolicySystemID="entity.HDPrivateCarCov_Ext:20435209" Type="PCPersonalBlngsCov_Ext" xsi:type="tns:CCVehicleCoverage">\r\n                        <tns:CovTerms FinancialAmount="300.0000 gbp" PolicySystemID="entity.HDPrivateCarCov_Ext:20435209.PCPersonalBelongingsLimitCT_Ext" CovTermOrder="100" CovTermPattern="PCPersonalBelongingsLimitCT_Ext" xsi:type="tns:CCFinancialCovTerm" />\r\n                      </tns:Coverages>\r\n                      <tns:Coverages Currency="gbp" EffectiveDate="2021-10-26T00:01:00+01:00" ExpirationDate="2022-10-26T00:01:00+01:00" PolicySystemID="entity.HDPrivateCarCov_Ext:20435210" Type="PCTheftKeysTransmitterCov_Ext" xsi:type="tns:CCVehicleCoverage">\r\n                        <tns:CovTerms FinancialAmount="195.0000 gbp" PolicySystemID="entity.HDPrivateCarCov_Ext:20435210.PCTheftKeyTransCompFnTheftCT_Ext" CovTermOrder="200" CovTermPattern="PCTheftKeyTransCompFnTheftCT_Ext" xsi:type="tns:CCFinancialCovTerm" />\r\n                        <tns:CovTerms FinancialAmount="200.0000 gbp" PolicySystemID="entity.HDPrivateCarCov_Ext:20435210.PCTheftKeyTransVolExcessCT_Ext" CovTermOrder="300" CovTermPattern="PCTheftKeyTransVolExcessCT_Ext" xsi:type="tns:CCFinancialCovTerm" />\r\n                      </tns:Coverages>\r\n                      <tns:Coverages Currency="gbp" EffectiveDate="2021-10-26T00:01:00+01:00" ExpirationDate="2022-10-26T00:01:00+01:00" PolicySystemID="entity.HDPrivateCarCov_Ext:20435211" Type="PCUninsuredDriverPromCov_Ext" xsi:type="tns:CCVehicleCoverage">\r\n                        <tns:CovTerms PolicySystemID="entity.HDPrivateCarCov_Ext:20435211.PCUninsDrivPromNCDCT_Ext" CovTermOrder="200" CovTermPattern="PCUninsDrivPromNCDCT_Ext" xsi:type="tns:CCClassificationCovTerm" />\r\n                      </tns:Coverages>\r\n                      <tns:Coverages Currency="gbp" EffectiveDate="2021-10-26T00:01:00+01:00" ExpirationDate="2022-10-26T00:01:00+01:00" PolicySystemID="entity.HDPrivateCarCov_Ext:20435212" Type="PCVandalismPromiseCov_Ext" xsi:type="tns:CCVehicleCoverage">\r\n                        <tns:CovTerms PolicySystemID="entity.HDPrivateCarCov_Ext:20435212.PCVandPromNCDUnaffCT_Ext" CovTermOrder="200" CovTermPattern="PCVandPromNCDUnaffCT_Ext" xsi:type="tns:CCClassificationCovTerm" />\r\n                      </tns:Coverages>\r\n                      <tns:Coverages Currency="gbp" EffectiveDate="2021-10-26T00:01:00+01:00" ExpirationDate="2022-10-26T00:01:00+01:00" PolicySystemID="entity.HDPrivateCarCov_Ext:20438556" Type="PCDrivingOtherCarsCov_Ext" xsi:type="tns:CCVehicleCoverage">\r\n                        <tns:CovTerms PolicySystemID="entity.HDPrivateCarCov_Ext:20438556.PCDrivingOtherCarsCovCT_Ext" CovTermOrder="100" CovTermPattern="PCDrivingOtherCarsCovCT_Ext" xsi:type="tns:CCClassificationCovTerm" />\r\n                      </tns:Coverages>\r\n                      <tns:Vehicle LicensePlate="VK11EOT" Make="MERCEDES-BENZ" Manufacturer="MERCEDES-BENZ" Model="E250 SPORT ED125 CDI BLUE" PolicySystemID="entity.HDPrivateCar_Ext:2336429" State="GB" Style="other" Year="2012" NumberOfSeats_Ext="5" CC_Ext="2143" VehKeptOverNight_Ext="F" RightOrLeftHand_Ext="R" IsTemporaryVehicle_Ext="false" ClassOfUse_Ext="01" CCProductVariation_Ext="tpft" VehicleIdentifier_Ext="2336429" />\r\n                    </tns:RiskUnits>\r\n                    <tns:Deductibles_Ext DeductibleType="accidentaldamage" Amount="195.0000" VehicleRU="_4" />\r\n                    <tns:Deductibles_Ext DeductibleType="voluntary" Amount="200" VehicleRU="_4" />\r\n                    <tns:ListedDrivers_Ext Driver="_0" VehicleRU="_4" PrimaryDriver="true" IsTemporaryDriver="false" />\r\n                  </tns:CCPolicy>\r\n                </tns:Envelope>\r\n              </return>\r\n            </retrievePolicyResponse>\r\n          </soap12:Body>\r\n        </soap12:Envelope>\r\n      </set-body>\r\n    </return-response>\r\n  </inbound>\r\n  <backend>\r\n    <base />\r\n  </backend>\r\n  <outbound>\r\n    <base />\r\n  </outbound>\r\n  <on-error>\r\n    <base />\r\n  </on-error>\r\n</policies>'
    format: 'xml'
  }
  dependsOn: [

    service_mfapim_name_test
    service_mfapim_name_resource
  ]
}

resource service_mfapim_name_test_multiquery_policy 'Microsoft.ApiManagement/service/apis/operations/policies@2021-12-01-preview' = {
  parent: service_mfapim_name_test_multiquery
  name: 'policy'
  properties: {
    value: '<!--\r\n    IMPORTANT:\r\n    - Policy elements can appear only within the <inbound>, <outbound>, <backend> section elements.\r\n    - To apply a policy to the incoming request (before it is forwarded to the backend service), place a corresponding policy element within the <inbound> section element.\r\n    - To apply a policy to the outgoing response (before it is sent back to the caller), place a corresponding policy element within the <outbound> section element.\r\n    - To add a policy, place the cursor at the desired insertion point and select a policy from the sidebar.\r\n    - To remove a policy, delete the corresponding policy statement from the policy document.\r\n    - Position the <base> element within a section element to inherit all policies from the corresponding section element in the enclosing scope.\r\n    - Remove the <base> element to prevent inheriting policies from the corresponding section element in the enclosing scope.\r\n    - Policies are applied in the order of their appearance, from the top down.\r\n    - Comments within policy elements are not supported and may disappear. Place your comments between policy elements or at a higher level scope.\r\n-->\r\n<policies>\r\n  <inbound>\r\n    <trace source="this">\r\n            @(context.Request.Url.Query.GetValueOrDefault("claimState"))\r\n        </trace>\r\n    <base />\r\n  </inbound>\r\n  <backend>\r\n    <base />\r\n  </backend>\r\n  <outbound>\r\n    <base />\r\n  </outbound>\r\n  <on-error>\r\n    <base />\r\n  </on-error>\r\n</policies>'
    format: 'xml'
  }
  dependsOn: [

    service_mfapim_name_test
    service_mfapim_name_resource
  ]
}

resource service_mfapim_name_test_multivalueparsing_policy 'Microsoft.ApiManagement/service/apis/operations/policies@2021-12-01-preview' = {
  parent: service_mfapim_name_test_multivalueparsing
  name: 'policy'
  properties: {
    value: '<!--\r\n    IMPORTANT:\r\n    - Policy elements can appear only within the <inbound>, <outbound>, <backend> section elements.\r\n    - To apply a policy to the incoming request (before it is forwarded to the backend service), place a corresponding policy element within the <inbound> section element.\r\n    - To apply a policy to the outgoing response (before it is sent back to the caller), place a corresponding policy element within the <outbound> section element.\r\n    - To add a policy, place the cursor at the desired insertion point and select a policy from the sidebar.\r\n    - To remove a policy, delete the corresponding policy statement from the policy document.\r\n    - Position the <base> element within a section element to inherit all policies from the corresponding section element in the enclosing scope.\r\n    - Remove the <base> element to prevent inheriting policies from the corresponding section element in the enclosing scope.\r\n    - Policies are applied in the order of their appearance, from the top down.\r\n    - Comments within policy elements are not supported and may disappear. Place your comments between policy elements or at a higher level scope.\r\n-->\r\n<policies>\r\n  <inbound>\r\n    <base />\r\n    <set-variable name="searchPolicyResponseBodyXml" value="@(context.Request.Body.As&lt;string&gt;() )" />\r\n    <set-variable name="psRespData" value="@{&#xA;            var xdoc = XDocument.Parse((string)(context.Variables[&quot;searchPolicyResponseBodyXml&quot;]));&#xA;            var obj = new JObject();&#xA;            obj[&quot;brokerName&quot;] = xdoc.Descendants().Where(p =&gt; p.Name.LocalName == &quot;Entry&quot;).Attributes(&quot;Underwriter_Ext&quot;).FirstOrDefault().Value;&#xA;            obj[&quot;pNumbFromSearchResp&quot;] = xdoc.Descendants().Where(p =&gt; p.Name.LocalName == &quot;Entry&quot;).Attributes(&quot;PolicyNumber&quot;).FirstOrDefault().Value;&#xA;            var addrLine1 = xdoc.Descendants().Where(p =&gt; p.Name.LocalName == &quot;Entry&quot;).Attributes(&quot;AddressLine1&quot;).FirstOrDefault().Value;&#xA;            var city = xdoc.Descendants().Where(p =&gt; p.Name.LocalName == &quot;Entry&quot;).Attributes(&quot;City&quot;).FirstOrDefault().Value;&#xA;            obj[&quot;holderAddress&quot;] = addrLine1 + &quot;, &quot; + city;&#xA;            obj[&quot;holderPostcode&quot;] = xdoc.Descendants().Where(p =&gt; p.Name.LocalName == &quot;Entry&quot;).Attributes(&quot;PostalCode&quot;).FirstOrDefault().Value;&#xA;            return obj;&#xA;        }" />\r\n    <set-variable name="extractedValue" value="@((string)((JObject)context.Variables[&quot;psRespData&quot;])[&quot;holderAddress&quot;] )" />\r\n    <return-response>\r\n      <set-status code="200" reason="OK" />\r\n      <set-body template="liquid">\r\n                {% assign vars = context.Variables["psRespData"] %}\r\n\t\t\t\t<Body><retrievePolicy><singleVariable>{{context.Variables[\'extractedValue\']}}</singleVariable><variableProperty>{{vars["holderAddress"]}}</variableProperty></retrievePolicy></Body></set-body>\r\n    </return-response>\r\n  </inbound>\r\n  <backend>\r\n    <base />\r\n  </backend>\r\n  <outbound>\r\n    <base />\r\n  </outbound>\r\n  <on-error>\r\n    <base />\r\n  </on-error>\r\n</policies>'
    format: 'xml'
  }
  dependsOn: [

    service_mfapim_name_test
    service_mfapim_name_resource
  ]
}

resource service_mfapim_name_test_post_ai_metric_policy 'Microsoft.ApiManagement/service/apis/operations/policies@2021-12-01-preview' = {
  parent: service_mfapim_name_test_post_ai_metric
  name: 'policy'
  properties: {
    value: '<!--\r\n    IMPORTANT:\r\n    - Policy elements can appear only within the <inbound>, <outbound>, <backend> section elements.\r\n    - To apply a policy to the incoming request (before it is forwarded to the backend service), place a corresponding policy element within the <inbound> section element.\r\n    - To apply a policy to the outgoing response (before it is sent back to the caller), place a corresponding policy element within the <outbound> section element.\r\n    - To add a policy, place the cursor at the desired insertion point and select a policy from the sidebar.\r\n    - To remove a policy, delete the corresponding policy statement from the policy document.\r\n    - Position the <base> element within a section element to inherit all policies from the corresponding section element in the enclosing scope.\r\n    - Remove the <base> element to prevent inheriting policies from the corresponding section element in the enclosing scope.\r\n    - Policies are applied in the order of their appearance, from the top down.\r\n    - Comments within policy elements are not supported and may disappear. Place your comments between policy elements or at a higher level scope.\r\n-->\r\n<policies>\r\n  <inbound>\r\n    <emit-metric name="Request" value="1" namespace="my-metrics">\r\n      <dimension name="RequestTime" value="@(DateTime.UtcNow.ToString(&quot;yyyy-MM-ddTHH:mm:ss.fff&quot;))" />\r\n      <dimension name="SampleId" value="@(context.Request.MatchedParameters[&quot;id&quot;])" />\r\n    </emit-metric>\r\n    <return-response>\r\n      <set-status code="200" reason="OK" />\r\n    </return-response>\r\n    <base />\r\n  </inbound>\r\n  <backend>\r\n    <base />\r\n  </backend>\r\n  <outbound>\r\n    <base />\r\n  </outbound>\r\n  <on-error>\r\n    <base />\r\n  </on-error>\r\n</policies>'
    format: 'xml'
  }
  dependsOn: [

    service_mfapim_name_test
    service_mfapim_name_resource
  ]
}

resource service_mfapim_name_test_selectiveliquid_policy 'Microsoft.ApiManagement/service/apis/operations/policies@2021-12-01-preview' = {
  parent: service_mfapim_name_test_selectiveliquid
  name: 'policy'
  properties: {
    value: '<!--\r\n    IMPORTANT:\r\n    - Policy elements can appear only within the <inbound>, <outbound>, <backend> section elements.\r\n    - To apply a policy to the incoming request (before it is forwarded to the backend service), place a corresponding policy element within the <inbound> section element.\r\n    - To apply a policy to the outgoing response (before it is sent back to the caller), place a corresponding policy element within the <outbound> section element.\r\n    - To add a policy, place the cursor at the desired insertion point and select a policy from the sidebar.\r\n    - To remove a policy, delete the corresponding policy statement from the policy document.\r\n    - Position the <base> element within a section element to inherit all policies from the corresponding section element in the enclosing scope.\r\n    - Remove the <base> element to prevent inheriting policies from the corresponding section element in the enclosing scope.\r\n    - Policies are applied in the order of their appearance, from the top down.\r\n    - Comments within policy elements are not supported and may disappear. Place your comments between policy elements or at a higher level scope.\r\n-->\r\n<policies>\r\n  <inbound>\r\n    <base />\r\n    <set-variable name="jsonResponse" value="@(context.Request.Body.As&lt;JObject&gt;())" />\r\n    <return-response>\r\n      <set-status code="200" reason="OK" />\r\n      <set-body template="liquid">\r\n            {%- assign vars = context.Variables["jsonResponse"] -%}\r\n            {\r\n                "mapped_val1" : "{{ vars[\'val1\'] }}",\r\n                "mapped_val2" : "{{ vars[\'val2\'] }}", \r\n                {% if vars[\'val3\'] and vars[\'val3\'] != \'\' %}\r\n                "conditionalprop" : "{{ vars[\'val3\'] }}"\r\n                {% else %}\r\n                "conditionalprop" : null\r\n                {% endif %} \r\n            }\r\n            </set-body>\r\n    </return-response>\r\n  </inbound>\r\n  <backend>\r\n    <base />\r\n  </backend>\r\n  <outbound>\r\n    <base />\r\n  </outbound>\r\n  <on-error>\r\n    <base />\r\n  </on-error>\r\n</policies>'
    format: 'xml'
  }
  dependsOn: [

    service_mfapim_name_test
    service_mfapim_name_resource
  ]
}

resource service_mfapim_name_test_stringcompare_policy 'Microsoft.ApiManagement/service/apis/operations/policies@2021-12-01-preview' = {
  parent: service_mfapim_name_test_stringcompare
  name: 'policy'
  properties: {
    value: '<!--\r\n    IMPORTANT:\r\n    - Policy elements can appear only within the <inbound>, <outbound>, <backend> section elements.\r\n    - To apply a policy to the incoming request (before it is forwarded to the backend service), place a corresponding policy element within the <inbound> section element.\r\n    - To apply a policy to the outgoing response (before it is sent back to the caller), place a corresponding policy element within the <outbound> section element.\r\n    - To add a policy, place the cursor at the desired insertion point and select a policy from the sidebar.\r\n    - To remove a policy, delete the corresponding policy statement from the policy document.\r\n    - Position the <base> element within a section element to inherit all policies from the corresponding section element in the enclosing scope.\r\n    - Remove the <base> element to prevent inheriting policies from the corresponding section element in the enclosing scope.\r\n    - Policies are applied in the order of their appearance, from the top down.\r\n    - Comments within policy elements are not supported and may disappear. Place your comments between policy elements or at a higher level scope.\r\n-->\r\n<policies>\r\n  <inbound>\r\n    <base />\r\n    <set-variable name="compareVal" value="@(context.Request.Url.Query.GetValueOrDefault(&quot;testval&quot;))" />\r\n    <choose>\r\n      <when condition="@(context.Variables[&quot;compareVal&quot;] != &quot;test&quot;)">\r\n        <trace source="test">Value DOES NOT match test</trace>\r\n      </when>\r\n      <otherwise>\r\n        <trace source="test">Value matches test</trace>\r\n      </otherwise>\r\n    </choose>\r\n  </inbound>\r\n  <backend>\r\n    <base />\r\n  </backend>\r\n  <outbound>\r\n    <base />\r\n  </outbound>\r\n  <on-error>\r\n    <base />\r\n  </on-error>\r\n</policies>'
    format: 'xml'
  }
  dependsOn: [

    service_mfapim_name_test
    service_mfapim_name_resource
  ]
}

resource service_mfapim_name_test_validation_policy 'Microsoft.ApiManagement/service/apis/operations/policies@2021-12-01-preview' = {
  parent: service_mfapim_name_test_validation
  name: 'policy'
  properties: {
    value: '<!--\r\n    IMPORTANT:\r\n    - Policy elements can appear only within the <inbound>, <outbound>, <backend> section elements.\r\n    - To apply a policy to the incoming request (before it is forwarded to the backend service), place a corresponding policy element within the <inbound> section element.\r\n    - To apply a policy to the outgoing response (before it is sent back to the caller), place a corresponding policy element within the <outbound> section element.\r\n    - To add a policy, place the cursor at the desired insertion point and select a policy from the sidebar.\r\n    - To remove a policy, delete the corresponding policy statement from the policy document.\r\n    - Position the <base> element within a section element to inherit all policies from the corresponding section element in the enclosing scope.\r\n    - Remove the <base> element to prevent inheriting policies from the corresponding section element in the enclosing scope.\r\n    - Policies are applied in the order of their appearance, from the top down.\r\n    - Comments within policy elements are not supported and may disappear. Place your comments between policy elements or at a higher level scope.\r\n-->\r\n<policies>\r\n  <inbound>\r\n    <base />\r\n    <set-header name="request-email" exists-action="override">\r\n      <value>@(context.User.Email)</value>\r\n    </set-header>\r\n  </inbound>\r\n  <backend>\r\n    <base />\r\n  </backend>\r\n  <outbound>\r\n    <base />\r\n  </outbound>\r\n  <on-error>\r\n    <base />\r\n  </on-error>\r\n</policies>'
    format: 'xml'
  }
  dependsOn: [

    service_mfapim_name_test
    service_mfapim_name_resource
  ]
}

resource service_mfapim_name_dad_joke_get_a_random_joke_Joke 'Microsoft.ApiManagement/service/apis/operations/tags@2021-12-01-preview' = {
  parent: service_mfapim_name_dad_joke_get_a_random_joke
  name: 'Joke'
  dependsOn: [

    service_mfapim_name_dad_joke
    service_mfapim_name_resource
  ]
}

resource service_mfapim_name_dad_joke_get_joke_Joke 'Microsoft.ApiManagement/service/apis/operations/tags@2021-12-01-preview' = {
  parent: service_mfapim_name_dad_joke_get_joke
  name: 'Joke'
  dependsOn: [

    service_mfapim_name_dad_joke
    service_mfapim_name_resource
  ]
}

resource service_mfapim_name_dad_joke_search_for_jokes_Joke 'Microsoft.ApiManagement/service/apis/operations/tags@2021-12-01-preview' = {
  parent: service_mfapim_name_dad_joke_search_for_jokes
  name: 'Joke'
  dependsOn: [

    service_mfapim_name_dad_joke
    service_mfapim_name_resource
  ]
}

resource service_mfapim_name_mfsimplefunction_post_simplefunctionget_operation1 'Microsoft.ApiManagement/service/apis/operations/tags@2021-12-01-preview' = {
  parent: service_mfapim_name_mfsimplefunction_post_simplefunctionget
  name: 'operation1'
  dependsOn: [

    Microsoft_ApiManagement_service_apis_service_mfapim_name_mfsimplefunction
    service_mfapim_name_resource
  ]
}

resource service_mfapim_name_mfsimplefunction_v2_post_simplefunctionget_operation1 'Microsoft.ApiManagement/service/apis/operations/tags@2021-12-01-preview' = {
  parent: service_mfapim_name_mfsimplefunction_v2_post_simplefunctionget
  name: 'operation1'
  dependsOn: [

    service_mfapim_name_mfsimplefunction_v2
    service_mfapim_name_resource
  ]
}

resource service_mfapim_name_mfsimplefunction_post_simplefunctionget_operation2 'Microsoft.ApiManagement/service/apis/operations/tags@2021-12-01-preview' = {
  parent: service_mfapim_name_mfsimplefunction_post_simplefunctionget
  name: 'operation2'
  dependsOn: [

    Microsoft_ApiManagement_service_apis_service_mfapim_name_mfsimplefunction
    service_mfapim_name_resource
  ]
}

resource service_mfapim_name_mfsimplefunction_v2_get_simplefunctionget_operation2 'Microsoft.ApiManagement/service/apis/operations/tags@2021-12-01-preview' = {
  parent: service_mfapim_name_mfsimplefunction_v2_get_simplefunctionget
  name: 'operation2'
  dependsOn: [

    service_mfapim_name_mfsimplefunction_v2
    service_mfapim_name_resource
  ]
}

resource service_mfapim_name_dad_joke_search_for_jokes_Search 'Microsoft.ApiManagement/service/apis/operations/tags@2021-12-01-preview' = {
  parent: service_mfapim_name_dad_joke_search_for_jokes
  name: 'Search'
  dependsOn: [

    service_mfapim_name_dad_joke
    service_mfapim_name_resource
  ]
}

resource service_mfapim_name_60b09b71b67d0e0053070001 'Microsoft.ApiManagement/service/subscriptions@2021-12-01-preview' = {
  parent: service_mfapim_name_resource
  name: '60b09b71b67d0e0053070001'
  properties: {
    ownerId: service_mfapim_name_1.id
    scope: service_mfapim_name_starter.id
    state: 'active'
    allowTracing: false
    displayName: subscriptions_60b09b71b67d0e0053070001_displayName
  }
}

resource service_mfapim_name_60b09b72b67d0e0053070002 'Microsoft.ApiManagement/service/subscriptions@2021-12-01-preview' = {
  parent: service_mfapim_name_resource
  name: '60b09b72b67d0e0053070002'
  properties: {
    ownerId: service_mfapim_name_1.id
    scope: service_mfapim_name_unlimited.id
    state: 'active'
    allowTracing: false
    displayName: subscriptions_60b09b72b67d0e0053070002_displayName
  }
}

resource service_mfapim_name_60c12a4d4ce5721780d17865 'Microsoft.ApiManagement/service/subscriptions@2021-12-01-preview' = {
  parent: service_mfapim_name_resource
  name: '60c12a4d4ce5721780d17865'
  properties: {
    ownerId: service_mfapim_name_1.id
    scope: Microsoft_ApiManagement_service_products_service_mfapim_name_test.id
    state: 'active'
    allowTracing: false
    displayName: subscriptions_60c12a4d4ce5721780d17865_displayName
  }
}

resource service_mfapim_name_619265674ce57209147bf7b9 'Microsoft.ApiManagement/service/subscriptions@2021-12-01-preview' = {
  parent: service_mfapim_name_resource
  name: '619265674ce57209147bf7b9'
  properties: {
    ownerId: service_mfapim_name_1.id
    scope: service_mfapim_name_mobileapplications.id
    state: 'active'
    allowTracing: false
    displayName: subscriptions_619265674ce57209147bf7b9_displayName
  }
}

resource service_mfapim_name_619265754ce57209147bf7bb 'Microsoft.ApiManagement/service/subscriptions@2021-12-01-preview' = {
  parent: service_mfapim_name_resource
  name: '619265754ce57209147bf7bb'
  properties: {
    ownerId: service_mfapim_name_1.id
    scope: service_mfapim_name_internal_business_users.id
    state: 'active'
    allowTracing: false
    displayName: subscriptions_619265754ce57209147bf7bb_displayName
  }
}

resource service_mfapim_name_6192657f4ce57209147bf7bd 'Microsoft.ApiManagement/service/subscriptions@2021-12-01-preview' = {
  parent: service_mfapim_name_resource
  name: '6192657f4ce57209147bf7bd'
  properties: {
    ownerId: service_mfapim_name_1.id
    scope: service_mfapim_name_external_partners.id
    state: 'active'
    allowTracing: false
    displayName: subscriptions_6192657f4ce57209147bf7bd_displayName
  }
}

resource service_mfapim_name_61d6efc34ce57211f8a0d3c2 'Microsoft.ApiManagement/service/subscriptions@2021-12-01-preview' = {
  parent: service_mfapim_name_resource
  name: '61d6efc34ce57211f8a0d3c2'
  properties: {
    ownerId: service_mfapim_name_1.id
    scope: service_mfapim_name_insurer1.id
    state: 'active'
    allowTracing: false
    displayName: subscriptions_61d6efc34ce57211f8a0d3c2_displayName
  }
}

resource service_mfapim_name_61d6efd04ce57211f8a0d3c4 'Microsoft.ApiManagement/service/subscriptions@2021-12-01-preview' = {
  parent: service_mfapim_name_resource
  name: '61d6efd04ce57211f8a0d3c4'
  properties: {
    ownerId: service_mfapim_name_1.id
    scope: service_mfapim_name_insurer2.id
    state: 'active'
    allowTracing: false
    displayName: subscriptions_61d6efd04ce57211f8a0d3c4_displayName
  }
}

resource service_mfapim_name_61d6f01d4ce57211f8a0d3c8 'Microsoft.ApiManagement/service/subscriptions@2021-12-01-preview' = {
  parent: service_mfapim_name_resource
  name: '61d6f01d4ce57211f8a0d3c8'
  properties: {
    ownerId: service_mfapim_name_1.id
    scope: Microsoft_ApiManagement_service_products_service_mfapim_name_internal.id
    state: 'active'
    allowTracing: false
    displayName: subscriptions_61d6f01d4ce57211f8a0d3c8_displayName
  }
}

resource service_mfapim_name_61d8512ddabf74f85c1aef15 'Microsoft.ApiManagement/service/subscriptions@2021-12-01-preview' = {
  parent: service_mfapim_name_resource
  name: '61d8512ddabf74f85c1aef15'
  properties: {
    ownerId: service_mfapim_name_60b8d2cd4ce5720ed8dfcfc6.id
    scope: service_mfapim_name_internal_business_users.id
    displayName: 'mattf-internal'
    state: 'active'
  }
}

resource service_mfapim_name_61efbfc94ce57211f8a0d515 'Microsoft.ApiManagement/service/subscriptions@2021-12-01-preview' = {
  parent: service_mfapim_name_resource
  name: '61efbfc94ce57211f8a0d515'
  properties: {
    ownerId: service_mfapim_name_1.id
    scope: service_mfapim_name_DadJokeProduct.id
    state: 'active'
    allowTracing: false
    displayName: subscriptions_61efbfc94ce57211f8a0d515_displayName
  }
}

resource service_mfapim_name_mattf_ManagedIdentity 'Microsoft.ApiManagement/service/subscriptions@2021-12-01-preview' = {
  parent: service_mfapim_name_resource
  name: 'mattf-ManagedIdentity'
  properties: {
    ownerId: service_mfapim_name_60b8d2cd4ce5720ed8dfcfc6.id
    scope: service_mfapim_name_managedidentity.id
    displayName: 'mattf-ManagedIdentity'
    state: 'active'
    allowTracing: false
  }
}

resource virtualNetworks_vnet_name_resource 'Microsoft.Network/virtualNetworks@2020-11-01' = {
  name: virtualNetworks_vnet_name
  location: 'uksouth'
  properties: {
    addressSpace: {
      addressPrefixes: [
        '10.0.0.0/16'
      ]
    }
    dhcpOptions: {
      dnsServers: []
    }
    subnets: [
      {
        name: 'default'
        properties: {
          addressPrefix: '10.0.0.0/24'
          networkSecurityGroup: {
            id: networkSecurityGroups_vnet_default_nsg_uksouth_name_resource.id
          }
          serviceEndpoints: []
          delegations: []
          privateEndpointNetworkPolicies: 'Enabled'
          privateLinkServiceNetworkPolicies: 'Enabled'
        }
      }
      {
        name: 'apim'
        properties: {
          addressPrefix: '10.0.1.0/24'
          networkSecurityGroup: {
            id: networkSecurityGroups_vnet_apim_nsg_uksouth_name_resource.id
          }
          serviceEndpoints: [
            {
              service: 'Microsoft.KeyVault'
              locations: [
                '*'
              ]
            }
          ]
          delegations: []
          privateEndpointNetworkPolicies: 'Enabled'
          privateLinkServiceNetworkPolicies: 'Enabled'
        }
      }
      {
        name: 'keyvault'
        properties: {
          addressPrefix: '10.0.2.0/24'
          networkSecurityGroup: {
            id: networkSecurityGroups_vnet_keyvault_nsg_uksouth_name_resource.id
          }
          serviceEndpoints: []
          delegations: []
          privateEndpointNetworkPolicies: 'Disabled'
          privateLinkServiceNetworkPolicies: 'Enabled'
        }
      }
      {
        name: 'apim2'
        properties: {
          addressPrefix: '10.0.3.0/24'
          networkSecurityGroup: {
            id: networkSecurityGroups_vnet_apim2_nsg_uksouth_name_resource.id
          }
          serviceEndpoints: [
            {
              service: 'Microsoft.KeyVault'
              locations: [
                '*'
              ]
            }
          ]
          delegations: []
          privateEndpointNetworkPolicies: 'Enabled'
          privateLinkServiceNetworkPolicies: 'Enabled'
        }
      }
    ]
    virtualNetworkPeerings: []
    enableDdosProtection: false
  }
}
