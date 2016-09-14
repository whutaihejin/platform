#!/bin/bash
echo $PATH
for i in $(seq 1 8); do
  echo $PATH | cut -d ':' -f $i
done
