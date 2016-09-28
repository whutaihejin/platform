#!/bin/bash

dir=$(dirname $0)
cd $dir && cd ..
PWD=$(pwd)

for jar in $(ls lib/*.jar); do
    CLASSPATH="$CLASSPATH":$PWD/$jar;
done

echo "CLASSPATH="$CLASSPATH
echo -e "java -server -Xmx1024m -Xms1024m -Xmn512m -classpath .:config:$CLASSPATH echo.EchoServer > echo.log 2>&1"
nohup java -server -Xmx1024m -Xms1024m -Xmn512m -classpath .:config:$CLASSPATH echo.EchoServer > echo.log 2>&1 &
