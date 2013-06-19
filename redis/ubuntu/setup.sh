#!/bin/bash
#######################
# Yeah yeah sample for now...
#######################

# Backup previous init script
cp -a /etc/init.d/redis-server{,.orig}

# Push the new init script over
cp ./init.d/redis-server /etc/init.d/redis-server