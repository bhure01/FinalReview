#!/bin/bash -x

echo "Choose any one of the number between 1 to 100"

#INITIALIZE THE CONSTANT VARIABLES
low=1
high=100
medium=0

#FINDING MAGIC NUMBER GUESSED BY USER

while [ $low -ne $high ]
do
	medium=$((low+(high-low)/2))
	read -p "Enter 1 if guessed number is less than $medium or Enter 0 if the guessed number is greater than the $medium:" ans

	if [ $medium -eq 1 ]
	then
		if [ $ans -eq 1 ]
		then
				echo $medium
				break
			else
				echo $((medium++))
				break
		fi

	fi

	if [ $ans -eq 1 ]
	then
		high=$medium
	else
		low=$((medium+1))
	fi
done

#PRINTING MAGIC NUMBER
echo The Magic Number is $medium
