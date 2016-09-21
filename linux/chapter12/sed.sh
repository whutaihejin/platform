#!/bin/bash

nl /etc/passwd | sed '2,5d'
nl /etc/passwd | sed -e '2,3d'
