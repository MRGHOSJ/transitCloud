variable "project" {
  description = "Tunisian public transport"
  type        = string
  default     = "transit"
}

variable "environment" {
  description = "Environment tag (dev, staging, prod)"
  type        = string
  default     = "dev"
}

variable "location" {
  description = "Azure region"
  type        = string
  default     = "francecentral"
}

variable "ghcr_owner" {
  description = "GitHub username or org for GHCR images"
  type        = string
  default     = "MRGHOSJ"
}