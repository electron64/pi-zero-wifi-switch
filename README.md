# pi-zero-wifi-switch
Simple bash script that allow to switch between wifi networks if internet connection down in your Raspberry Pi Zero.

# How to use
Save the file and name it `wifiswitch.sh` for example. Make it executable by type in cmdline :

`chmod +x wifiswitch.sh`

Open crontab editor
`sudo crontab -e`
Press i Copy the the following line :

`*/5 * * * * root /home/pi/ wifiswitch.sh`
Save the change by typing CTR+X

Test it and enjoy :)
