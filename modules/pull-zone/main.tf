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
  
  # Use storage zone hostname as origin if no external origin_url is provided
  origin {
    host_header    = var.origin_host_header != null ? var.origin_host_header : var.storage_zone_hostname
    origin_url    = var.origin_url != null ? var.origin_url : "https://${var.storage_zone_hostname}"
    override_host  = var.override_host
  }
  
  # Storage zone to link
  storage_zone_connection {
    storage_zone_id = var.storage_zone_id
    permission       = var.storage_zone_permission
    use_staging      = var.use_staging
  }
}
