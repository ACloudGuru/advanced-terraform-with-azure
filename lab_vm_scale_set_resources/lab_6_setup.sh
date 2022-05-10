#!/bin/bash
# Lab Setup Script
wget https://raw.githubusercontent.com/ACloudGuru/advanced-terraform-with-azure/main/lab_vm_scale_set_resources/providers.tf
wget https://raw.githubusercontent.com/ACloudGuru/advanced-terraform-with-azure/main/lab_vm_scale_set_resources/networking.tf
mkdir terraformguru
mv providers.tf terraformguru/
mv networking.tf terraformguru/
rm -rf lab_6_setup.sh
