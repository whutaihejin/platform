#!/usr/bin/python

import redis
import time
import sys
import getopt
import random

def FormatTime(format_str = '%Y-%m-%d %H:%M:%S'):
  return time.strftime(format_str, time.localtime(time.time()))

key = "self"
host= "127.0.0.1"
port = 6379

opts, args = getopt.getopt(sys.argv[1:], "k:h:p:", ["key=", "host=", "port="])
for op, value in opts:
    if op == "-k" or op == "--key":
      key = value
    elif op == "-h" or op == "--host":
      host = value
    elif op == "-p" or op == "--port":
      port = int(port)

# redis client
r = redis.Redis(host=host, port=port, db=0)
#r = redis.StrictRedis(host='10.94.106.180', port=6379, db=0)

for i in range(1, 100):
  longitude = random.uniform(90.00, 120.00)
  latitude = random.uniform(30.00, 45.00)
  radius = random.uniform(2000, 5000)
  geo_list = r.georadius(key, longitude, latitude, radius, "m")
  print ("%s len %d lng %.6f lat %.6f radius %d m" % (FormatTime(), len(geo_list), longitude, latitude, radius))
 
