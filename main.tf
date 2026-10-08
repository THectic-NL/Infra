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
module "storage_zone" {
  for_each = var.storage_zones
  source   = "./modules/storage-zone"

  name      = each.value.name
  region    = each.value.region
  zone_tier = each.value.zone_tier
}

# Pull zones for CDN
module "pull_zone" {
  for_each = var.pull_zones
  source   = "./modules/pull-zone"

  name                  = each.value.name
  storage_zone_id       = module.storage_zone[each.value.storage_zone_id].id
  storage_zone_hostname = module.storage_zone[each.value.storage_zone_id].hostname
  origin_url            = each.value.origin_url
  origin_host_header    = each.value.origin_host_header
  override_host         = each.value.override_host
  storage_zone_permission = each.value.storage_zone_permission
  use_staging           = each.value.use_staging
}
