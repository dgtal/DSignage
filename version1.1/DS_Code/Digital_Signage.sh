#!/bin/bash

cd ~/Desktop/SPH_Slides/
rm -r Dev

cd ~/Desktop/DS_Code/

bash call_dropbox_bash.sh 2>&1| bash ~/Desktop/DS_Code/predate.sh >> ~/Desktop/ds_error.log 
kill $(ps aux | grep 'predate.sh' | awk '{print $2}') >> ~/Desktop/ds_error.log 2>&1

cd ~/Desktop/DS_Code/Dropbox-Uploader/

init=`bash dropbox_uploader.sh list /Dev | wc -l`

initcount=$[$init-1]

#xterm -hold -e "bash ~/Desktop/DS_Code/loop.sh >> ~/Desktop/ds_error.log 2>&1" &



bash ~/Desktop/DS_Code/loop.sh 2>&1| bash ~/Desktop/DS_Code/predate.sh >> ~/Desktop/ds_error.log & 

bash ~/Desktop/DS_Code/gthumb.sh  >> ~/Desktop/ds_error.log 2>&1 &

#xterm -hold -e "bash ~/Desktop/DS_Code/gthumb.sh >> ~/Desktop/ds_error.log 2>&1" &

while true; do 
	
	latercount=`bash ~/Desktop/DS_Code/Dropbox-Uploader/dropbox_uploader.sh list /Dev | wc -l`	
	latercount=$[$latercount-1]
	
	if ! [ $latercount -eq  $initcount ];then 

		initcount=$latercount
		kill $(ps aux | grep 'loop.sh' | awk '{print $2}') 2>&1| bash ~/Desktop/DS_Code/predate.sh >> ~/Desktop/ds_error.log
		kill $(ps aux | grep 'predate.sh' | awk '{print $2}') 2>&1| bash ~/Desktop/DS_Code/predate.sh >> ~/Desktop/ds_error.log 

		#pkill -9 loop.sh
		
		cd ~/Desktop/SPH_Slides/
		rm -r Dev	

		bash ~/Desktop/DS_Code/call_dropbox_bash.sh 2>&1 |  bash ~/Desktop/DS_Code/predate.sh >> ~/Desktop/ds_error.log 2>&1 
		kill $(ps aux | grep 'predate.sh' | awk '{print $2}') >> ~/Desktop/ds_error.log 2>&1 

		bash ~/Desktop/DS_Code/loop.sh 2>&1| bash ~/Desktop/DS_Code/predate.sh >> ~/Desktop/ds_error.log &

	else
		sleep 30

	fi
done
		
