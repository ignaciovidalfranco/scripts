#!/bin/bash

# Programa un despertar programado y apaga el servidor

sh -c "echo 0 > /sys/class/rtc/rtc0/wakealarm" 
sh -c "echo `date '+%s' -d '+ 330 minutes'` > /sys/class/rtc/rtc0/wakealarm" 

echo "Apagando a las `date`..."
echo "Volviendo a encender a las `date -d '+ 330 minutes'`"

# Detiene los servicios necesarios para nextcloud de forma gentil
service nginx stop
sleep 20
service mariadb stop
sleep 20

/sbin/shutdown -h now
