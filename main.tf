resource "azurerm_resource_group" "example" {
  name     = var.resource_group_name
  location = var.location
}

module "acr" {
  source = "./modules/acr"
  acr_name            = var.acr_name
  resource_group_name = azurerm_resource_group.example.name
  location            = var.location
}

module "app_service" {
  source = "./modules/app_service"
  app_name            = var.app_name
  resource_group_name = azurerm_resource_group.example.name
  location            = azurerm_resource_group.example
  acr_login_server    = module.acr.login_server
  acr_username        = azurerm_container_registry.acr.admin_username
  acr_password        = azurerm_container_registry.acr.admin_password
  docker_image_name   = var.docker_image_name
}