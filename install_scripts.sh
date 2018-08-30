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

#append this on top of .zshrc_local
touch ~/.zshrc_local
cat /tmp/psbin-source.sh ~/.zshrc_local >> /tmp/temp-zshrc_local
mv /tmp/temp-zshrc_local ~/.zshrc_local

