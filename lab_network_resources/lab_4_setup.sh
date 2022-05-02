#!/bin/bash
# Lab Setup Script
wget https://raw.githubusercontent.com/ACloudGuru/advanced-terraform-with-azure/main/lab_network_resources/providers.tf
wget https://raw.githubusercontent.com/ACloudGuru/advanced-terraform-with-azure/main/lab_network_resources/networking.tf
mkdir terraformguru
mv providers.tf terraformguru/
mv networking.tf terraformguru/
rm -rf lab_4_setup.sh
