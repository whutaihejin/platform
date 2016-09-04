#!/bin/bash

for animal in dog cat elephant; do
  echo "There are ${animal}s ..."
done

network="192.128.1"
for host in $(seq 1 100); do
  pring -c 1 -w 1 $network.$host &> /dev/null && result=0 || result=1
  if [ "$result" == 0 ]; then
    echo "server $network.$host is up"
  else
    echo "server $network.$host is down"
  fi
done
