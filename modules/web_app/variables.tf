variable "name" {
  type = string
}

variable "resource_group_name" {
  type = string
}

variable "location" {
  type = string
}

variable "service_plan_id" {
  type = string
}

variable "docker_image_name" {
  type    = string
  default = ""
}

variable "docker_registry_url" {
  type    = string
  default = ""
}

variable "docker_registry_username" {
  type    = string
  default = ""
}

variable "docker_registry_password" {
  type      = string
  default   = ""
  sensitive = true
}

variable "app_settings" {
  type    = map(string)
  default = {}
}

variable "https_only" {
  type    = bool
  default = true
}

variable "always_on" {
  type    = bool
  default = false
}

variable "tags" {
  type    = map(string)
  default = {}
}