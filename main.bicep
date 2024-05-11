param location string = deployment().location
targetScope = 'subscription'

resource resourceGroup 'Microsoft.Resources/resourceGroups@2024-03-01' = {
  name: 'azure-bicep-rg'
  location: location
}

module appServicePlan './app-service-plan.bicep' = {
  scope: resourceGroup
  name: 'jaksel-bicep-app-plan'
  params: {
    location: resourceGroup.location
  }
}

module appService './web-app.bicep' = {
  scope: resourceGroup
  name: 'jaksel-bicep-webapp'
  params: {
    location: resourceGroup.location
    appServicePlanId: appServicePlan.outputs.appServicePlanID
  }
}



