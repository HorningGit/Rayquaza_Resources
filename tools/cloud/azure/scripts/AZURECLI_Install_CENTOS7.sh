#!/bin/bash 

###################################################################
# Script Name   : AzureCLI_Install_CENTOS7.sh
# Description   : Installation of Azure CLI
# Author        : Alexander Horning
# Email         : Alex.Horning@gmail.com
###################################################################

# Automatic exit if commands fail
set -e
set -o pipefail

# Import Mic
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

echo -e "[azure-cli] name=Azure CLI baseurl=https://packages.microsoft.com/yumrepos/azure-cli enabled=1 gpgcheck=1 gpgkey=https://packages.microsoft.com/keys/microsoft.asc" | sudo tee /etc/yum.repos.d/azure-cli.repo 

sudo dnf install azure-cli
