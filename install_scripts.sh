#!/bin/bash

dir="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null && pwd )"

echo "source $dir/hadoop-rc.sh" >> ~/.bashrc
echo "emulate sh -c \"source $dir/hadoop-rc.sh\"" >> ~/.zshrc_local

