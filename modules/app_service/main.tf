resource "azurerm_app_service_plan" "asp" {
  name = "${var.app_name}-plan"
  resource_group_name = var.resource_group_name
  location = var.location
  kind = "Linux"
  reserved = true
  sku {
    tier = "Free"
    size = "F1"
  } 
}

resource "azurerm_app_service" "app" {
    name = var.app_name
    location = var.location
    resource_group_name = var.resource_group_name
    app_service_plan_id = azurerm_app_service_plan.asp.id
    site_config {
      linux_fx_version = "DOCKER|${var.acr_login_server}/${var.docker_image_name}:latest"
      }
    app_settings = {
      "DOCKER_REGISTRY_SERVER_URL"      = "https://${var.acr_login_server}"
      "DOCKER_REGISTRY_SERVER_USERNAME" = var.acr_username
      "DOCKER_REGISTRY_SERVER_PASSWORD" = var.acr_password
    }
}