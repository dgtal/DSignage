#!/bin/bash


while true; do
	wget -q --tries=10 --timeout=20 --spider http://www.google.com
	if [[ $? -eq 0 ]] ;
	then 
		bash /home/pi/Desktop/DS_Code/Digital_Signage.sh &#2>&1 | bash /home/pi/Desktop/DS_Code/predate.sh  >  ~/Desktop/ds_error.log &
		exit
	fi
done
