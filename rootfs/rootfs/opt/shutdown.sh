#!/bin/sh
. /etc/init.d/tc-functions

echo "${YELLOW}Running boot2docker shutdown script...${NORMAL}"

/usr/local/etc/init.d/docker stop

zpool export boot2docker-data || zpool export boot2docker-data # might not work the first time for some reason
