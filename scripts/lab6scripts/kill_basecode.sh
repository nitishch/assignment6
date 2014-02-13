#!/bin/bash
runningOutput=$(ps aux | sed -n '/\/mybins\/cs296_28_exe/p')
running=$(ps aux | sed -n '/\/mybins\/cs296_28_exe/p' | wc -l)
#echo $running
if [ $running -eq 1 ]
then
	pid=$(echo $runingOutput | sed -n "s/${USER}   \([0-9]*\).*$/\1/p")
	echo ${pid}
	echo ${USER}
	echo "Do you want to kill the process?"
	read answer
	if [ $answer -eq y ]
	then
		kill ${pid}
	fi
fi
