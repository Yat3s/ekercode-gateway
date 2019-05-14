#!/bin/bash

# 下载依赖的 ansible roles
ansible-galaxy install -r ./ansible/requirements.yaml

# 运行部署工作
ansible-playbook --private-key ~/.ssh/id_rsa_ekercode \
  --inventory ./ansible/inventory.ini \
  --verbose \
  --start-at-task "copy docker-compose.yaml" \
  ./ansible/main.yaml
