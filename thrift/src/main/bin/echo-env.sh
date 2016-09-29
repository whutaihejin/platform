#!/bin/bash
this="${BASH_SOURCE-$0}"
# process link file
while [ -h "$this" ]; do
  info=$(ls -ld "$this")
  link=$(expr "$info" : '.*-> \(.*\)$')
  if expr "$link" : '.*/.*' > /dev/null 2>&1; then
    this="$link"
  else
    this=$(dirname "$this")/"$link"
  fi
done
# convert relative path to absolute path
bin=$(dirname "$this")
script=$(basename "$this")
bin=$(cd "$bin" > /dev/null 2>&1; pwd)

# define ECHO_HOME
export ECHO_HOME=$(dirname "$bin")

# define ECHO_CONF_DIR
if [ "$ECHO_CONF_DIR" = "" ]; then
  export ECHO_CONF_DIR="$ECHO_HOME/conf"
fi

# define WG_CLASSPATH
cp=$(find "$ECHO_HOME/lib" | grep 'jar$' | sort | paste -s -d ':' -)
export ECHO_CLASSPATH="$cp:$ECHO_CONF_DIR" # 添加 $ECHO_CONF_DIR 以便配置log4j等日志系统

# define ECHO_JAVA_OPTS
debug_opts=""
if [ "$ECHO_DEBUG" = "1" -o "$ECHO_DEBUG" = "true" ]; then
  debug_opts="-agentlib:jdwp=transport=dt_socket,server=y,suspend=y,address=5005"
fi
log4j_opts="-Dlog4j.configuration=echo-log4j.properties"
http_opts="-Dhttp.keepAlive=true -Dhttp.maxConnections=128"
native_opts="-Djava.library.path=$ECHO_HOME/lib/native"
export ECHO_JAVA_OPTS="-cp $ECHO_CLASSPATH $log4j_opts $debug_opts $http_opts $native_opts"
