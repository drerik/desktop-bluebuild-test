#!/usr/bin/env bash
set -euo pipefail

MODULE_DIRECTORY="${MODULE_DIRECTORY:-"/tmp/modules"}"

find ${MODULE_DIRECTORY}/
mkdir /usr/share/backgrounds/rl
cp ${MODULE_DIRECTORY}/rl-theme/files/rl.xml /usr/share/backgrounds/rl/rl.xml
cp ${MODULE_DIRECTORY}/rl-theme/files/default.png  /usr/share/backgrounds/rl/default.png
#Setting rl background to default
test -e /usr/share/backgrounds/default.png && rm /usr/share/backgrounds/default.png
test -e /usr/share/backgrounds/default.xml && rm /usr/share/backgrounds/default.xml

ln -s  /usr/share/backgrounds/rl/default.png /usr/share/backgrounds/default.png
ln -s  /usr/share/backgrounds/rl/rl.xml /usr/share/backgrounds/default.xml

