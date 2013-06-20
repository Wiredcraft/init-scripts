#!/bin/bash
#######################
# MySQL upstart init script setup
#######################

NAME='mysql.conf'

# Backup previous init script
echo "Backup original init script to /etc/init/${NAME}.orig"
cp -a /etc/init/${NAME} /etc/init/${NAME}.orig

# Push the new init script over
echo "Copy new init script from ./init/${NAME} to /etc/init/${NAME}"
cp ./init/${NAME} /etc/init/${NAME}