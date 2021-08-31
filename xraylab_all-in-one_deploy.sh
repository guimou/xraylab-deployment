#!/bin/bash
ansible-playbook -i localhost, -c local ../GPTE/agnosticd/ansible/configs/ocp-workloads/ocp-workload.yml -e @./config/xraylab_all-in-one.yaml -e ACTION=create -e guid=0001 -e ansible_user=$(whoami) -e output_dir=. -e ocp_username=opentlc-mgr
