param location string

resource appServicePlan 'Microsoft.Web/serverfarms@2023-12-01' = {
  name: 'jaksel-bicep-app-plan'
  location: location
  sku: {
    name: 'F1'
    capacity: 1
  }
}

output appServicePlanID string = appServicePlan.id
