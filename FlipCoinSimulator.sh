echo "Welcome to flip coin simulator"
random=$((RANDOM%2))
if [ $random -eq 0 ]
then
        echo "Head wins"
else
        echo "tail wins"
fi
