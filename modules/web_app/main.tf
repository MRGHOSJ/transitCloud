terraform {
  required_version = ">= 1.5.7"

  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = ">= 4.0.0, < 5.0.0"
    }
  }
}

resource "azurerm_linux_web_app" "this" {
  name                = var.name
  resource_group_name = var.resource_group_name
  location            = var.location
  service_plan_id     = var.service_plan_id

  https_only = var.https_only

  site_config {
    dynamic "application_stack" {
      for_each = var.docker_registry_username != "" ? [1] : []
      content {
        docker_image_name        = var.docker_image_name
        docker_registry_url      = var.docker_registry_url
        docker_registry_username = var.docker_registry_username
        docker_registry_password = var.docker_registry_password
      }
    }

    always_on = var.always_on
  }

  app_settings = var.app_settings

  tags = var.tags
}