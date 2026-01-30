#!/usr/bin/env bash
set -euo pipefail

MODULE_DIRECTORY="${MODULE_DIRECTORY:-"/tmp/modules"}"

find ${MODULE_DIRECTORY}/

cp ${MODULE_DIRECTORY}/netbird/files/netbird.repo /etc/yum.repos.d/netbird.repo

echo "Output repo file:"
cat /etc/yum.repos.d/netbird.repo
rpm-ostree install netbird netbird-ui
