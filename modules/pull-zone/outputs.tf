output "id" {
  description = "The ID of the pull zone"
  value       = bunnynet_pullzone.this.id
}

output "cdn_domain" {
  description = "The CNAME domain of the pull zone for setting up custom hostnames"
  value       = bunnynet_pullzone.this.cdn_domain
}

output "name" {
  description = "The name of the pull zone"
  value       = bunnynet_pullzone.this.name
}
