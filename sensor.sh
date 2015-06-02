#!/bin/bash
#(sh /home/pi/rewind.sh && sleep 2s && sh /home/pi/play.sh && sleep 7m && sleep 30s && sh /home/pi/play.sh)
#

gpio mode 11 in

while true
do

if [ `gpio read 11` -eq 1 ];
then

echo 'Motion Detected: '`date +"%Y-%m-%d_%H-%M-%S"`
(omxplayer -b -o local --no-osd /home/pi/vlada_vystava_FINAL.mov && sleep 7m && sleep 33s) 


else

echo 'No Motion'

fi
sleep 1

done
