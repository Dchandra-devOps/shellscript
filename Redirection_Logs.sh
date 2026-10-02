#!/bin/bash

USERID=$(id -u)
LOGDIR=/home/ec2-user/shellscript/shell_logs
LOGFILE="$LOGDIR/$0.log"

if [ $USERID -ne 0 ]; then 
 echo "please run the script with rrot access"
 exit 1
fi

VALIDATE() {
if [ $2 -eq 0 ]; then
 echo "$1 installed succesfully" &>> $LOGFILE
else
 echo "$1 failed" &>> $LOGFILE

fi  

}

dnf list installed mysql &>> $LOGFILE

if [ $? -ne 0 ]; then
 echo "Lets install mysql"
 dnf install mysql -y
 VALIDATE mysql $? 
else
 echo "mysql alredy installed" &>> $LOGFILE
fi   

dnf list installed nginx &>> $LOGFILE

if [ $? -ne 0 ]; then
 echo "Lets install mysql"
 dnf install nginx -y &>> $LOGFILE
 VALIDATE nginx $? 
else 
 echo "nginx alredy installed" &>> $LOGFILE
fi





