locals {
  resource_prefix = "${var.project}-${var.environment}"
}

# ──────────────────────────────────────────────
# Resource Group
# ──────────────────────────────────────────────
module "resource_group" {
  source = "./modules/resource_group"

  name     = "${local.resource_prefix}-rg"
  location = var.location
  tags = {
    project     = var.project
    environment = var.environment
  }
}

# ──────────────────────────────────────────────
# App Service Plan
# ──────────────────────────────────────────────
module "app_service_plan" {
  source              = "./modules/app_service_plan"
  name                = "${local.resource_prefix}-asp"
  resource_group_name = module.resource_group.name
  location            = module.resource_group.location
  os_type             = "Linux"
  sku_name            = "F1"
  tags = {
    project     = var.project
    environment = var.environment
  }
}

# ──────────────────────────────────────────────
# Backend Web App
# ──────────────────────────────────────────────
module "backend" {
  source = "./modules/web_app"

  name                = "${local.resource_prefix}-backend"
  resource_group_name = module.resource_group.name
  location            = module.resource_group.location
  service_plan_id     = module.app_service_plan.id

  docker_image_name        = "${var.ghcr_owner}/transit-backend:latest"
  docker_registry_url      = "https://ghcr.io"
  docker_registry_username = ""
  docker_registry_password = ""

  app_settings = {
    PORT = "8081"
  }

  tags = {
    project     = var.project
    environment = var.environment
  }
}

# ──────────────────────────────────────────────
# Frontend Web App
# ──────────────────────────────────────────────
module "frontend" {
  source = "./modules/web_app"

  name                = "${local.resource_prefix}-frontend"
  resource_group_name = module.resource_group.name
  location            = module.resource_group.location
  service_plan_id     = module.app_service_plan.id

  docker_image_name        = "${var.ghcr_owner}/transit-frontend:latest"
  docker_registry_url      = "https://ghcr.io"
  docker_registry_username = ""
  docker_registry_password = ""

  app_settings = {
    PORT                     = "3000"
    NEXT_PUBLIC_API_BASE_URL = "https://${module.backend.default_hostname}/api/v1"
  }

  tags = {
    project     = var.project
    environment = var.environment
  }
}