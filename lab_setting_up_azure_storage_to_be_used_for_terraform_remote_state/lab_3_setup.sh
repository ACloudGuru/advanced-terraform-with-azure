#!/bin/bash
# Lab Setup Script

# Variables
$SUBSCRIPTION_ID = az account show --query id --otsv
$RESOURCE_GROUP_NAME = az group list --query "[].name" -otsv
$LOCATION = az group list --query "[].location" -otsv

wget wget https://raw.githubusercontent.com/ACloudGuru/advanced-terraform-with-azure/main/lab_import_existing_resources_into_terraform_from_azure/terraform_1.1.6_linux_amd64.zip
unzip terraform_1.1.6_linux_amd64.zip
mkdir bin
mv terraform bin/
mkdir terraform
wget https://raw.githubusercontent.com/ACloudGuru/advanced-terraform-with-azure/main/lab_import_existing_resources_into_terraform_from_azure/providers.tf
mv providers.tf terraform/
wget https://raw.githubusercontent.com/ACloudGuru/advanced-terraform-with-azure/main/lab_import_existing_resources_into_terraform_from_azure/networking.tf
mv networking.tf terraform/
rm -rf terraform_1.1.6_linux_amd64.zip
rm -rf lab_2_setup.sh
cd terraform
terraform init
sleep 10
terraform import azurerm_resource_group.guru /subscriptions/${SUBSCRIPTION_ID}/${RESOURCE_GROUP_NAME}
sleep 5
echo "name: "$RESOURCE_GROUP_NAME"" >> rg.yml
echo "location: "$LOCATION"" >> rg.yml