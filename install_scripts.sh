#!/usr/bin/env bash

dir="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null && pwd )"

cat << EOF > /tmp/psbin-source.sh
export PSBIN=$dir
source \$PSBIN/hadoop-rc.sh
EOF

# append this on top of .bashrc
touch ~/.bashrc
cat /tmp/psbin-source.sh ~/.bashrc >> /tmp/temp-bashrc
mv /tmp/temp-bashrc ~/.bashrc

#append this on top of .zshenv_local
touch ~/.zshenv_local
cat /tmp/psbin-source.sh ~/.zshenv_local >> /tmp/temp-zshenv_local
mv /tmp/temp-zshenv_local ~/.zshenv_local

