#!/bin/bash
cd ~/Dropbox-Uploader

bash ~/Desktop/call_dropbox_bash.sh

init=`bash dropbox_uploader.sh list /Raspberry_Pi_1 | wc -l`

initcount=$[$init-1]

xterm -hold -e "bash ~/Desktop/loop.sh" &

xterm -hold -e "bash ~/Desktop/gthumb.sh" &

while true; do 
	
	latercount=`bash ~/Dropbox-Uploader/dropbox_uploader.sh list /Raspberry_Pi_1 | wc -l`	
	latercount=$[$latercount-1]
	#echo "Later count is:" $latercount
	#echo "Initial count is: " $initcount
	#echo "Difference is: " "$[$latercount-$initcount]" 
	
	if ! [ $latercount -eq  $initcount ];then 

		initcount=$latercount
		pkill -f loop.sh
		bash ~/Desktop/call_dropbox_bash.sh
		bash ~/Desktop/loop.sh &
		#xterm -hold -e "bash ~/Desktop/loop.sh" &
		#xterm -hold -e "bash ~/Desktop/gthumb.sh" &


	else
		sleep 300

	fi
done
		