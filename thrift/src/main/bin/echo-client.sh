#!/bin/bash

dir=$(dirname "$0")
dir=$(cd "$dir" > /dev/null 2>&1; pwd)
source "$dir"/echo-env.sh

clazz=echo.EchoClient
java $ECHO_JAVA_OPTS $ECHO_JAVA_OPTS_EXTRA $clazz "$@"
