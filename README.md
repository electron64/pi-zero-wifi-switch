# pi-zero-wifi-switch
Simple bash script that allow to switch between wifi networks if internet connection down in your Raspberry Pi Zero.

# How to use
Save the file and name it wifiswitch for example. Make it executable by type in cmdline :

chmod +x wifiswitch
As root or using sudo, move the file to /usr/local/bin :

mv wifiswitch /usr/local/bin
Using sudo or root, open a new file in /etc/cron.d

nano /etc/cron.d/wifiswitch
Press i Copy the the following line :

*/10 * * * * root /usr/local/bin/wifiswitch
Save the change by typing :x

Restart Raspberry Pi.
