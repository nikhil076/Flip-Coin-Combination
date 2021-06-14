#!/bin/bash -x
echo "Flip coin combinaion"
HeadCount=0
TailCount=0
declare -A arr
for i in {1..10}
do
	flip1=$((RANDOM%2))
	if [ $flip1 -eq 0 ]
	then
		echo "flip1 heads"
		arr[$i]="Heads"
                HeadCount=$(($HeadCount+1))
	else
		echo "flip1 tails"
		arr[$i]="tails"
                TailCount=$(($TailCount+1))
	fi
done

HeadsPercent=`echo $HeadCount ${#arr[@]} 100 | awk '{print $1 / $2 * $3 }'`
echo $HeadsPercent
TailsPercent=`echo $TailCount ${#arr[@]} 100 | awk '{print $1 / $2 * $3 }'`
echo $TailsPercent

echo ${arr[@]}
