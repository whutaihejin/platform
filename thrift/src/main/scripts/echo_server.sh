#!/bin/bash

cd ..

for i in $(ls lib/*.jar);
do CLASSPATH="$CLASSPATH":$PWD/$i;
done

echo "CLASSPATH="$CLASSPATH

nohup java -server -Xmx1024m -Xms1024m -Xmn512m -classpath .:config:$CLASSPATH echo.EchoServer > echo.log 2>&1 &
