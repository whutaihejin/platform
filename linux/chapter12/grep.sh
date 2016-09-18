#!/bin/bash

dmesg | grep 'eth'

dmesg | grep -n 'eth'

dmesg | grep -n -A2 -B3 'eth'
