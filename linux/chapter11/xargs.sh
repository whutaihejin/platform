#!/bin/bash

cut -d ':' -f 1 /etc/passwd | grep -v '#' | head -n 3 | xargs

cut -d ':' -f 1 /etc/passwd | grep -v '#' | head -n 3 | xargs -p 

cut -d ':' -f 1 /etc/passwd | grep -v '#' | head -n 3 | xargs -p -n 2

cut -d ':' -f 1 /etc/passwd | grep -v '#' | head -n 3 | xargs -p -e'daemon'
