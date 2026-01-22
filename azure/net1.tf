resource "azurerm_virtual_network" "net1" {
  lifecycle {
    ignore_changes = [
      tags["created_at"]
    ]
  }

  tags = merge(local.common_tags, {})

  resource_group_name = azurerm_resource_group.training.name
  location            = azurerm_resource_group.training.location

  name          = "${azurerm_resource_group.training.name}-net1"
  address_space = ["10.10.0.0/16"]
}
