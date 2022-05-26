resource "azurerm_resource_group" "comics" {
   #name     = "<RESOURCE_GROUP_NAME>"
   #location = "<RESOURCE_GROUP_LOCATION>"
 }

 resource "azurerm_virtual_network" "comics" {
   name                = "vnet"
   address_space       = ["10.0.0.0/16"]
   resource_group_name = azurerm_resource_group.comics.name
   location            = azurerm_resource_group.comics.location
 }

 resource "azurerm_subnet" "comics" {
   name                 = "subnet"
   resource_group_name  = azurerm_resource_group.comics.name
   virtual_network_name = azurerm_virtual_network.comics.name
   address_prefixes     = ["10.0.2.0/24"]
 }

 resource "azurerm_public_ip" "comics" {
   name                         = "publicIPForLB"
   resource_group_name          = azurerm_resource_group.comics.name
   location                     = azurerm_resource_group.comics.location
   allocation_method            = "Static"
 }
