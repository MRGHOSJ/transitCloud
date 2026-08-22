output "name" {
  description = "Name of the Web App"
  value       = azurerm_linux_web_app.this.name
}

output "default_hostname" {
  description = "Default hostname of the Web App (e.g. app-name.azurewebsites.net)"
  value       = azurerm_linux_web_app.this.default_hostname
}

output "id" {
  description = "ID of the Web App"
  value       = azurerm_linux_web_app.this.id
}
