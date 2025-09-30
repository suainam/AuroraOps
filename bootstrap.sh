#!/bin/bash
set -e

# 1. 更新系统
apt update && apt upgrade -y

# 2. 安装基础依赖
apt install -y python3 python3-pip python3-venv git curl sshpass software-properties-common

# 3. 安装 ansible（Debian 12 官方仓库版本较新，足够用）
apt install -y ansible

# 4. 验证 ansible 是否可用
ansible --version

echo "✅ Ansible 已安装完成，可以运行 playbooks/init.yml 了"

