#!/bin/bash
# Lab Setup Script
wget https://raw.githubusercontent.com/ACloudGuru/advanced-terraform-with-azure/main/lab_vm_cluster_resources/providers.tf
wget https://raw.githubusercontent.com/ACloudGuru/advanced-terraform-with-azure/main/lab_vm_cluster_resources/networking.tf
wget https://raw.githubusercontent.com/ACloudGuru/advanced-terraform-with-azure/main/lab_vm_cluster_resources/lb.tf
mkdir terraformguru
mv providers.tf terraformguru/
mv networking.tf terraformguru/
mv lb.tf terraformguru/
rm -rf lab_5_setup.sh
