#!/bin/bash

for ((i=0;i<10;i++))
do
	arr[$i]=$((RANDOM%900+100))
done

echo "Befor sorting : "${arr[@]}

for ((i=0;i<10;i++))
do
	echo "Index $i : "${arr[i]}
done

for ((i=0;i<${#arr[@]}-1;i++))
do
	for ((j=i+1;j<${#arr[@]};j++))
		do
		if [ ${arr[i]} -gt ${arr[j]} ]
		then
			temp=${arr[i]}
			arr[$i]=${arr[j]}
			arr[$j]=$temp
#			echo "$i > $j"
		fi
	done
done

echo "After sorting : "${arr[@]}

echo "Second smallest number is : "${arr[1]}

echo "Second largest number is : "${arr[8]}
