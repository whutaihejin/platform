#!/bin/bash

function usage() {
  echo -e "Usage: $1 {hello}"
}

if [ "$#" -lt "1" ]; then
  usage $0 && exit 1
fi

case $1 in
  "hello")
    echo "Hello, how are you ?"
    ;;
  "")
    echo "You must input parameters > {$0 someword}"
    ;;
  *)
    usage $0
    ;;
esac
