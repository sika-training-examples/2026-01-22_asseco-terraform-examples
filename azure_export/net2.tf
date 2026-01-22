resource "azurerm_virtual_network" "res-3" {
  address_space       = ["11.0.0.0/16"]
  location            = "westeurope"
  name                = "x-manual2"
  resource_group_name = azurerm_resource_group.res-0.name
}

resource "azurerm_subnet" "res-4" {
  address_prefixes     = ["11.0.0.0/24"]
  name                 = "default"
  resource_group_name  = azurerm_resource_group.res-0.name
  virtual_network_name = azurerm_virtual_network.res-3.name
}
