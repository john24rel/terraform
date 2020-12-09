resource "azurerm_virtual_network" "example" {
  name                = var.vpc_name
  resource_group_name = azurerm_resource_group.example.name
  location            = azurerm_resource_group.example.location
  address_space       = var.address_space
}