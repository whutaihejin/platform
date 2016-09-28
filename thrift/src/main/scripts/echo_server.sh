#!/bin/bash

dir=$(dirname $0)
cd $dir && cd ..
PWD=$(pwd)

for i in $(ls lib/*.jar);
do CLASSPATH="$CLASSPATH":$PWD/$i;
done

echo "CLASSPATH="$CLASSPATH

nohup java -server -Xmx1024m -Xms1024m -Xmn512m -classpath .:config:$CLASSPATH echo.EchoServer > echo.log 2>&1 &
