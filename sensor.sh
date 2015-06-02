#!/bin/bash
#
gpio mode 11 in

while true
do

if [ `gpio read 11` -eq 1 ];
then

echo 'Motion Detected: '`date +"%Y-%m-%d_%H-%M-%S"`
(sh /home/pi/rewind.sh && sleep 2s && sh /home/pi/play.sh && sleep 7m && sleep 30s && sh /home/pi/play.sh)

else

echo 'No Motion'

fi
sleep 1

done
