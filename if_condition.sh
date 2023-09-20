#!/bin/bash
# if condition script
# date=1-9-2023

x=100

if [ $x -eq 100 ]

then
	echo "It is ok"

else
	echo "It is not OK"

fi

echo "-------------------------------------------------------------------"




if [ -e /home/mostafa/err.txt ]

then 
	echo "File is Exist"
else
	echo "Not Exist"

	
fi
