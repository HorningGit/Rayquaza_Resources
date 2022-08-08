# :cloud: Azure :cloud:

## Installing Azure CLI on RHEL
1. Import the Microsoft repository key.
```bash
sudo rpm --import https://packages.microsoft.com/keys/microsoft.asc
```
2. Add the _packages-microsoft-prod_ repository into _/etc/yum.repos.d/_
- **RHEL/CENTOS 8:**
```bash
sudo dnf install -y https://packages.microsoft.com/config/rhel/8/packages-microsoft-prod.rpm
```
- **RHEL/CENTOS 7**
```bash
echo -e "[azure-cli]
name=Azure CLI
baseurl=https://packages.microsoft.com/yumrepos/azure-cli
enabled=1
gpgcheck=1
gpgkey=https://packages.microsoft.com/keys/microsoft.asc" | sudo tee /etc/yum.repos.d/azure-cli.repo
```
3. Install with the **dnf install** command.
```bash
sudo dnf install azure-cli
```

## Service Principles
**Service principles** are _application users_ who have permissions to manage Azure resources.

#### Creating Azure Service Principles ~ [Azure CLI Document](https://docs.microsoft.com/en-us/cli/azure/create-an-azure-service-principal-azure-cli?view=azure-cli-latest)
```bash
az ad sp create-for-rbac --name="<ServicePrincipal name>" --role="Contributor" --scopes="/subscriptions/<subscription Id>"
```
  - This commmand will create three pieces of identification information:
    - Application ID (client ID)
    - Client Secret
    - Tenant ID
