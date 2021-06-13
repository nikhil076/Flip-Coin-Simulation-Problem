#!/bin/bash -x
echo "Welcome to flip coin simulator"
HeadCount=0
TailCount=0
while [ $HeadCount -le 20 ] || [ $TailCount -le 20 ]
do
random=$((RANDOM%2))
	if [ $HeadCount -eq $TailCount ]
	then
		if [ $random -eq 0 ]
		then
        		echo "Head wins"
			HeadCount=$(($HeadCount+1))
		else
        		echo "tail wins"
			TailCount=$(($TailCount+1))
		fi
	diff=`echo $HeadCount $TailCount | awk '{print $1 - $2}'`
	elif [ $diff -eq 2 ]
	then
		break
	fi
done

echo $HeadCount
echo $TailCount
