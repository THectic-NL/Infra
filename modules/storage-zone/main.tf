resource "bunnynet_storage_zone" "this" {
  name      = var.name
  region    = var.region
  zone_tier = var.zone_tier
  type      = "S3"
}
