variable "resource_group_name" {
  description = "name of the resource group"
  type = string
  default = "rja-rg"
}
variable "location" {
  description = "The Azure region to deploy resources in"
  type        = string
  default = "East US"
}
variable "acr_name" {
  description = "The name of the Azure Container Registry"
  type        = string
  default     = "rjaacr2024"
}
variable "app_name" {
  description = "name of the azure app service"
  type = string
  default = "rja-webapp-2024"
}
variable "docker_image_name" {
  description = "name of the image"
  default = "rjaappimage"
}
