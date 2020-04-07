#!/bin/bash
set -euo pipefail
ansible-playbook -K install.yml
ansible-playbook rc.yml
