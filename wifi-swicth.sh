
#!/bin/bash

# Get Wifi name
WIFI_SSID=`/sbin/iwgetid -r`

# Ping to google
if ping -c 1 8.8.8.8 &> /dev/null
then
        # Log info 
        logger "Network access OK"
else
        # Log info 
        logger "Network DOWN"
        
        if [ $WIFI_SSID = "Primary-wifi-name" ]
        then
                echo '
                country=GB
                ctrl_interface=DIR=/var/run/wpa_supplicant GROUP=netdev
                update_config=1

                network={
                        ssid="Secondary-wifi-name"
                         psk="Secondary-wifi-password"
                }' > /etc/wpa_supplicant/wpa_supplicant.conf
        else
                echo '
                country=GB
                ctrl_interface=DIR=/var/run/wpa_supplicant GROUP=netdev
                update_config=1

                network={
                        ssid="Primary-wifi-name"
                         psk="Primary-wifi-password"
                }' > /etc/wpa_supplicant/wpa_supplicant.conf
        fi

        # Log info 
        logger "Restart network"
        
        # Reboot pi
        /sbin/reboot
fi

