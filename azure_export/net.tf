resource "azurerm_virtual_network" "res-1" {
  address_space                  = ["10.0.0.0/16"]
  location                       = "westeurope"
  name                           = "x-manual"
  private_endpoint_vnet_policies = "Disabled"
  resource_group_name            = azurerm_resource_group.res-0.name
}

resource "azurerm_subnet" "res-2" {
  address_prefixes     = ["10.0.0.0/24"]
  name                 = "default"
  resource_group_name  = azurerm_resource_group.res-0.name
  virtual_network_name = azurerm_virtual_network.res-1.name
}
