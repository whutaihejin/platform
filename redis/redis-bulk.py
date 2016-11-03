#!/usr/bin/python

import redis
import time
import sys
import getopt

key = "self"
limit = 7072
batch = 100
host_ip = "127.0.0.1"
port = 6397

opts, args = getopt.getopt(sys.argv[1:], "l:b:k:h:p:", ["limit=", "batch=", "key=", "host=", "port="])
for op, value in opts:
    if op == "-l" or  op == "--limit":
      limit = int(value)
    elif op == "-b" or op == "--batch":
      batch = int(value)
    elif op == "-k" or op == "--key":
      key = value
    elif op == "-h" or op == "--host":
      host = value
    elif op == "-p" or op == "--port":
      port = int(port)

count = 0
longitude = 79.0
latitude = 19.0
delta = 0.004474
mount = limit * limit

# redis client
r = redis.Redis(host=host_ip, port=6379, db=0)
#r = redis.StrictRedis(host='10.94.106.180', port=6379, db=0)

start_time_ms = int(round(time.time() * 1000))
print ("start time %d ms" % start_time_ms)

# bulk insert
for x in range(0, limit):
  latitude = 10.0
  y = 0
  while y < limit:
    k = 0
    geo_list = ()
    while k < batch and y < limit:
      latitude += delta
      count += 1
      k += 1
      y += 1
      address = 'xx street, {:d} number, haidian, beijing'.format(count)
      value = (longitude, latitude, address)
      geo_list += value
    r.geoadd(key, *geo_list)
    print ("%.2f%% %d/%d" % ((count * 100.0 / mount), count, mount))
  longitude += delta
 
end_time_ms = int(round(time.time() * 1000))
print ("end time %d ms, cost %d ms" % (end_time_ms, end_time_ms - start_time_ms))
