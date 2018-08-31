#!/usr/bin/env bash

. cluster_topology.sh

ssh $HDFS_NN 'printenv | egrep "(HADOOP)|(YARN)|(PSBIN)|(PR)"'
