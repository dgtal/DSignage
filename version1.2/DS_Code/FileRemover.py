######################################################################################
#__author__     = "Gaurav Sharma"                                                    #
#__copyright__  = "Copyright 2014, School of Public Health, University of Maryland"  #
#__department__ = "Telecommunications"                                               #
#__credits__    = "Gaurav Sharma"                                                    #
#__email__      = "gaurav10@umd.edu", "sgauravsharma059@gmail.com"                   #
#__status__     = "Implemented"                                                      #
#__Purpose__    = "To remove old files from dropbox based on a pattern"              #
#__Platform__	= "Python"                                                           #
#__File.Name__  = "File_Remover.py"                                                  #
#__Updated__    = "23 April 2015"                                                    #
######################################################################################


import sys
import os
import datetime
import time

date_now= datetime.datetime.now().strftime("%y%m%d")
month=date_now[2:4]
day=date_now[4:]
year=date_now[0:2]

print (day, month, year)

## Set path to that of the desired dropbox folder
for path, subdirs, files in os.walk('/Users/administrator/Dropbox/Concourse_TV/'):
   for filename in files:
        a = filename
	## Removes .mp4, .MP4, .jpg, JPG file types
        if a[len(a)-4:].lower() == ".mp4" or a[len(a)-4:].lower() == ".jpg":
             print filename
             date_file= a.replace(' ','a').replace('.','*').replace('_','*').split('*')
             print date_file
             print len(date_file)
             if len(date_file)>2:
                 print date_file
                 date_file=date_file[1]
                 if int(date_file[0:2]) < int(year):
                    os.remove("/Users/administrator/Dropbox/Concourse_TV/"+filename)
                 else:
                     if int(date_file[2:4]) < int(month):
                         os.remove("/Users/administrator/Dropbox/Concourse_TV/"+filename)
                     else:
                         if int(date_file[4:]) < int(day):
                             os.remove("/Users/administrator/Dropbox/Concourse_TV/"+filename)


sys.exit (0)
