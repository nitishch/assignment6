#!/bin/bash
if [ $1 -eq 1 ]
then
	tar -cf src.tar src
#	echo "tarred"
	gzip src.tar
fi
exit
if [ $1 -eq 2]
then
	cp -r src dummy
	cd dummy
#	echo "zipped and tarred"
	for i in $(ls)
	do
		gzip $i
	done
	cd ..
	tar -cf src.tar dummy
	rm -rf dummy
fi
