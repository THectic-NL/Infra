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
    name           = string
    storage_zone_id = string  # Key from storage_zones map
    host_header    = optional(string)
  }))
  default = {}
}
