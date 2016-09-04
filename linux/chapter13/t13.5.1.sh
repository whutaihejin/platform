#!/bin/bash

while [ "$flag" != "yes" ] && [ "$flag" != "YES" ]; do
  read -p "Please input yes/YES to stop this program:" flag
done

echo "OK! you input the correct answer."
