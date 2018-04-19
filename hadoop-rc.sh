#!/bin/bash

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

export PR=${DIR}/../..

export JAVA_HOME=/usr/lib/jvm/java-7-openjdk-amd64
export HADOOP_CLASSPATH=${JAVA_HOME}/lib/tools.jar
export HADOOP_PREFIX=${DIR}/../hadoop-dist/target/hadoop-2.7.1
export HADOOP_CONF_DIR=${DIR}/hadoop-etc/hadoop-2.7.1
export HADOOP_HOME=${HADOOP_PREFIX}
export HADOOP_LOG_DIR=/tmp/hadoop-ucare/logs/hadoop
export YARN_LOG_DIR=/tmp/hadoop-ucare/logs/yarn
export HADOOP_MAPRED_LOG_DIR=/tmp/hadoop-ucare/logs/mapred

export PSBIN=${DIR}
export PATH=${HADOOP_PREFIX}/bin:${HADOOP_PREFIX}/sbin:${PSBIN}:${PATH}

alias h="history 25"
alias la="ls -a"
alias lf="ls -FA"
alias ll="ls -lA"

alias pr="cd $PR"
alias e="vim"
alias hp="cd $HADOOP_PREFIX"
alias hconf="cd $HADOOP_CONF_DIR"
alias hlogs="cd /tmp/logs/yarn/userlogs/"
alias m="make"
alias mall="make all"
alias n0="ssh node-0"
alias mjl="mapred job -list"
alias mjs="mapred job -status"
alias psbin="cd $PSBIN"
