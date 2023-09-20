#!/bin/bash
#Description:Delete old files
#Modified:19/9/2023




#show old files.
find /root/my_scripts -mtime +90 -exec ls -l {} \;

sleep 5

#delete old files.
find /root/my_scripts -mtime +90 -exec rm -r {} \;

if [ $? -eq 0 ]
then 
	echo "files is deleted"
else 
	echo "Failed to delete files"

fi

#rename old files .
find /root/my_scripts -mtime +90 -exec mv {} {}.old \;
