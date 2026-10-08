terraform {
  required_providers {
    bunnynet = {
      source  = "BunnyWay/bunnynet"
      version = "~> 0.19.1"
    }
  }
}

# The API key comes from the BUNNYNET_API_KEY environment variable.
provider "bunnynet" {}

# Storage zones per klant/domein
module "storage_zones" {
  for_each = var.storage_zones
  source   = "./modules/storage-zone"

  name      = each.value.name
  region    = each.value.region
  zone_tier = each.value.zone_tier
}
