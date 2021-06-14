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

HHHCount=0
TTTCount=0
HTTCount=0
THTCount=0
TTHCount=0
THHCount=0
HTHCount=0
HHTCount=0

declare -A array
for i in {1..20}
do
        flip1=$((RANDOM%2))
        flip2=$((RANDOM%2))
	flip3=$((RANDOM%2))
        if [ $flip1 -eq 0 ] && [ $flip2 -eq 0 ] && [ $flip3 -eq 0 ]
        then
                echo "all Heads"
                array[$i]="HHH"
                HHHCount=$(($HHHCount+1))
        elif [ $flip1 -eq 1 ] && [ $flip2 -eq 1 ] && [ $flip3 -eq 1 ]
        then
                echo "all Tails"
                array[$i]="TTT"
                TTTCount=$(($TTTCount+1))
        elif [ $flip1 -eq 0 ] && [ $flip2 -eq 1 ] && [ $flip3 -eq 1 ]
        then
                echo "Head Tail and tail"
                array[$i]="HTT"
                HTTCount=$(($HTTCount+1))
        elif [ $flip1 -eq 1 ] && [ $flip2 -eq 0 ] && [ $flip3 -eq 1 ]
        then
                echo "Tail Head and Tail"
                array[$i]="THT"
                THTCount=$(($THTCount+1))
	elif [ $flip1 -eq 1 ] && [ $flip2 -eq 1 ] && [ $flip3 -eq 0 ]
	then
                echo "Tail Tail Head "
                array[$i]="TTH"
                TTHCount=$(($TTHCount+1))
	elif [ $flip1 -eq 1 ] && [ $flip2 -eq 0 ] && [ $flip3 -eq 0 ]
        then
                echo "Tail Head and head"
                array[$i]="THH"
                THHCount=$(($THHCount+1))
	elif [ $flip1 -eq 0 ] && [ $flip2 -eq 1 ] && [ $flip3 -eq 0 ]
        then
                echo "Head Tail Headaa"
                array[$i]="HTH"
                HTHCount=$(($HTHCount+1))
	elif [ $flip1 -eq 0 ] && [ $flip2 -eq 0 ] && [ $flip3 -eq 1 ]
        then
                echo "Head Head and Tail"
                array[$i]="HHT"
                HHTCount=$(($HHTCount+1))
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


HHHPercent=`echo $HHHCount ${#array[@]} 100 | awk '{print $1 / $2 * $3 }'`
echo $HHHPercent
TTTPercent=`echo $TTTCount ${#array[@]} 100 | awk '{print $1 / $2 * $3 }'`
echo $TTTPercent
HTTPercent=`echo $HTTCount ${#array[@]} 100 | awk '{print $1 / $2 * $3 }'`
echo $HTTPercent
THTPercent=`echo $THTCount ${#array[@]} 100 | awk '{print $1 / $2 * $3 }'`
echo $THTPercent
TTHPercent=`echo $TTHCount ${#array[@]} 100 | awk '{print $1 / $2 * $3 }'`
echo $TTHPercent
THHPercent=`echo $THHCount ${#array[@]} 100 | awk '{print $1 / $2 * $3 }'`
echo $THHPercent
HTHPercent=`echo $HTHCount ${#array[@]} 100 | awk '{print $1 / $2 * $3 }'`
echo $HTHPercent
HHTPercent=`echo $HHTCount ${#array[@]} 100 | awk '{print $1 / $2 * $3 }'`
echo $HHTPercent

echo ${arr[@]}
echo ${array[@]}
