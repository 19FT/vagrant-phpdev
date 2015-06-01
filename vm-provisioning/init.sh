#!/usr/bin/env bash

export DEBIAN_FRONTEND=noninteractive

sudo apt-key adv --keyserver keyserver.ubuntu.com --recv-keys 4F4EA0AAE5267A6C

if [ $(dpkg-query -W -f='${Status}' ansible 2>/dev/null | grep -c "ok installed") -eq 0 ];
then
    echo "Add repositories"
    apt-get install -qq software-properties-common &> /dev/null || exit 1
    apt-add-repository ppa:ansible/ansible &> /dev/null || exit 1
    apt-add-repository ppa:ondrej/php5-5.6 &> /dev/null || exit 1

    apt-get update -qq

    echo "Installing Ansible"
    apt-get install -qq ansible &> /dev/null || exit 1

    echo "Ansible installed"
fi

echo "Run apt-get upgrade"
apt-get update -qq
DEBIAN_FRONTEND=noninteractive
apt-get upgrade -y

cd /vagrant/vm-provisioning
ansible-playbook setup.yml --connection=local

echo "Done"
