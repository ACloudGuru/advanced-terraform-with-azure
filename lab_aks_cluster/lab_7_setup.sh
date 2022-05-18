#!/bin/bash
# Lab Setup Script
wget https://raw.githubusercontent.com/ACloudGuru/advanced-terraform-with-azure/main/lab_aks_cluster/providers.tf
mkdir terraformguru
mv providers.tf terraformguru/
rm -rf lab_7_setup.sh
