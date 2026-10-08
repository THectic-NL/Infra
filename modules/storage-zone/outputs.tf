output "id" {
  description = "The ID of the storage zone"
  value       = bunnynet_storage_zone.this.id
}

output "hostname" {
  description = "The hostname for S3 API access"
  value       = bunnynet_storage_zone.this.hostname_s3
}

output "hostname_edge" {
  description = "The hostname for Edge storage access"
  value       = bunnynet_storage_zone.this.hostname_edge
}

output "password" {
  description = "The password for the storage zone"
  value       = bunnynet_storage_zone.this.password
  sensitive   = true
}

output "name" {
  description = "The name of the storage zone"
  value       = bunnynet_storage_zone.this.name
}

output "region" {
  description = "The region of the storage zone"
  value       = bunnynet_storage_zone.this.region
}
