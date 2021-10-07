#!/bin/bash
set -euo pipefail
read -p 'Username: ' USER
curl -O https://raw.githubusercontent.com/yahsieh/workenv/master/install.yml
curl -O https://raw.githubusercontent.com/yahsieh/workenv/master/rc.yml
ansible-playbook -K install.yml -e "user=$USER"
ansible-playbook rc.yml -e "user=$USER"
