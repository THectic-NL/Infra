terraform {
  required_providers {
    bunnynet = {
      source  = "BunnyWay/bunnynet"
      version = "~> 0.19.1"
    }
  }
}

resource "bunnynet_storage_zone" "this" {
  name      = var.name
  region    = var.region
  zone_tier = var.zone_tier
  type      = "S3"
}
