#!/bin/bash
# Lab Setup Script
mkdir terraformguru
wget https://raw.githubusercontent.com/ACloudGuru/advanced-terraform-with-azure/main/lab_import_existing_resources_into_terraform_from_azure/providers.tf
mv providers.tf terraformguru/
rm -rf lab_2_setup.sh