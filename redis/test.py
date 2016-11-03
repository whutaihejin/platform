#!/usr/bin/python
import sys
import redis
import getopt

opts, args = getopt.getopt(sys.argv[1:], "hl:", ["help", "limit="])
limit = 10
for op, value in opts:
  if op == "-l" or  op == "--limit":
    limit = value
  elif op == "-h" or op == "--help":
    print "-h --help"
    print "-l --limit"
print limit
r = redis.Redis()
for i in dir(r):
  if i.startswith("geo"):
    print (i)

address = 'xxxx street {:d} beijing china'.format(22)
print address

geo_list = []
value = (12, 1, "121")
value2 = (22, 33, "2233")
geo_list.append(value)
geo_list.append(value2)
print geo_list
