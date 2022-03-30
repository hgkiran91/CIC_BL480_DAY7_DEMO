#!/bin/bash

fruits[0]="Mangoes"
fruits[1]="Oranges"
fruits[2]="Apples"
fruits[3]="Cherrys"

echo "All elements of array: "${fruits[@]}

echo "Size of array: "${#fruits[@]}

echo "Printing index 1 element: "${fruits[1]}


for ((i=0;i<=${#fruits[@]};i++))
do
	echo ${fruits[i]}
done


num=(1 2 3 4 5 6 7)
echo -e "Elements of num: "${num[@]}
echo -e "Size of num array: "${#num[@]}
