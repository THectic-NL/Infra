terraform {
  required_providers {
    bunnynet = {
      source  = "BunnyWay/bunnynet"
      version = "~> 0.19.1"
    }
  }
}

resource "bunnynet_pullzone" "this" {
  name = var.name
  
  # Origin: use StorageZone type to connect to storage zone
  origin {
    type        = "StorageZone"
    storagezone = var.storage_zone_id
    host_header = var.host_header
  }
  
  # Routing block (required)
  routing {}
}
