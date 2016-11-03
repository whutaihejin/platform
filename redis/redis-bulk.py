#!/usr/bin/python

import redis
import time

longitude = 79.0
latitude = 19.0
limit = 7072
delta = 0.004474
count = 0
mount = limit * limit

# redis client
r = redis.Redis(host='10.94.106.180', port=6379, db=0)
#r = redis.StrictRedis(host='10.94.106.180', port=6379, db=0)

start_time_ms = int(round(time.time() * 1000))
print ("start time %d ms" % start_time_ms)
# bulk insert
for x in range(0, limit):
  latitude = 10.0
  for y in range(0, limit):
    latitude += delta
    count += 1
    address = 'xxxx street, {:d} number, jimo, qingdao, shandong, china'.format(count)
    value = (longitude, latitude, address)
    r.geoadd("self", *value)
    print ("%.2f%% %d/%d" % ((count * 100.0 / mount), count, mount)), ("(%.6f, %.6f, %s)" % (value[0], value[1], value[2]))
  longitude += delta
 
end_time_ms = int(round(time.time() * 1000))
print ("end time %d ms, cost %d ms" % (end_time_ms, end_time_ms - start_time_ms))
