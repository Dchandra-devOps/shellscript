#!/bin/bash/

USERID=$(id -u)
LOGDIR=/home/ec2-user/shellscript/shell_logs
LOGFILE="$LOGDIR/$0.log"
TIMESTAMP=$(date "+%Y-%m-%d %H:%M:%S")

#check root access or not 
if [ $USERID -ne 0 ]; then 
 echo "please run the script with rrot access"
 exit 1
fi

# first arg -> what are you trying to install
# second arg -> exit code

VALIDATE() {
if [ $2 -eq 0 ]; then
 echo "$1 installed succesfully" | tee -a $LOGFILE
else
 echo "$1 failed" | tee -a $LOGFILE

fi  

}

for package in $@
do
  echo "$TIMESTAMP installing  $package"
  dnf list installed module $package      &>> $LOGFILE
  if [ $? ne- 0 ] then;
    dnf install $package -y               &>> $LOGFILE
    VALIDATE "Installing $package" $?
  else
    echo "$package alreday installed"     
  fi   

done