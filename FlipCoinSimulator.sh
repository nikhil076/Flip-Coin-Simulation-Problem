echo "Welcome to flip coin simulator"
HeadCount=0
TailCount=0
while [ $HeadCount -le 20 ] || [ $TailCount -le 20 ]
do
random=$((RANDOM%2))
	if [ $random -eq 0 ]
	then
        	echo "Head wins"
		HeadCount=$(($HeadCount+1))
	else
        	echo "tail wins"
		TailCount=$(($TailCount+1))
	fi
done

echo $HeadCount
echo $TailCount
