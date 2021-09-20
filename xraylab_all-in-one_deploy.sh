#!/bin/bash
sudo yum install -y ansible
sudo pip3 uninstall ansible
sudo pip3 install ansible==2.10.7
ansible-galaxy collection install kubernetes.core

## Get AgnosticD and configure
git clone https://github.com/redhat-cop/agnosticd.git
export CURRENT_PATH=$(pwd)
export ANSIBLE_ROLES_PATH=$CURRENT_PATH/agnosticd/ansible/roles:$CURRENT_PATH/agnosticd/ansible/roles-infra:$CURRENT_PATH/agnosticd/ansible/roles_ocp_workloads:$CURRENT_PATH/agnosticd/ansible/roles_studentvm

## Create needed users


## Deploy workload
ansible-playbook -i localhost, -c local agnosticd/ansible/configs/ocp-workloads/ocp-workload.yml -e @./config/xraylab_all-in-one.yaml -e ACTION=create -e guid=0001 -e ansible_user=$(whoami) -e output_dir=. -e ocp_username=opentlc-mgr
