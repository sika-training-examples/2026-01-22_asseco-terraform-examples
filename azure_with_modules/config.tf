locals {
  prefix   = "m-ondrejsika"
  location = "westeurope"
  common_tags = {
    with_modules = "yes"
    account      = "asseco-ce"
    team         = "asseco-infra-net-sk"
    created_at   = timestamp()
  }
}
