 terraform {

   required_version = ">=0.12"

   required_providers {
     azurerm = {
       source = "hashicorp/azurerm"
       version = "~>2.0"
     }
   }
   backend "azurerm" {
    resource_group_name  = "664-242579a4-create-an-aks-cluster-in-azure-with-t"
    storage_account_name = "tfstatexxuib"
    container_name       = "tfstate"
    key                  = "tfstate"
  }
 }

 provider "azurerm" {
   features {}
   skip_provider_registration = true
 }

 # Import the Azure Resource Group
resource "azurerm_resource_group" "k8s" {
  #name     = "<RESOURCE_GROUP_NAME>"
  #location = "<RESOURCE_GROUP_LOCATION>"
}