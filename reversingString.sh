#!/bin/bash -x
read -p "Enter the Original String:" inputString

#FINDING LENGTH OF STRING
length=${#inputString}
i=$((length-1))

while [ $i -ge 0 ]
do
	reverse=$reverse${inputString:$i:1}
	i=$((i-1))
done

echo $reverse
