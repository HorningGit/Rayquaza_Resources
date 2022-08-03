# Azure

### Service Principles
- **Service principles** are _application users_ who have permissions to manage Azure resources.

##### Creating Azure Service Principles ~ [Azure CLI Document](https://docs.microsoft.com/en-us/cli/azure/create-an-azure-service-principal-azure-cli?view=azure-cli-latest)
```bash
az ad sp create-for-rbac --name="<ServicePrincipal name>" --role="Contributor" --scopes="/subscriptions/<subscription Id>"
```
