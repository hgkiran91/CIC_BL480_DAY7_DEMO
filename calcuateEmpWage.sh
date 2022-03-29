#!/bin/bash

Present=1
Part_time=2;
WAGE_PER_HOUR=20;
MAX_WORKING_DAY=20;
MAX_WORKING_HOUR=40;

function getWorkingHour() {
	case $1 in

		$Present)
		wHour=8;
		;;

		$Part_time)
		wHour=4;
		;;

		*)
		wHour=0;
		;;
esac

echo $wHour;

}

totalWorkingHour=0;

day=0;

while [[ $day -lt $MAX_WORKING_DAY && $totalWorkingHour -lt $MAX_WORKING_HOUR ]]
do

	if [ $((totalWorkingHour + 4)) -ge $MAX_WORKING_HOUR ]
	then
		isPresent=$Part_time

	else
		isPresent=$((RANDOM%3))
	fi

	workingHour=$(getWorkingHour $isPresent)
	dailyWage[$day]=$((workingHour*WAGE_PER_HOUR))
	totalWorkingHour=$((totalWorkingHour+workingHour))
	((day++))

done

totalSalary=$((totalWorkingHour*WAGE_PER_HOUR))

echo "Employee monthly wage: $"$totalSalary "USD"
echo "Total Working Hour: "$totalWorkingHour "Hr"
echo "Total working day: "$day

for ((i=0;i<${#dailyWage[@]};i++))
do
	echo "Day $((i+1)) : $"${dailyWage[i]} "Usd"
done
