module "resource_group" {
  source              = "./modules/resource_group"
  name                = var.resource_group_name
  location            = var.location
}

# module "acr" {
#   source              = "./modules/acr"
#   acr_name            = "rajeshacr"
#   resource_group_name = azurerm_resource_group.rg.name
#   location            = azurerm_resource_group.rg.location
# }

# module "app_service" {
#   source              = "./modules/app_service"
#   app_name            = "rajeshapp"
#   resource_group_name = azurerm_resource_group.rg.name
#   location            = azurerm_resource_group.rg.location
#   acr_login_server    = module.acr.acr_login_server
#   acr_username        = "rajeshacr" # or use azurerm_container_registry.acr.admin_username
#   acr_password        = "supersecret" # or use azurerm_container_registry.acr.admin_password
#   image_name          = "tic-tac-toe"
# }
