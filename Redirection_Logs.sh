#!/bin/bash

# tee this command push the logs into log directory and also print the logs in terminal 

USERID=$(id -u)
LOGDIR=/home/ec2-user/shellscript/shell_logs
LOGFILE="$LOGDIR/$0.log"

if [ $USERID -ne 0 ]; then 
 echo "please run the script with rrot access"
 exit 1
fi

VALIDATE() {
if [ $2 -eq 0 ]; then
 echo "$1 installed succesfully" | tee -a $LOGFILE
else
 echo "$1 failed" | tee -a $LOGFILE

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





