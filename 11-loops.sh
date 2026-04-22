#!/bin/bash
LOG_FOLDER="var/log/shell-logs"
mkdir -p $LOG_FOLDER
LOG_FILENAME=$(echo $0 |cut -d "." -f1)
LOG_FILE="$LOG_FOLDER/$LOG_FILENAME.log"

R="\e[31m"
G="\e[32m"
Y="\e[33m"
W="\e[0m"
USERID=$(id -u)
#PACKAGES=("mysql" "nginx" "nodejs")
if [ $USERID -ne 0 ]
then
    echo -e "$R please login user as a root user::$USERID $W"  &>> $LOG_FILE
    exit 1
else 
    echo -e "$G loged user as a root user::$USERID $W" | tee -a $LOG_FILE
fi

VALIDATE(){
    if [ $1 -ne 0 ]
    then
        echo -e "$R $2 is ...failure $W" | tee -a $LOG_FILE
        exit 1
    else
        echo -e "$G $2 is ...Success $W" | tee -a $LOG_FILE
    fi

}

#check PACKAGES is installed or not   if not install package 
 for package in ${PACKAGES[$@]}
 do 
   dnf list installed  $package
   if [ $? -eq 0 ]
   then 
      echo -e "$G installed in the machine $W"  &>> $LOG_FILE
   else
      echo -e  "$R Not  installed in the machine installing the $2 $W"  &>> $LOG_FILE
      dnf install $package -y &>> $LOG_FILE
      VALIDATE $? "$package" 
    fi
    
 done 

