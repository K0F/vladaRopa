#!/bin/bash
source /home/pi/.bashrc
export PATH=$PATH:/usr/bin:/usr/local/bin:/sbin/

sudo touch /forcefsck

(sleep 15s && LD_PRELOAD=/usr/lib/arm-linux-gnueabihf/libv4l/v4l2convert.so motion > /dev/null 2>&1)&



#(mkfifo /tmp/ctl)&

#(sleep 5s && sh /home/pi/sensor.sh)&

while true; do
if [ -e /home/pi/ok ]
then
pkill omxplayer
sudo rm /home/pi/ok
omxplayer -b -o local --no-osd /home/pi/vlada_vystava_FINAL.mov > /dev/null 2>&1
fi
sleep 2s
done
