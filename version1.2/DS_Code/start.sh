
######################################################################################
#__author__     = "Gaurav Sharma"                                                    #
#__copyright__  = "Copyright 2014, School of Public Health, University of Maryland"  #
#__department__ = "Telecommunications"                                               #
#__credits__    = "Gaurav Sharma"                                                    #
#__email__      = "gaurav10@umd.edu", "sgauravsharma059@gmail.com"                   #
#__status__     = "Implemented"                                                      #
#__Purpose__    = "Calls the Digital_Signage.sh bash script"                         #
#__Platform__	= "Bash"                                                             #
#__File.Name__  = "start.sh"                                                         #
######################################################################################

#!/bin/bash

while true; do
	wget -q --tries=10 --timeout=20 --spider http://www.google.com
	if [[ $? -eq 0 ]] ;
	then 
		bash /home/pi/Desktop/DS_Code/Digital_Signage.sh &#2>&1 | bash /home/pi/Desktop/DS_Code/predate.sh  >  ~/Desktop/ds_error.log &
		exit
	fi
done
