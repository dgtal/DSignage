 
######################################################################################
#__author__     = "Gaurav Sharma”                                                    #
#__copyright__  = "Copyright 2014, School of Public Health, University of Maryland   #			     
#__department__ = "Telecommunications”                                               #
#__credits__    = "Gaurav Sharma”                                                    #
#__email__      = "gaurav10@umd.edu", "sgauravsharma059@gmail.com"                   #
#__status__     = "Implemented"                                                      #
#__Purpose__    = “Downloads files from the Dropbox folder onto Desktop”             #	
#__Platform__	= “Bash”                                                             #
#__File.Name__  = “call_dropbox_bash.sh”                                             #	
######################################################################################

#!/bin/bash

cd ~/Desktop/DS_Code/Dropbox-Uploader
bash dropbox_uploader.sh download Dev ~/Desktop/SPH_Slides/
