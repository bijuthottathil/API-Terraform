#!/bin/bash

# Set these values before running
RESOURCE_GROUP="tfstate-rggp"
STORAGE_ACCOUNT_NAME="tfstateaccount1526"
CONTAINER_NAME="tfstate"
LOCATION="eastus"

# Login (optional if already authenticated)
az login

# Set your subscription (optional if already selected)
# az account set --subscription "your-subscription-id"

# Create resource group
echo "Creating resource group: $RESOURCE_GROUP"
az group create --name $RESOURCE_GROUP --location $LOCATION

# Create storage account
echo "Creating storage account: $STORAGE_ACCOUNT_NAME"
az storage account create \
  --name $STORAGE_ACCOUNT_NAME \
  --resource-group $RESOURCE_GROUP \
  --location $LOCATION \
  --sku Standard_LRS \
  --encryption-services blob

# Get storage account key
ACCOUNT_KEY=$(az storage account keys list \
  --resource-group $RESOURCE_GROUP \
  --account-name $STORAGE_ACCOUNT_NAME \
  --query "[0].value" -o tsv)

# Create blob container
echo "Creating blob container: $CONTAINER_NAME"
az storage container create \
  --name $CONTAINER_NAME \
  --account-name $STORAGE_ACCOUNT_NAME \
  --account-key $ACCOUNT_KEY

echo "✅ Terraform backend storage setup complete"
echo "Use the following backend block in Terraform:"
echo "
terraform {
  backend \"azurerm\" {
    resource_group_name  = \"$RESOURCE_GROUP\"
    storage_account_name = \"$STORAGE_ACCOUNT_NAME\"
    container_name       = \"$CONTAINER_NAME\"
    key                  = \"terraform.tfstate\"
  }
}
"
