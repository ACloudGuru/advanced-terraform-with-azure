resource "azurerm_resource_group" "super-vote" {
  name     = "<RESOURCE_GROUP_NAME>"
  location = "<RESOURCE_GROUP_NAME>"
}

resource "random_integer" "ri" {
  min = 10000
  max = 99999
}
