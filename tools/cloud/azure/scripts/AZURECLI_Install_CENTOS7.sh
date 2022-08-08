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

# Import the Microsoft repository key.
rpm --import https://packages.microsoft.com/keys/microsoft.asc

# Add the _packages-microsoft-prod_ repository into _/etc/yum.repos.d/ 
echo -e "[azure-cli] name=Azure CLI baseurl=https://packages.microsoft.com/yumrepos/azure-cli enabled=1 gpgcheck=1 gpgkey=https://packages.microsoft.com/keys/microsoft.asc" | sudo tee /etc/yum.repos.d/azure-cli.repo 

# Install Azure CLI with dnf
sudo dnf install azure-cli
