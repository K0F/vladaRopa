#!/bin/bash
source /home/pi/.bashrc
export PATH=$PATH:/usr/bin:/usr/local/bin:/sbin/

sudo touch /forcefsck

#(mkfifo /tmp/ctl)&

(sleep 5s && sh /home/pi/sensor.sh)&

#while true; do
#(sleep 4s && omxplayer -b -o local --no-osd /home/pi/vlada_vystava_FINAL.mov < /tmp/ctl)
#done
