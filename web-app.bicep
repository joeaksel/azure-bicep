param location string
param appServicePlanId string 

resource webApplication 'Microsoft.Web/sites@2023-12-01' = {
  name: 'jaksel-bicep-webapp'
  location: location
  properties: {
    serverFarmId: appServicePlanId
  }
}
