# API-Terraform

1. Making sure that basic FLASK API is working locally ![image](https://github.com/user-attachments/assets/f8621143-a819-4d80-8c07-2ad5b9ff8dea)
2. ![image](https://github.com/user-attachments/assets/9bf16562-3609-44d5-adad-85bae254bc41)
3. Next we are going to deploy this service in Azure App service using terraform
4. cd app
    zip -r app.zip

   Initially we need to create backend storage account . I used bash script for that

 ![image](https://github.com/user-attachments/assets/3e01c7e5-01ae-47c4-a86b-1a30514585b5)

![image](https://github.com/user-attachments/assets/536a8e98-bbba-4306-a306-779c477f6e32)

![image](https://github.com/user-attachments/assets/0f4a65a4-ebf9-438c-9f14-05c788d3aedf)

Deployment is completed

![image](https://github.com/user-attachments/assets/473b8c61-078b-4ee2-a915-81aa22d78d8a)


State file is here

![image](https://github.com/user-attachments/assets/e982a708-5211-4a3f-ba2b-6e3312270dc9)

6.  az login
7.  az group create \
  --name my-resource-group \
  --location eastus2

8.  az storage account create \
  --name mystoragebiju \
  --resource-group my-resource-group \
  --location eastus2  \
  --sku Standard_LRS

    az storage blob upload \
  --account-name mystoragebiju \
  --container-name appdeploy \
  --name app.zip \
  --file app.zip


![image](https://github.com/user-attachments/assets/8b88f8c2-8450-477e-a6a3-7852723e4b04)





   
