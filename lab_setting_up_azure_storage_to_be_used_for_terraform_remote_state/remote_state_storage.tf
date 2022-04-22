# Creates random string for the Unique ID for the Azure Storage Account Name
resource "random_string" "resource_code" {
  length  = 5
  special = false
  upper   = false
}

# Import Resource Group if using ACG's Azure Sandbox
resource "azurerm_resource_group" "guru" {
  #name     = "<RESOURCE_GROUP>"
  #location = "<LOCATION>"
  #tags     = {
  #  environment = "dev"
  #}
}
