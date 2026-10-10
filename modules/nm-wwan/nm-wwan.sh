#!/usr/bin/env bash
set -euo pipefail

MODULE_DIRECTORY="${MODULE_DIRECTORY:-"/tmp/modules"}"

find ${MODULE_DIRECTORY}/

# cp ${MODULE_DIRECTORY}/netbird/files/netbird.repo /etc/yum.repos.d/netbird.repo

rpm-ostree install NetworkManager-wwan
# mkdir /var/log/netbird
