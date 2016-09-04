#!/bin/bash

echo -e "Please input a filename, I will check the filename's type and permission"
read -p "Input a filename:" filename
test -z $filename && echo "You must input a filename" && exit 0

test ! -e $filename && echo "The $filename is not exit" && exit 0

test -f $filename && filetype="regulare file"
test -d $filename && filetype="directory"
test -r $filename && perm="readable"
test -w $filename && perm="$perm writable"
test -x $filename && perm="$perm executable"

echo -e "The $filename is a $filetype"
echo -e "And the permissons are: $perm"
