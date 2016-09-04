#!/bin/bash

echo -e "You should input 2 numbers, I will cross them!"
read -p "first number:" first
read -p "second number:" second
product=$(($first * $second))
echo -e "The result of $first X $second is $product"
