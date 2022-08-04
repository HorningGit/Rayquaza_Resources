### Terraform Language
- Blocks: Containers for objects like resources.
- Arguments: Assign values to a name.
- Expressions: Represent a value.

___
### Terraform Providers
- [Microsoft Azure](https://registry.terraform.io/providers/hashicorp/azurerm/latest)
- [Kubernetes](https://registry.terraform.io/providers/hashicorp/kubernetes/latest)
- [Amazon Web Services](https://registry.terraform.io/providers/hashicorp/aws/latest)

___
### Configure Terraform for Azure Authentication
1. First, an Azure **service principle** is required for Terraform code to authenticate to Azure.
2. Use the [export](https://www.man7.org/linux/man-pages/man1/export.1p.html) command to configure the following Terraform environment variables:
```bash
export ARM_SUBSCRIPTION_ID=xxxxx-xxxxx-xxxx-xxxx
export ARM_CLIENT_ID=xxxxx-xxxxx-xxxx-xxxx
export ARM_CLIENT_SECRET=xxxxxxxxxxxxxxxxxx
export ARM_TENANT_ID=xxxxx-xxxxx-xxxx-xxxx
```

```terraform
provider "azurerm" {}
```


___
### Creating Resources
General Syntax for Resource Creation:
  - Resource = Name of provider (ex. aws)
  - TYPE = Resource to be created
  - NAME = Reference name to be called in later code
  - CONFIG = Arguments to define resource attributes
```terraform
resource "<PROVIDER>_<TYPE>" "<NAME>" {
  [CONFIG ...]
}
```

```terraform
provider "azurerm" {}
```
