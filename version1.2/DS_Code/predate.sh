
######################################################################################
#__author__     = "Gaurav Sharma"                                                    #
#__copyright__  = "Copyright 2014, School of Public Health, University of Maryland"  #
#__department__ = "Telecommunications"                                               #
#__credits__    = "Gaurav Sharma"                                                    #
#__email__      = "gaurav10@umd.edu", "sgauravsharma059@gmail.com"                   #
#__status__     = "Implemented"                                                      #
#__Purpose__    = "For time stamping comments"  									 #
#__Platform__	= "Bash"                                                             #
#__File.Name__  = "predate.sh"                                                       #
######################################################################################

#!/bin/bash

while read line
do 
	echo $(date) ":" $line;
done
