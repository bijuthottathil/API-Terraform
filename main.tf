
module "app_service" {
  source              = "./modules/azure_app_service"
  resource_group_name = var.resource_group_name
  location            = var.location
  app_name            = var.app_name
  storage_account     = var.storage_account
  container_name      = var.container_name
  subscription_id     = var.subscription_id
  zip_path            = var.zip_path
}
        