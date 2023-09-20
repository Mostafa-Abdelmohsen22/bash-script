#!/bin/bash
#author:Mostafa Abdelmohsen
#Desc:script to test host connectivity
#Modify:6/9/2023

#hosts="192.168.1.130"
#ping -c1 $hosts &>/dev/null
#	if [ $? -eq 0 ]
#	then 
#	echo "$hosts is OK"
#	else 
#	echo "$hosts is not OK"
#	fi
#########################################
host_file=/root/my_scripts/hosts
for i in $(cat $host_file)
do
       ping -c1 $i &>/dev/null
       if [ $? -eq 0 ]
       then
       echo "$i is OK"
       else
       echo "$i is not OK"
       fi
done
