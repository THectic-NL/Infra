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

variable "name" {
  description = "Name of the storage zone. Must be unique across bunny.net."
  type        = string
}

resource "bunnynet_storage_zone" "s3" {
  name      = var.name
  region    = "DE"
  zone_tier = "Edge"
  type      = "S3"
}

output "s3_hostname" {
  value = bunnynet_storage_zone.s3.hostname_s3
}

output "password" {
  value     = bunnynet_storage_zone.s3.password
  sensitive = true
}
