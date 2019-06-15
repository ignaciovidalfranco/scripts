# Scripts

This repository contains a few handy scripts that helps me in the operation of my home server. In general, these scripts are invoked as a regular cronjob.

* borradoperiodico.sh: Takes a directory, reads the accesing time and deletes files that weren't used in a certain amount of days.
* apaga_y_enciende.sh: Uses the internal RTC interruption system so the server can wake up itself (yeah, GNU/Linux can do that!). I use this to turn off my server at night and wake it up automatically in the morning. This script saves me like 15€ per year.
* wsdd_start.sh: Starts a Web Discovery daemon. This is not invoked from a cron job, but from systemd as a service each time the server starts.

I hope you guys find this useful!
