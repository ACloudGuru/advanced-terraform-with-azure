#!/bin/bash
# Lab Setup Script
wget https://github.com/ACloudGuru/advanced-terraform-with-azure/blob/main/lab_using_terraform_with_azure/terraform_1.1.6_linux_amd64.zip
unzip terraform_1.1.6_linux_amd64.zip
mkdir bin
mv terraform bin/
mkdir terraform
wget https://raw.githubusercontent.com/ACloudGuru/advanced-terraform-with-azure/main/lab_import_existing_resources_into_terraform_from_azure/providers.tf
mv providers.tf terraform/
rm -rf terraform_1.1.6_linux_amd64.zip