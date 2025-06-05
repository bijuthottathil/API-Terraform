resource_group_name = "python-microservice-rg"
location            = "East US2"
app_name            = "python-microservice-app"
storage_account     = "pyappstoracct"
container_name      = "app-container"

subscription_id = "Your_Subscription_ID_Here"
client_id       = "Your_Client_ID_Here"
client_secret   = "Your_Client_Secret_Here"
tenant_id       = "Your_Tenant_ID_Here"
# In prod-we need to store above details in Azure Key Vault and fetch them using Terraform
