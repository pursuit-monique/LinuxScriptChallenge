#!/bin/bash

read -p 'Pick minimum number: ' minimum
read -p 'Pick maximum number: ' maximum

is_true=false

if (( $minimum >= $maximum ))
then
	is_true=true
fi 

while  (( $is_true == true ))
do
	if (( $minimum >= $maximum ))
		then
		is_true=true
		echo "Sorry,  you have input invalid numbers"
		read -p 'Pick minimum number: ' minimum
		read -p 'Pick maximum number: ' maximum
		continue
	else
		is_true=false
		break
	fi

done

number=$(( minimum + RANDOM % maximum ))
echo "(DEBUG) Random number generated: $number, Maximum: $maximum Minimum: $minimum"

userguess=-1

while [[ "$number" != "$userguess" ]]
do
	read -p "Pick a number $minimum - $maximum : "  userguess
	if [[ "$number" == "$userguess" ]]
	 then
		echo "You win, the correct number was $number"
		break	
	else
		echo "Try again, $USER!"
		continue	
	fi
break
done

