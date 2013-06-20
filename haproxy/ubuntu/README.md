# HaProxy init script for Ubuntu

Run ```setup.sh``` to install

## Changes

- Add configtest feature,
- Only allow restart on configtest success.

## Config test feature

Relies on ```haproxy -c``` option. 
Logs are saved in /var/log/haproxy_configtest.log on error. 

## Restart feature

Before restarting (stop/start) haproxy, it validates the configuration file is valid.
On success, it resume normal operations and restart the service.
On error, it abort the restart process and prevent haproxy from being stopped in the first place.

The stop option remain unchanged; not configtest is performed in this step.