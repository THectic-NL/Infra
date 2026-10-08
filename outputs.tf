# Storage Zones
output "storage_zones" {
  description = "All created storage zones with their connection details"
  value = {
    for customer, zone in var.storage_zones : customer => {
      id           = module.storage_zone[customer].id
      hostname     = module.storage_zone[customer].hostname
      hostname_edge = module.storage_zone[customer].hostname_edge
      name         = module.storage_zone[customer].name
      region       = module.storage_zone[customer].region
      password     = nonsensitive(module.storage_zone[customer].password)
    }
  }
  sensitive = false
}

# Pull Zones
output "pull_zones" {
  description = "All created pull zones with their connection details"
  value = {
    for pz_name, pz in var.pull_zones : pz_name => {
      id       = module.pull_zone[pz_name].id
      hostname = module.pull_zone[pz_name].hostname
      name     = module.pull_zone[pz_name].name
      storage_zone_id = pz.storage_zone_id != null ? module.storage_zone[pz.storage_zone_id].id : null
    }
  }
  sensitive = false
}
