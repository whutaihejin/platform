#!/bin/bash

echo $#
if [ "$#" -lt "1" ]; then
  limit=10
else
  limit=$1
fi

i=0
sum=0
while [ "$i" != "$limit" ]; do
  i=$(($i + 1))
  sum=$(($sum + $i))
done

echo "The result of '1 + 2 + ... + $limit' = $sum"
