#!/bin/bash
userrunning=$(ps aux | sed -n '/\/mybins\/cs296_28_exe/p' | sed -n '/\([^ ]*\) .*$/\1/p')
pid=$(pidof ./mybins/cs296_28_exe)
running=$(echo $pid | wc -w)
if [ $running -eq 1 ]
then
	echo ${pid}
	echo ${userrunning}
	if [ ${user} == ${USER} ]
	then
		echo "Do you want to kill the process?"
		read answer
		if [ $answer == "y" ]
		then
			kill ${pid}
		fi
	else
		echo "${USER} doesn't have permissions to kill the process"
	fi
fi
