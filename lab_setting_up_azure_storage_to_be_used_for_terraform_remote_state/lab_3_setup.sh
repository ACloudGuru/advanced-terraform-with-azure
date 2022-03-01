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
wget https://raw.githubusercontent.com/ACloudGuru/advanced-terraform-with-azure/main/lab_setting_up_azure_storage_to_be_used_for_terraform_remote_state/providers.tf
mv providers.tf terraform/
wget https://raw.githubusercontent.com/ACloudGuru/advanced-terraform-with-azure/main/lab_setting_up_azure_storage_to_be_used_for_terraform_remote_state/remote_state_storage.tf
mv remote_state_storage.tf terraform/
rm -rf terraform_1.1.6_linux_amd64.zip
rm -rf lab_3_setup.sh