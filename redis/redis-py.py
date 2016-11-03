#!/usr/bin/python
import redis
#r = redis.StrictRedis(host='10.94.106.180', port=6379, db=0)
r = redis.Redis(host='10.94.106.180', port=6379, db=0)
values = (120, 40, "shanghai province")
r.geoadd("self", *values)
print values
