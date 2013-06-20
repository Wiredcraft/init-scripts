#!/bin/bash
#######################
# HaProxy init script setup
#######################

NAME=haproxy

# Backup previous init script
echo "Backup original init script to /etc/init.d/${NAME}.orig"
cp -a /etc/init.d/${NAME} /etc/init.d/${NAME}.orig

# Push the new init script over
echo "Copy new init script from ./init.d/${NAME} to /etc/init.d/${NAME}"
cp ./init.d/${NAME} /etc/init.d/${NAME}
chmod +x /etc/init.d/${NAME}