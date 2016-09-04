#!/bin/bash

name=taihejin
home="whu taihejin"
if [ $name == "$home" ]; then
  echo "equal"
else
  echo "not equal"
fi

read -p "Please input (Y/N):" flag
[ "$flag" == "Y" -o "$flag" == "y" ] && echo "Ok, continue" && exit 0
[ "$flag" == "N" -o "$flag" == "n" ] && echo "Oh, interrupt" && exit 0
echo "I don't know what your choice is" && exit 0
