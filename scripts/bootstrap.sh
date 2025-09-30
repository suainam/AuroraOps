#!/bin/bash
set -euo pipefail
apt update && apt upgrade -y
apt install -y python3 python3-pip python3-venv git curl sshpass software-properties-common
apt install -y ansible
ansible --version
echo "Ansible ready."
