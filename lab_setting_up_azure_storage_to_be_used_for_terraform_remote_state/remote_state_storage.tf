# Import the Resource Group
resource "azurerm_resource_group" "guru" {}

# Creates the Azure Storage Account
resource "azurerm_storage_account" "tfstate" {
  name                     = "<STORAGE_ACCOUNT_NAME>"
  resource_group_name      = azurerm_resource_group.guru.name
  location                 = azurerm_resource_group.guru.location
  account_tier             = "Standard"
  account_replication_type = "LRS"
  allow_blob_public_access = true

  tags = {
    environment = "guru"
  }
}

# Creates the Azure Storage Container
resource "azurerm_storage_container" "tfstate" {
  name                  = "<STORAGE_CONTAINER_NAME>"
  storage_account_name  = azurerm_storage_account.tfstate.name
  container_access_type = "blob"
}