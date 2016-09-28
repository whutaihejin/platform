#!/bin/bash

dir=$(dirname $0)
cd $dir && cd ..
PWD=$(pwd)

for i in $(ls lib/*.jar);
do CLASSPATH="$CLASSPATH":$PWD/$i;
done

echo "CLASSPATH="$CLASSPATH

java -classpath .:config:$CLASSPATH echo.EchoClient
