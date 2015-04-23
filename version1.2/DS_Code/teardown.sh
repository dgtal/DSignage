
######################################################################################
#__author__     = "Gaurav Sharma"                                                    #
#__copyright__  = "Copyright 2014, School of Public Health, University of Maryland"  #
#__department__ = "Telecommunications"                                               #
#__credits__    = "Gaurav Sharma"                                                    #
#__email__      = "gaurav10@umd.edu", "sgauravsharma059@gmail.com"                   #
#__status__     = "Implemented"                                                      #
#__Purpose__    = "Kills all the running signage scripts "                           #
#__Platform__	= "Bash"                                                             #
#__File.Name__  = "teardown.sh"                                                      #
######################################################################################

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
