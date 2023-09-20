#!/bin/bash
#Description:Take backup to /var and /etc
#Created by:Mostafa Abdelmohsen
#Modified: 20/9/2023



tar -cvf /root/my_scripts/backup.zip /var /etc
gzip /root/my_scripts/backup.zip

find backup.zip.gz -mtime -1 -type f 

if [ $? -eq 0 ]
then
	echo
	echo "Backup Created"
	echo
	echo "Backup Archived"
	sleep 1
	scp /root/my_scripts/backup.zip.gz root@192.168.1.30:/tmp
else
	echo "failed"
fi


