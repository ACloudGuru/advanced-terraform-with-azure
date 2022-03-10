#!/bin/bash
# Lab Setup Script
wget https://raw.githubusercontent.com/ACloudGuru/advanced-terraform-with-azure/main/lab_setting_up_azure_storage_to_be_used_for_terraform_remote_state/providers.tf
mkdir terraformguru
mv providers.tf terraformguru/
rm -rf terraform_1.1.6_linux_amd64.zip
rm -rf lab_3_setup.sh