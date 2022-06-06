#!/bin/sh
if [ $# != 2 ]
then
	printf "Error\n"
	return
fi
for palabra in $1
do
	printf "$palabra\n"
	for poema in $2
	do
		RES = `grep -n $palabra ./$poema`
		printf "$RES"
	done
done
