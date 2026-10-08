variable "storage_zones" {
  description = "Map of storage zones to create. Key = customer identifier, value = storage zone config"
  type = map(object({
    name      = string
    region    = optional(string, "DE")
    zone_tier = optional(string, "Edge")
  }))
  default = {}
}
