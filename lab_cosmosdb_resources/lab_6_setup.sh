#!/bin/bash
# Lab Setup Script
wget https://raw.githubusercontent.com/ACloudGuru/advanced-terraform-with-azure/main/lab_cosmosdb_resources/providers.tf
wget https://raw.githubusercontent.com/ACloudGuru/advanced-terraform-with-azure/main/lab_cosmosdb_resources/cosmosDB.tf
mkdir terraformguru
mv providers.tf terraformguru/
mv cosmosDB.tf terraformguru/
rm -rf lab_6_setup.sh
