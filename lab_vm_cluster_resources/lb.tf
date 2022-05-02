resource "azurerm_lb" "comics" {
   name                = "loadBalancer"
   resource_group_name = azurerm_resource_group.comics.name
   location            = azurerm_resource_group.comics.location

   frontend_ip_configuration {
     name                 = "publicIPAddress"
     public_ip_address_id = azurerm_public_ip.comics.id
   }
 }

 resource "azurerm_lb_backend_address_pool" "comics" {
   loadbalancer_id     = azurerm_lb.comics.id
   name                = "BackEndAddressPool"
 }