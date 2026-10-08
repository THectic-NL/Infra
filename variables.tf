variable "storage_zones" {
  description = "Map of storage zones to create. Key = customer identifier, value = storage zone config"
  type = map(object({
    name      = string
    region    = optional(string, "DE")
    zone_tier = optional(string, "Edge")
  }))
  default = {}
}

variable "pull_zones" {
  description = "Map of pull zones to create. Key = pull zone identifier, value = pull zone config"
  type = map(object({
    name                   = string
    storage_zone_id       = string  # Required: key from storage_zones map
    origin_url            = optional(string)  # Optional: external origin, uses storage zone if not provided
    origin_host_header    = optional(string)
    override_host         = optional(string)
    storage_zone_permission = optional(string, "Read")
    use_staging           = optional(bool, false)
  }))
  default = {}
}
