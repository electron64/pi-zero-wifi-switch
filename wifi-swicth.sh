#!/bin/bash

# Ping count
PING_COUNT=1
# Ping is installed by default
PING="/bin/ping"

# Test IP address (gogole)
TEST_IP=8.8.4.4
# ping test
$PING -n -c "$PING_COUNT" "$TEST_IP" &>/dev/null

WIFI_SSID=`iwgetid -r`

if [ "$?" = 0 ]
then
        if [ "$WIFI_SSID" == "MainWifi" ]
        then
                #
        else
                #
        fi

        # This will log a message in system log (see manpage).
        logger "Network access DOWN"
        
        # Reboot Pi
        /sbin/reboot
else
    logger "Network access OK"
fi
