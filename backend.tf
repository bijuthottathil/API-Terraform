resource "azurerm_resource_group" "tfstate_rggp" {
  name     = "tfstate-rggp"
  location = var.location
}

resource "azurerm_storage_account" "tfstateaccount1526" {
  name                     = "tfstateaccount1526"
  resource_group_name      = azurerm_resource_group.tfstate_rggp.name
  location                 = azurerm_resource_group.tfstate_rggp.location
  account_tier             = "Standard"
  account_replication_type = "LRS"
}

resource "azurerm_storage_container" "tfstate" {
  name                  = "tfstate"
  storage_account_name  = azurerm_storage_account.tfstateaccount1526.name
  container_access_type = "private"
}
