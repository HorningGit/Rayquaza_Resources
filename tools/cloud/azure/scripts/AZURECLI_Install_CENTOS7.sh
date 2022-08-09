#!/bin/bash 

###################################################################
# Script Name   : AzureCLI_Install_RHEL8.sh
# Description   : Installation of Azure CLI
# Author        : Alexander Horning
# Email         : Alex.Horning@gmail.com
###################################################################

# Automatic exit if commands fail
set -e
set -o pipefail

# Import the Microsoft repository key.
rpm --import https://packages.microsoft.com/keys/microsoft.asc

# Add the _packages-microsoft-prod_ repository into _/etc/yum.repos.d/ 
sudo dnf install -y https://packages.microsoft.com/config/rhel/8/packages-microsoft-prod.rpm

# Install Azure CLI with dnf
sudo dnf install azure-cli
