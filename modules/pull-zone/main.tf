terraform {
  required_providers {
    bunnynet = {
      source  = "BunnyWay/bunnynet"
      version = "~> 0.19.1"
    }
  }
}

resource "bunnynet_pull_zone" "this" {
  name = var.name
  
  # Origin settings - required
  origin {
    host_header    = var.origin_host_header
    origin_url    = var.origin_url
    override_host  = var.override_host
  }
  
  # Storage zone to link (optional, for S3 storage)
  dynamic "storage_zone_connection" {
    for_each = var.storage_zone_id != null ? [1] : []
    content {
      storage_zone_id = var.storage_zone_id
      permission       = var.storage_zone_permission
      use_staging      = var.use_staging
    }
  }
}
