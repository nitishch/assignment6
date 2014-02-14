#!/bin/bash
if [ $1 -eq 1 ]
then
	for i in $(ls ./juju/)
	do
		mv $i $i.bak
	done
else
	ls ./src | sed -n 's/^\(.*\)$/mv \.\/src\/\1 \.\/src\/\1.bak/p' | bash
fi
