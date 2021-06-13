echo "Flip coin combinaion"
random=$((RANDOM%2))
if [ $random -eq 0 ]
then
	echo "heads win"
else
	echo "Tails win"
fi
