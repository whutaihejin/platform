#!/usr/bin/python
import redis
r = redis.StrictRedis(host='10.94.106.180', port=6379, db=0)
r.set('foo', 'bar')
val = r.get('foo')
print val
