# Redis-server init script for Ubuntu

Run ```setup.sh``` to install

Strongly inspired by memcached service support for multi config files.

# How to setup the config files

```
cp /etc/redis/redis.conf /etc/redis/redis_server1.conf
cp /etc/redis/redis.conf /etc/redis/redis_server2.conf
```

Redis kinda suck at sharing it's PID, you need to update it in the config file directly. It is only used in the init script to stop.

Typical PID files are:

```
/var/run/redis/redis_server1.pid
/var/run/redis/redis_server2.pid
```

Obviously perform the other changes such as port binding in the config file, etc.

You can now start / stop the services as such:

```
service redis-server start # start all
service redis-server start server1 # start server1
service redis-server stop # stop all
...
```
