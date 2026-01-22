resource "azurerm_virtual_network" "net2" {
  resource_group_name = azurerm_resource_group.training.name
  location            = azurerm_resource_group.training.location

  name          = "${azurerm_resource_group.training.name}-net2"
  address_space = ["10.20.0.0/16"]
}
