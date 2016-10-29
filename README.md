# pi-zero-wifi-switch
Simple bash script that allow to switch between wifi networks if internet connection down in your Raspberry Pi Zero.

# How to use
Save the file and name it `wifi-switch.sh` for example. Make it executable by type in cmdline :

`chmod +x wifi-switch.sh`

Open crontab editor
`sudo crontab -e`
Press i Copy the the following line :

`*/5 * * * * root /home/pi/ wifi-switch.sh`
Save the change by typing CTR+X

Test it and enjoy :)
