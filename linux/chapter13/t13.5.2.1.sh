#!/bin/bash

function usage() {
  echo -e "Usage: $1 <dir>" && exit 1
}

if [ "$#" -lt "1" ]; then
  usage
fi

dir=$1
if [ ! -d "$dir" ]; then
  echo "$dir is not exist." && exit 1
fi

for file in $(ls $dir); do
  perm="" # must reset the value
  test -r "$dir/$file" && perm="$perm readable"
  test -w "$dir/$file" && perm="$perm writable"
  test -x "$dir/$file" && perm="$perm executable"
  echo "$dir/$file's permission is $perm"
done
