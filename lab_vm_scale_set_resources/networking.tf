resource "azurerm_resource_group" "comics" {
   #name     = "<RESOURCE_GROUP_NAME>"
   #location = "<RESOURCE_GROUP_LOCATION>"
 }

 resource "random_string" "fqdn" {
 length  = 6
 special = false
 upper   = false
 number  = false
}

resource "azurerm_virtual_network" "comics" {
 name                = "comics-vnet"
 address_space       = ["10.0.0.0/16"]
 location            = var.location
 resource_group_name = azurerm_resource_group.comics.name
 tags                = var.tags
}

resource "azurerm_subnet" "comics" {
 name                 = "comics-subnet"
 resource_group_name  = azurerm_resource_group.comics.name
 virtual_network_name = azurerm_virtual_network.comics.name
 address_prefixes       = ["10.0.2.0/24"]
}

resource "azurerm_public_ip" "comics" {
 name                         = "comics-public-ip"
 location                     = var.location
 resource_group_name          = azurerm_resource_group.comics.name
 allocation_method            = "Static"
 domain_name_label            = random_string.fqdn.result
 tags                         = var.tags
}

resource "azurerm_lb" "comics" {
 name                = "comics-lb"
 location            = var.location
 resource_group_name = azurerm_resource_group.comics.name

 frontend_ip_configuration {
   name                 = "PublicIPAddress"
   public_ip_address_id = azurerm_public_ip.comics.id
 }

 tags = var.tags
}

resource "azurerm_lb_backend_address_pool" "bpepool" {
 loadbalancer_id     = azurerm_lb.comics.id
 name                = "BackEndAddressPool"
}

resource "azurerm_lb_probe" "comics" {
 resource_group_name = azurerm_resource_group.comics.name
 loadbalancer_id     = azurerm_lb.comics.id
 name                = "ssh-running-probe"
 port                = var.application_port
}

resource "azurerm_lb_rule" "lbnatrule" {
   resource_group_name            = azurerm_resource_group.comics.name
   loadbalancer_id                = azurerm_lb.comics.id
   name                           = "http"
   protocol                       = "Tcp"
   frontend_port                  = var.application_port
   backend_port                   = var.application_port
   backend_address_pool_id        = azurerm_lb_backend_address_pool.bpepool.id
   frontend_ip_configuration_name = "PublicIPAddress"
   probe_id                       = azurerm_lb_probe.comics.id
}