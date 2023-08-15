param vNetName string

param privateEndpointName string

param location string

resource parentVnet 'Microsoft.Network/virtualNetworks@2023-04-01' existing = {
  name: vNetName
}

resource symbolicname 'Microsoft.Network/privateEndpoints@2023-04-01' = {
  name: privateEndpointName
  location: location
  dependsOn: [
    parentVnet
  ]
  properties: {
    addressSpace: {
      addressPrefixes: [
        'string'
      ]
    }
  }
}
