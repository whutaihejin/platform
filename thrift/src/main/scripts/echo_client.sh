#!/bin/bash

dir=$(dirname $0)
cd $dir && cd ..
PWD=$(pwd)

for jar in $(ls lib/*.jar); do
    CLASSPATH="$CLASSPATH":$PWD/$jar;
done

echo "CLASSPATH="$CLASSPATH

java -classpath .:config:$CLASSPATH echo.EchoClient
