# ACR name must be azure unique
ACR_NAME=acr$RANDOM

# create ACR
az acr create \
    --resource-group $RESOURCE_GROUP \
    --location $REGION_NAME \
    --name $ACR_NAME \
    --sku Standard

# output
{
    "adminUserEnabled": false,
    "creationDate": "2019-12-28T01:33:23.906677+00:00",
    "id": "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/aksworkshop/providers/Microsoft.ContainerRegistry/registries/acr4229",
    "location": "eastus",
    "loginServer": "acr4229.azurecr.io",
    "name": "acr4229",
    "networkRuleSet": null,
    "policies": {
      "quarantinePolicy": {
        "status": "disabled"
      },
      "retentionPolicy": {
        "days": 7,
        "lastUpdatedTime": "2019-12-28T01:33:25.070450+00:00",
        "status": "disabled"
      },
      "trustPolicy": {
        "status": "disabled",
        "type": "Notary"
      }
    },
    "provisioningState": "Succeeded",
    "resourceGroup": "aksworkshop",
    "sku": {
      "name": "Standard",
      "tier": "Standard"
    },
    "status": null,
    "storageAccount": null,
    "tags": {},
    "type": "Microsoft.ContainerRegistry/registries"
  }

# Clone and go to the project, where the 
git clone https://github.com/MicrosoftDocs/mslearn-aks-workshop-ratings-web.git

cd mslearn-aks-workshop-ratings-web

az acr build \
    --resource-group $RESOURCE_GROUP \
    --registry $ACR_NAME \
    --image ratings-web:v1 .

# Verify the images
az acr repository list \
    --name $ACR_NAME \
    --output table

# Configure the AKS cluster to authenticate to the container registry
# automatically configure the required service principal authentication 
# between the two resources by running the az aks update command.
az aks update \
    --name $AKS_CLUSTER_NAME \
    --resource-group $RESOURCE_GROUP \
    --attach-acr $ACR_NAME
