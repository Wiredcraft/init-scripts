# MySQL upstart init script for Ubuntu

Run ```setup.sh``` to install the **Upstart** mysql script (/etc/init/mysql.conf)

## Changes

- Add pre-stop task to force agressive flush of dirty innodb cache

## Aggressive flush

To speed up restart process perform the following:

- set innodb_max_dirty_pages_pct to 0
- server remain fully operational but cache is aggressively flushed to disk
- once the ratio of dirty pages goes below 15% (arbitrary choice), start the effective mysql restart process

Instead of having the mysql process stuck for a long period of time due to the data being flushed after the MysSQL service receive the SIGTERM signal, the massive flush operation is performed before-hand, allowing the server to keep on operating normally and serve users' requests.

Note that Upstart and mysql config file currently has a kill timeout of 300 seconds, you may want to increase that timeout to ... as much as your db requires. If it reaches the timeout a SIGKILL (-9) is sent to MySQL that will be badly killed.