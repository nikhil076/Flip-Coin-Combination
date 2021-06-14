#!/bin/bash -x
echo "Flip coin combinaion"
BothHeadCount=0
BothTailCount=0
HeadTailCount=0
TailHeadCount=0
declare -A arr
for i in {1..20}
do
	flip1=$((RANDOM%2))
	flip2=$((RANDOM%2))
	if [ $flip1 -eq 0 ] && [ $flip2 -eq 0 ]
	then
		echo "Both Heads"
		arr[$i]="HH"
                BothHeadCount=$(($BothHeadCount+1))
	elif [ $flip1 -eq 1 ] && [ $flip2 -eq 1 ]
	then
		echo "Both Tails"
		arr[$i]="TT"
                BothTailCount=$(($BothTailCount+1))
	elif [ $flip1 -eq 0 ] && [ $flip2 -eq 1 ]
	then
		echo "Head aand tail"
		arr[$i]="HT"
		HeadTailCount=$(($HeadTailCount+1))
	elif [ $flip1 -eq 1 ] && [ $flip2 -eq 0 ]
	then
		echo "Tail and Head"
		arr[$i]="TH"
		TailHeadCount=$(($TailHeadCount+1))
	fi
done

BothHeadsPercent=`echo $BothHeadCount ${#arr[@]} 100 | awk '{print $1 / $2 * $3 }'`
echo $BothHeadsPercent
BothTailsPercent=`echo $BothTailCount ${#arr[@]} 100 | awk '{print $1 / $2 * $3 }'`
echo $BothTailsPercent
HeadTailPercent=`echo $HeadTailCount ${#arr[@]} 100 | awk '{print $1 / $2 * $3 }'`
echo $HeadTailPercent
TailHeadPercent=`echo $TailHeadCount ${#arr[@]} 100 | awk '{print $1 / $2 * $3 }'`
echo $TailHeadPercent

echo ${arr[@]}
