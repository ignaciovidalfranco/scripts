#!/bin/bash

# Programa un despertar programado y apaga el servidor

sh -c "echo 0 > /sys/class/rtc/rtc0/wakealarm" 
sh -c "echo `date '+%s' -d '+ 300 minutes'` > /sys/class/rtc/rtc0/wakealarm" 
/sbin/shutdown -h now
