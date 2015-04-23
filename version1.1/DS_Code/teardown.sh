#!/bin/bash

kill $(ps aux | grep 'Digital_Signage.sh' | awk '{print $2}') 
kill $(ps aux | grep 'loop.sh' | awk '{print $2}') 
kill $(ps aux | grep 'gthumb' | awk '{print $2}')
kill $(ps aux | grep 'start.sh' | awk '{print $2}') 
kill $(ps aux | grep 'predate.sh' | awk '{print $2}') 
kill $(ps aux | grep 'sleep 30' | awk '{print $2}')
kill $(ps aux | grep 'sleep 8' | awk '{print $2}')
rm /home/pi/Desktop/ds_error.log 
rm /home/pi/Desktop/slideshow.jpg 
