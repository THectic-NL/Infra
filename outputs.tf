# Storage Zones
output "storage_zones" {
  description = "All created storage zones with their connection details"
  value = {
    for customer, zone in var.storage_zones : customer => {
      id           = module.storage_zone[customer].id
      hostname     = module.storage_zone[customer].hostname
      hostname_s3  = module.storage_zone[customer].hostname_s3
      name         = module.storage_zone[customer].name
      region       = module.storage_zone[customer].region
      password     = nonsensitive(module.storage_zone[customer].password)
    }
  }
  sensitive = false
}

# Pull Zones
output "pull_zones" {
  description = "All created pull zones"
  value = {
    for pz_name, pz in var.pull_zones : pz_name => {
      id           = module.pull_zone[pz_name].id
      name         = module.pull_zone[pz_name].name
      cdn_domain   = module.pull_zone[pz_name].cdn_domain
      storage_zone_id = module.storage_zone[pz.storage_zone_id].id
      storage_zone_hostname = module.storage_zone[pz.storage_zone_id].hostname_s3
    }
  }
  sensitive = false
}
