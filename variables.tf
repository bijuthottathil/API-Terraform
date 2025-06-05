variable "resource_group_name" {}
variable "location" {}
variable "app_name" {}
variable "storage_account" {}
variable "container_name" {}
variable "subscription_id" {}
variable "zip_path" {}



variable "client_id" {
  description = "Azure client ID"
  type        = string
}

variable "client_secret" {
  description = "Azure client secret"
  type        = string
}

variable "tenant_id" {
  description = "Azure tenant ID"
  type        = string
}
