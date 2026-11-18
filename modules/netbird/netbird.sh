#!/usr/bin/env bash
set -euo pipefail

MODULE_DIRECTORY="${MODULE_DIRECTORY:-"/tmp/modules"}"

cp ${MODULE_DIRECTORY}/netbird/files/netbird.repo /etc/yum.repos.d/netbird.repo

# echo "Output repo file:"
# cat /etc/yum.repos.d/netbird.repo

dnf install --setopt=tsflags=noscripts -y netbird netbird-ui
# systemctl enable netbird.service
# mkdir /var/log/netbird
