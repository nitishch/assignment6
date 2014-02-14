#!/bin/bash
toreturn=0
function count {
	local present=$PWD
	cd $1
	for i in $(ls)
	do
		if [ -d $i ]
		then
			toreturn=$(($toreturn+1))
			count $i
		else
			toreturn=$(($toreturn+1))
		fi
	done
	cd $present
}
function myprint {
	local present=$PWD
	cd $1
	for i in $(ls)
	do
		if [ -d $i ]
		then
#			toreturn=$(($toreturn+1))
			myprint $i
		else
			if [ -x $i ]
			then
				echo $i
			fi
		fi
	done
	cd $present
}
count $1
echo $toreturn
myprint $1
