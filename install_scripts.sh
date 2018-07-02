#!/bin/sh

dir=$(CDPATH= cd -- "$(dirname -- "$0")" && pwd)

echo "source $dir/hadoop-rc.sh" >> ~/.bashrc

