#!/bin/bash
set -euo pipefail
read -p 'Username: ' USER
curl -O https://raw.githubusercontent.com/k4r1suma/workenv/master/install.yml
curl -O https://raw.githubusercontent.com/k4r1suma/workenv/master/rc.yml
ansible-playbook -K install.yml -e "user=$USER"
ansible-playbook rc.yml -e "user=$USER"
