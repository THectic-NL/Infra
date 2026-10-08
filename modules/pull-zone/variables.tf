variable "name" {
  description = "Name of the pull zone"
  type        = string
}

variable "storage_zone_id" {
  description = "ID of the storage zone to connect to this pull zone"
  type        = number
}

variable "host_header" {
  description = "The Host header to send to the origin (optional)"
  type        = string
  default     = null
}
