#!/bin/bash

. cluster_topology.sh

clstop
cp $PSBIN/hadoop-etc/templates/standard/* $HADOOP_CONF_DIR/
sed_replaceconf.sh

# uncomment lines bellow if total cleanup is desired
# clcleanlogs
# clreset
# clsetup
# ssh -t $HDFS_NN "dfsformat;"

