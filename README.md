# API-Terraform

1. Making sure that basic FLASK API is working locally ![image](https://github.com/user-attachments/assets/f8621143-a819-4d80-8c07-2ad5b9ff8dea)
2. ![image](https://github.com/user-attachments/assets/9bf16562-3609-44d5-adad-85bae254bc41)
3. Next we are going to deploy this service in Azure App service using terraform
4. cd app
    zip -r app.zip
5.  az login
6.  az group create \
  --name my-resource-group \
  --location eastus

7.  az storage account create \
  --name mystoragebiju \
  --resource-group my-resource-group \
  --location eastus \
  --sku Standard_LRS

    az storage blob upload \
  --account-name mystoragebiju \
  --container-name appdeploy \
  --name app.zip \
  --file app.zip


![image](https://github.com/user-attachments/assets/8b88f8c2-8450-477e-a6a3-7852723e4b04)





   
