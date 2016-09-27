#!/bin/bash

grep -n 'the' regular_express.txt
grep -n -v 'the' regular_express.txt
grep -n -i 'the' regular_express.txt
grep -n 't[ae]st' regular_express.txt
grep -n 'oo' regular_express.txt
grep -n '[^g]oo' regular_express.txt
grep -n '[^a-z]oo' regular_express.txt
grep -n '[0-9]' regular_express.txt
grep -n '[^[:lower:]]oo' regular_express.txt 
grep -n '[[:digit:]]' regular_express.txt
grep -n '^the' regular_express.txt
grep -n '^[a-z]' regular_express.txt
grep -n '^[a-z]' regular_express.txt
grep -n '\.$' regular_express.txt
grep -n 'go\{2,\}' regular_express.txt
grep -n 'go\{2,5\}' regular_express.txt
grep -n 'go\{2\}' regular_express.txt
grep -n '[0-9][0-9]*' regular_express.txt
grep -n 'g*g' regular_express.txt
grep -n 'g.*g' regular_express.txt
grep -n 'goo*g' regular_express.txt
grep -n 'ooo*' regular_express.txt
grep -n 'g..d' regular_express.txt
cat -n /etc/rsyslog.conf
grep -v '^$' regular_express.txt | grep -v '^#'
grep -n '^$' regular_express.txt
