#!/bin/bash

dir="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null && pwd )"

cat << EOF > /tmp/psbin-source.sh
export PSBIN=$dir
source \$PSBIN/hadoop-rc.sh
EOF

cat /tmp/psbin-source.sh >> ~/.bashrc
cat /tmp/psbin-source.sh >> ~/.zshrc_local

