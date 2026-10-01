#!/bin/bash/

echo "Learning Shellscript"

echo "Shell"

student=chandu
teacher=shiva

echo "$student :Hi Sir GM"
echo "$teacher :Hi $student"

date=$(date)

echo $date

start_date=$(date +%s)

#sleep 10

end_date=$(date +%s)

total_time=$(($end_date-$start_date))

echo "$total_time"


echo "Please enter your name::"

read name

echo "$name"


echo "Please enter your name::"

read -s name

echo "$name"

