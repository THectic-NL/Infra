output "id" {
  description = "The ID of the storage zone"
  value       = bunnynet_storage_zone.this.id
}

output "hostname" {
  description = "The hostname for HTTP API access"
  value       = bunnynet_storage_zone.this.hostname
}

output "hostname_s3" {
  description = "The hostname for S3 API access"
  value       = bunnynet_storage_zone.this.hostname_s3
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
