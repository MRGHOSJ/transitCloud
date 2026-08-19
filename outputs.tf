output "resource_group_name" {
  description = "Name of the resource group"
  value       = module.resource_group.name
}

output "backend_url" {
  description = "Backend App Service URL"
  value       = "https://${module.backend.default_hostname}"
}

output "frontend_url" {
  description = "Frontend App Service URL"
  value       = "https://${module.frontend.default_hostname}"
}