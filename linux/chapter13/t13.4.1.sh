#!/bin/bash

read -p "Please input (Y/N):" flag
if [ "$flag" == "Y" ] || [ "$flag" == "y" ]; then
  echo "OK, continue"
elif [ "$flag" == "N" ] || [ "$flag" == "n" ]; then
  echo "OH, interrupt"
else
  echo "I don't know what your choice is"
fi
