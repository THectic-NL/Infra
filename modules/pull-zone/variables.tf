variable "name" {
  description = "Name of the pull zone"
  type        = string
}

variable "origin_url" {
  description = "The origin URL to pull content from"
  type        = string
}

variable "origin_host_header" {
  description = "The Host header to send to the origin"
  type        = string
  default     = null
}

variable "override_host" {
  description = "Override the Host header for the origin"
  type        = string
  default     = null
}

variable "storage_zone_id" {
  description = "ID of the storage zone to connect to this pull zone"
  type        = string
  default     = null
}

variable "storage_zone_permission" {
  description = "Permission level for the storage zone connection (Read, ReadWrite)"
  type        = string
  default     = "Read"
}

variable "use_staging" {
  description = "Use staging environment for the storage zone"
  type        = bool
  default     = false
}
