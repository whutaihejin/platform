#!/bin/bash

if [ $# -lt 1 ]; then
  limit=10
else
  limit=$1
fi

sum=0
for ((i = 1; i <= $limit; i++)); do
  sum=$(($sum + $i))
done

echo -e "The result of '1 + 2 + ... + $limit' = $sum"
