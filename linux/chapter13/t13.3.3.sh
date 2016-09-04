#!/bin/bash

echo -e "The script name is $0"
echo -e "Total parameter number is $#"
[ "$#" -lt 2 ] && echo "parameter less than 2" && exit 0
echo -e "Your whole parameter is $@"
echo -e "first parameter $1"
echo -e "second parameter $2"
