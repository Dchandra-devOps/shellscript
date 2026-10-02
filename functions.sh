#!/bin/bash

USERID=$(id -u)

if [ $USERID -ne 0 ]; then 
 echo "please run the script with rrot access"
 exit 1
fi

VALIDATE() {
if [ $2 eq 0 ]; then
 echo "$1 installed succesfully"
else
 echo "$1 failed"

fi  

}

dnf list installed mysql

if [ $? -nq 0 ]; then
 echo "Lets install mysql"
 dnf install mysql -y
 VALIDATE mysql $? 
else
 echo "mysql alredy installed"
fi   

dnf list installed nginx

if [ $? -nq 0 ]; then
 echo "Lets install mysql"
 dnf install nginx -y
 VALIDATE nginx $? 
else
 echo "nginx alredy installed"
fi





