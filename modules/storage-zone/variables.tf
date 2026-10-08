variable "name" {
  description = "Name of the storage zone. Must be globally unique across bunny.net."
  type        = string
}

variable "region" {
  description = "Region for the storage zone. Options: DE, NY, LA, SG, BR, UK"
  type        = string
  default     = "DE"
}

variable "zone_tier" {
  description = "Storage zone tier. Options: Edge, Volume, or Premium"
  type        = string
  default     = "Edge"
}
