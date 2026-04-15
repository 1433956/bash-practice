#!/bin/bash



USERID=$(id -u)

if [ $USERID -ne 0 ]
then
   echo "please run as a root user"
   exit 1
else 
   echo "logged as admin, please proceed "
fi

dnf list installed mysql 

if [ $? -ne 0 ]
then
   echo "installing mysql in the machine" 

   dnf install mysql -y
else
   echo "mysql is already installed in the machine"
   exit 1
fi
