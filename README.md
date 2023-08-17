# AzureOpenAI-APIM

## Overview

Purpose and summary

### Solutions

- [Azure Commercial API Management to Azure Open AI](#azure-commercial-api-management-to-azure-open-ai)
- [Azure Commercial API Management to Azure Open AI with private endpoints](#azure-commercial-api-management-to-azure-open-ai-with-private-endpoints)
- [Azure Government API Management to Azure Open AI](#azure-government-api-management-to-azure-open-ai)
- [Azure Government API Management to Azure Open AI with private endpoints](#azure-government-api-management-to-azure-open-ai-with-private-endpoints)

### Using it

- [Steps and examples on how to use your APIM-based API to query your Azure Open AI API](#tying-it-all-together)

### Prerequisites

#### Azure 

- Contributor permissions to subscription or existing resource group
- Resource Group (or ability to create)
- Azure Open AI service deployed
  - Solution Accelerator: Deploy Azure Open AI with Front Door, secured with Web App Firewall 
    - This is a link to another repo to deploy AOAI + Front Door, Repo is TBD.

- Azure Open AI service URL
- Azure Open AI key
- [Azure Government Only] Azure Open AI service public IP

#### One-Button

Each solution provides a simple one-button deployment. Select the "Deploy to Azure" button which will open the Azure portal and provide a form for details.

#### Command Line

To use the command line deployment method, fork the library and use Codespaces or clone the forked library to your local computer.

- [GitHub Codespaces](https://github.com/features/codespaces)

##### Azure CLI

- [How to install the Azure CLI | Microsoft Learn](https://learn.microsoft.com/en-us/cli/azure/install-azure-cli)
- [Connect to Azure Government with Azure CLI - Azure Government | Microsoft Learn](https://learn.microsoft.com/en-us/azure/azure-government/documentation-government-get-started-connect-with-cli)

##### Azure PowerShell

- [How to install Azure PowerShell | Microsoft Learn](https://learn.microsoft.com/en-us/powershell/azure/install-azure-powershell?view=azps-10.2.0)
- [Connect to Azure Government with PowerShell - Azure Government | Microsoft Learn](https://learn.microsoft.com/en-us/azure/azure-government/documentation-government-get-started-connect-with-ps)

## Architectures

Summary

- 

### Azure Commercial API Management to Azure Open AI

Description

![Azure Commercial API Management to Azure Open AI](./images/architecture-commercial_apim-to-aoai.png)

#### Deploy

**! NOTE !** - It can take up to 45 minutes for all services to deploy as API Management has many underlying Azure resources deployed running the service.

##### One Button

Simple one-button deployment, opens in Azure Portal

[![Deploy to Azure](https://aka.ms/deploytoazurebutton)](https://portal.azure.com/#create/Microsoft.Template/uri/https%3A%2F%2Fraw.githubusercontent.com%2Fpaullizer%2FAzureOpenAI-with-APIM%2Fmain%2Fpublic-apim.json)

##### Azure CLI

```powershell
# Update the following variables to use the appropriate resource group and subscription.
$resourceGroupName = "RG-APIM-OpenAI"
$location = "East US"
$subscriptionName = "MySubscription"

az login
az account set --subscription $subscriptionName
az group create --name $resourceGroupName --location $location
az deployment group create --resource-group $resourceGroupName  --template-file .\public-apim.bicep --mode Incremental
```

##### Azure PowerShell

```powershell
# Update the following variables to use the appropriate resource group and subscription.
$resourceGroupName = "RG-APIM-OpenAI"
$location = "East US"
$subscriptionName = "MySubscription"

Connect-AzAccount
Set-AzContext -Subscription $subscriptionName
New-AzResourceGroup -Name $resourceGroupName -Location $location
New-AzResourceGroupDeployment -ResourceGroupName $resourceGroupName -TemplateFile .\public-apim.bicep -Verbose -mode Incremental
```



### Azure Commercial API Management to Azure Open AI with private endpoints

Description

![Azure Commercial API Management to Azure Open AI with private endpoints](./images/architecture-private-commercial_apim-to-aoai.png)

#### Deploy

**! NOTE !** - It can take up to 45 minutes for all services to deploy as API Management has many underlying Azure resources deployed running the service.

##### One Button

Simple one-button deployment, opens in Azure Portal

[![Deploy to Azure](https://aka.ms/deploytoazurebutton)](https://portal.azure.com/#create/Microsoft.Template/uri/https%3A%2F%2Fraw.githubusercontent.com%2Fpaullizer%2FAzureOpenAI-with-APIM%2Fmain%2Fprivate-apim.json)

##### Azure CLI

```powershell
# Update the following variables to use the appropriate resource group and subscription.
$resourceGroupName = "RG-APIM-OpenAI"
$location = "East US"
$subscriptionName = "MySubscription"

az login
az account set --subscription $subscriptionName
az group create --name $resourceGroupName --location $location
az deployment group create --resource-group $resourceGroupName  --template-file .\private-apim.bicep --mode Incremental
```

##### Azure PowerShell

```powershell
# Update the following variables to use the appropriate resource group and subscription.
$resourceGroupName = "RG-APIM-OpenAI"
$location = "East US"
$subscriptionName = "MySubscription"

Connect-AzAccount
Set-AzContext -Subscription $subscriptionName
New-AzResourceGroup -Name $resourceGroupName -Location $location
New-AzResourceGroupDeployment -ResourceGroupName $resourceGroupName -TemplateFile .\private-apim.bicep -Verbose -mode Incremental
```

### 

### Azure Government API Management to Azure Open AI

Description

![Azure Government API Management to Azure Open AI](./images/architecture-government_apim-to-aoai.png)

#### Deploy

**! NOTE !** - It can take up to 45 minutes for all services to deploy as API Management has many underlying Azure resources deployed running the service.

##### One Button

Simple one-button deployment, opens in Azure Portal

[![Deploy to Azure Government](https://aka.ms/deploytoazuregovbutton)](https://portal.azure.us/#create/Microsoft.Template/uri/https%3A%2F%2Fraw.githubusercontent.com%2Fpaullizer%2FAzureOpenAI-with-APIM%2Fmain%2Fpublic-apim.json)

##### Azure CLI

```powershell
# Update the following variables to use the appropriate resource group and subscription.
$resourceGroupName = "RG-APIM-OpenAI"
$location = "East US"
$subscriptionName = "MySubscription"

az cloud set --name AzureUSGovernment
az login
az account set --subscription $subscriptionName
az group create --name $resourceGroupName --location $location
az deployment group create --resource-group $resourceGroupName  --template-file .\public-apim.bicep --mode Incremental
```

##### Azure PowerShell

```powershell
# Update the following variables to use the appropriate resource group and subscription.
$resourceGroupName = "RG-APIM-OpenAI"
$location = "East US"
$subscriptionName = "MySubscription"

Connect-AzAccount -Environment AzureUSGovernment
Set-AzContext -Subscription $subscriptionName
New-AzResourceGroup -Name $resourceGroupName -Location $location
New-AzResourceGroupDeployment -ResourceGroupName $resourceGroupName -TemplateFile .\public-apim.bicep -Verbose -mode Incremental
```



### Azure Government API Management to Azure Open AI with private endpoints

Description

![Azure Government API Management to Azure Open AI with private endpoints](./images/architecture-private-government_apim-to-aoai.png)

#### Deploy

**! NOTE !** - It can take up to 45 minutes for all services to deploy as API Management has many underlying Azure resources deployed running the service.

##### One Button

Simple one-button deployment, opens in Azure Portal

[![Deploy to Azure Government](https://aka.ms/deploytoazuregovbutton)](https://portal.azure.com/#create/Microsoft.Template/uri/https%3A%2F%2Fraw.githubusercontent.com%2Fpaullizer%2FAzureOpenAI-with-APIM%2Fmain%2Fprivate-apim-azure_government.json)

##### Azure CLI

```powershell
# Update the following variables to use the appropriate resource group and subscription.
$resourceGroupName = "RG-APIM-OpenAI"
$location = "East US"
$subscriptionName = "MySubscription"

az cloud set --name AzureUSGovernment
az login
az account set --subscription $subscriptionName
az group create --name $resourceGroupName --location $location
az deployment group create --resource-group $resourceGroupName  --template-file .\private-apim-azure_government.bicep --mode Incremental
```

##### Azure PowerShell

```powershell
# Update the following variables to use the appropriate resource group and subscription.
$resourceGroupName = "RG-APIM-OpenAI"
$location = "East US"
$subscriptionName = "MySubscription"

Connect-AzAccount -Environment AzureUSGovernment
Set-AzContext -Subscription $subscriptionName
New-AzResourceGroup -Name $resourceGroupName -Location $location
New-AzResourceGroupDeployment -ResourceGroupName $resourceGroupName -TemplateFile .\private-apim-azure_government.bicep -Verbose -mode Incremental
```

## Tying it All together

Now you have your APIM deployed and in front of your Azure Open AI API, the following examples will show you how to query and interact.

### Get your APIM Subscription Key

You can use this key for testing or as an example on how to create subscriptions to provide access to you Azure Open AI service. Instead of sharing your Azure Open AI Key, you create subscriptions in APIM and share this key, then you can analyze and monitor usage, provide guardrails for usage, and manage access.

[INSERT STEPS HERE]

### Get your APIM Azure Open AI URL

Description

[INSERT STEPS HERE]

### Query Examples

#### curl

```bash
curl https://INSERTAPIMURLHERE/deployments/GPT-3_5-Turbo/chat/completions?api-version=2023-03-15-preview -k -H "Content-Type: application/json" -H "Ocp-Apim-Subscription-Key: INSERTKEYHERE" -d '{
    "messages": [
        {
            "role": "system",
            "content": "You are an AI assistant that helps people find information."
        },
        {
            "role": "user",
            "content": "What are the differences between Azure Machine Learning and Azure AI services?"
        }
    ]
}'
```

#### .net

```c#
// Note: The Azure OpenAI client library for .NET is in preview.
// Install the .NET library via NuGet: dotnet add package Azure.AI.OpenAI --version 1.0.0-beta.5 
using Azure;
using Azure.AI.OpenAI;

OpenAIClient client = new OpenAIClient(
	new Uri("https://INSERTAPIMURLHERE/deployments/GPT-3_5-Turbo/chat/completions?api-version=2023-03-15-preview"),
	new AzureKeyCredential("INSERTKEYHERE"));

// ### If streaming is not selected
Response<ChatCompletions> responseWithoutStream = await client.GetChatCompletionsAsync(
	"GPT-3_5-Turbo",
	new ChatCompletionsOptions()
	{
		Messages =
		{
			new ChatMessage(ChatRole.System, @"You are an AI assistant that helps people find information."),
			new ChatMessage(ChatRole.User, @"What are the differences between Azure Machine Learning and Azure AI services?"),
		},
		Temperature = (float)0,
		MaxTokens = 800,
		NucleusSamplingFactor = (float)1,
		FrequencyPenalty = 0,
		PresencePenalty = 0,
	});

// The following code shows how to get to the content from Azure Open AI's response
ChatCompletions completions = responseWithoutStream.Value; 
ChatChoice choice = completions.Choices[0];
Console.WriteLine(choice.Message.Content);
```

