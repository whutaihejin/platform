#!/usr/bin/python
from redis import Redis
r = Redis()
for i in dir(r):
  if i.startswith("geo"):
    print (i)

address = 'xxxx street {:d} beijing china'.format(22)
print address
