variable "name" {
  description = "Name of the Web App"
  type        = string
}

variable "resource_group_name" {
  description = "Name of the resource group to deploy into"
  type        = string
}

variable "location" {
  description = "Azure region for deployment"
  type        = string
}

variable "service_plan_id" {
  description = "ID of the App Service Plan to attach to"
  type        = string
}

variable "docker_image_name" {
  description = "Docker image to deploy (e.g. owner/image:tag)"
  type        = string
  default     = ""
}

variable "docker_registry_url" {
  description = "Docker registry URL (e.g. https://ghcr.io)"
  type        = string
  default     = ""
}

variable "docker_registry_username" {
  description = "Docker registry username (leave empty for public repos)"
  type        = string
  default     = ""
}

variable "docker_registry_password" {
  description = "Docker registry password or PAT (leave empty for public repos)"
  type        = string
  default     = ""
  sensitive   = true
}

variable "app_settings" {
  description = "Additional app settings as key-value pairs"
  type        = map(string)
  default     = {}
}

variable "https_only" {
  description = "Restrict traffic to HTTPS only"
  type        = bool
  default     = true
}

variable "always_on" {
  description = "Keep the app loaded when idle. Ignored on F1 (free) tier — always false there regardless of this setting."
  type        = bool
  default     = false
}

variable "tags" {
  description = "Tags to apply to all resources"
  type        = map(string)
  default     = {}
}
