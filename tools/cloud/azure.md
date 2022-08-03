# Azure

### Service Principles
- **Service principles** are _application users_ who have permissions to manage Azure resources.

##### Creating Azure Service Principles
```bash
az ad sp create-for-rbac --name="<ServicePrincipal name>" --role="Contributor" --scopes="/subscriptions/<subscription Id>"
```
