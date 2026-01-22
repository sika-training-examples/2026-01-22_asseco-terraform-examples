resource "azurerm_resource_group" "training" {
  lifecycle {
    ignore_changes = [
      tags["created_at"]
    ]
  }

  tags = {
    account    = "asseco-ce"
    team       = "asseco-infra-net-sk"
    created_at = timestamp()
  }

  name     = "ondrejsika"
  location = "westeurope"
}
