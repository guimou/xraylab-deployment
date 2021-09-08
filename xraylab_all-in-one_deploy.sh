#!/bin/bash
## Install packages and bugfix core kubernetes module (https://github.com/ansible-collections/kubernetes.core/issues/162)
sudo yum install -y ansible patch
ansible-galaxy collection install kubernetes.core
cp 163.diff ~/.ansible/collections/ansible_collections/kubernetes/core/163.diff
(cd ~/.ansible/collections/ansible_collections/kubernetes/core;patch -p1 < 163.diff)

## Get AgnosticD and configure
git clone https://github.com/redhat-cop/agnosticd.git
export CURRENT_PATH=$(pwd)
export ANSIBLE_ROLES_PATH=$CURRENT_PATH/agnosticd/ansible/roles:$CURRENT_PATH/agnosticd/ansible/roles-infra:$CURRENT_PATH/agnosticd/ansible/roles_ocp_workloads:$CURRENT_PATH/agnosticd/ansible/roles_studentvm

## Deploy workload
ansible-playbook -i localhost, -c local agnosticd/ansible/configs/ocp-workloads/ocp-workload.yml -e @./config/xraylab_all-in-one.yaml -e ACTION=create -e guid=0001 -e ansible_user=$(whoami) -e output_dir=. -e ocp_username=opentlc-mgr
