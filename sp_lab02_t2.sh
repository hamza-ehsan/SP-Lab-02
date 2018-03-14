#!/bin/bash
if [ $# = 1 ]
then
	declare -i id
	for id in `pidof $1`
	do
		echo "Name : $1"	

		echo "Pid : $id"
		
		echo `cat /proc/$id/status | grep "PPid:"`

		echo `cat /proc/$id/status | grep "State:"`
	
	done 
else
	echo "No argument!!"
fi
