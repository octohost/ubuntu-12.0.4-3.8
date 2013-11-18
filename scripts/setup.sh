#!/bin/bash

# Update all packages.
sudo apt-get install -y python-software-properties
sudo add-apt-repository -y ppa:rquillo/ansible
sudo apt-get update
sudo apt-get -y upgrade

/usr/sbin/update-locale

# install the backported kernel
sudo apt-get install -y linux-image-generic-lts-raring linux-headers-generic-lts-raring

# Install Chef
curl -L https://www.opscode.com/chef/install.sh | sudo bash

# Install Ansible
sudo apt-get install -y ansible