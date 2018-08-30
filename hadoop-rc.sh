
## PSBIN is injected to rc files when calling install_scripts.sh
echo "loading PSBIN files from $PSBIN"
export PR=$HOME

export JAVA_HOME=$(dirname $(dirname $(readlink -e $(which javac))))
export HADOOP_CLASSPATH=${JAVA_HOME}/lib/tools.jar
export HADOOP_PREFIX=${PR}/hadoop-ucare/hadoop-dist/target/hadoop-2.1.0-beta
export HADOOP_CONF_DIR=${PSBIN}/hadoop-etc/hadoop-2.1.0-beta
export HADOOP_HOME=${HADOOP_PREFIX}
export HADOOP_LOG_DIR=/tmp/hadoop-ucare/logs/hadoop
export YARN_LOG_DIR=/tmp/hadoop-ucare/logs/yarn
export HADOOP_MAPRED_LOG_DIR=/tmp/hadoop-ucare/logs/mapred

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
