#!/bin/bash

# Update all packages.
sudo apt-get install -y python-software-properties
sudo add-apt-repository -y ppa:rquillo/ansible
sudo apt-get update
sudo apt-get -y upgrade

export LANGUAGE=en_US.UTF-8
export LANG=en_US.UTF-8
export LC_ALL=en_US.UTF-8

sudo locale-gen en_US.UTF-8
sudo dpkg-reconfigure locales
sudo touch /root/.locale-fixed
sudo /usr/sbin/update-locale

# install the backported kernel
sudo apt-get install -y linux-image-generic-lts-raring linux-headers-generic-lts-raring

# Install Chef
curl -L https://www.opscode.com/chef/install.sh | sudo bash

# Install Ansible
sudo apt-get install -y ansible
