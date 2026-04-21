#!/bin/bash
mkdir -p $LOG_FOLDER
LOG_FOLDER="usr/log/shell-logs"
LOG_FILENAME="$(echo $0 | cut -d "." f1)"
LOG_FILE="$LOG_FOLDER/$LOG_FILENAME.log"

R="/e[31m"
G="/e[32m"
Y="/e[33m"
W="/e[0m"
USERID=$(id -u)

if [ $? -ne 0 ]
then
    echo -e "$R please login user as a root user::$USERID $W" $>>$LOG_FILE
    exit 1
else 
    echo -e "$G loged user as a root user::$USERID $W" | tee -a $LOG_FILE
fi

  

