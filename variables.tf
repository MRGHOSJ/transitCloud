variable "project" {
  description = "Tunisian public transport"
  type        = string
  default     = "transit"

  validation {
    condition     = can(regex("^[a-z][a-z0-9-]{1,30}$", var.project))
    error_message = "Project name must be lowercase alphanumeric with hyphens, 2-31 characters."
  }
}

variable "environment" {
  description = "Environment tag (dev, staging, prod)"
  type        = string
  default     = "dev"

  validation {
    condition     = contains(["dev", "staging", "prod"], var.environment)
    error_message = "Environment must be one of: dev, staging, prod."
  }
}

variable "location" {
  description = "Azure region"
  type        = string
  default     = "francecentral"

  validation {
    condition     = can(regex("^[a-z]+[a-z0-9]+$", var.location))
    error_message = "Location must be a valid lowercase Azure region name (e.g. francecentral, eastus)."
  }
}

variable "ghcr_owner" {
  description = "GitHub username or org for GHCR images"
  type        = string
  default     = "MRGHOSJ"
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