
######################################################################################
#__author__     = "Gaurav Sharma"                                                    #
#__copyright__  = "Copyright 2014, School of Public Health, University of Maryland"  #
#__department__ = "Telecommunications"                                               #
#__credits__    = "Gaurav Sharma"                                                    #
#__email__      = "gaurav10@umd.edu", "sgauravsharma059@gmail.com"                   #
#__status__     = "Implemented"                                                      #
#__Purpose__    = "Copies files from local folder into slidesshow.jpg at intervals"  #
#__Platform__	= "Bash"                                                             #
#__File.Name__  = "loop.sh"                                                          #
######################################################################################

#!/bin/bash

cd ~/Desktop
if  find -name "slideshow.jpg"; then 
	rm slideshow.jpg 2>&1 | bash ~/Desktop/DS_Code/predate.sh >> ~/Desktop/ds_error.log ;
fi
 
cd ~/Desktop/SPH_Slides/Dev

while true ; 
	echo running
	do for i in *.[jJ][pP][Gg] ; do 
		cp "$i" ~/Desktop/slideshow.jpg ; 
		echo $i ; 
		sleep 8 ; 
	done ; 
done

