#!/bin/bash
# Lab Setup Script
wget https://raw.githubusercontent.com/ACloudGuru/advanced-terraform-with-azure/main/lab_setting_up_azure_storage_to_be_used_for_terraform_remote_state/providers.tf
wget https://raw.githubusercontent.com/ACloudGuru/advanced-terraform-with-azure/main/lab_setting_up_azure_storage_to_be_used_for_terraform_remote_state/remote_state_storage.tf
mkdir terraformguru
mv providers.tf terraformguru/
mv remote_state_storage.tf terraformguru/
rm -rf lab_3_setup.sh
