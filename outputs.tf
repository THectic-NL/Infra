output "storage_zones" {
  description = "All created storage zones with their connection details"
  value = {
    for customer, zone in var.storage_zones : customer => {
      id           = module.storage_zones[customer].id
      hostname     = module.storage_zones[customer].hostname
      hostname_edge = module.storage_zones[customer].hostname_edge
      name         = module.storage_zones[customer].name
      region       = module.storage_zones[customer].region
      # Password is sensitive, only show in outputs when needed
      password     = nonsensitive(module.storage_zones[customer].password)
    }
  }
  sensitive = false
}
