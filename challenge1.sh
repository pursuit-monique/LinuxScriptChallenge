#!/bin/bash

# 1.  Creating 25 empty files by using touch command
# 2. File name should be name+number combination [0-9]
# 3. Needs to be able to increment based on highest file number found
# 

echo 'This software started'

# Store Username as var
yourName=$USER

# Get highest number file named $yourName[0-9]
highestNumber=$(ls $yourName* 2>/dev/null | sed "s/$yourName//g" | sort -n | tail -n 1) || highestNumber=0
echo $highestNumber


# Count using for loop, with number as index (idx), adding idx to highest num
for idx in {1..25}
    do 

        if [ -z "$highestNumber" ]
            then
            touch "$yourName$(($idx))"
            echo "File $yourName$(($idx)) created"
        else
            touch "$yourName$(($idx+$highestNumber))"
            echo "File $yourName$(($idx+$highestNumber)) created"
        fi
done
