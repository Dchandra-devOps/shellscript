#!bin/bash/

echo "practice makes mens perfect"

#assigning values to vraibles

name="chandu"
echo "Hi $name"

#passing values to varaibles from command line
name=$person_name

echo "Hi $name, how are you $name"

#executing command with in the sheel and get the value
date=$(date)

echo "what is todays date $date"


#hideing usename and password

echo "Enter your username:"

read username

echo "$name"



echo "Enter your username:"

read -s username

echo "$name"

