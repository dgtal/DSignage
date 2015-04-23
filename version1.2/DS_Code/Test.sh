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
#__Updated__    = "23 April 2015"                                                    #
######################################################################################

cd ~/Desktop/SPH_Slides/Raspberry_Pi_1

for i in *[jJ][pP][gG];do

	echo $i;
#	if ! grep -q  ".jpg" $i; then
#		echo $i
#	else
#		echo passed;
#	fi
done;
