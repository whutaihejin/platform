#!/bin/bash

cd ..

for i in $(ls lib/*.jar);
do CLASSPATH="$CLASSPATH":$PWD/$i;
done

echo "CLASSPATH="$CLASSPATH

java -classpath .:config:$CLASSPATH echo.EchoClient
