#!/bin/bash



USERID=$(id -u)

if [ $USERID -ne 0 ]
then
   echo "please run as a root user"
   exit 1
else 
   echo "logged as admin, please proceed "
fi
VALIDATE(){
if [ $1 -ne 0 ]
then
   echo "installing $2 in the machine" 

   dnf install $2 -y
else
   echo "$2 is already installed in the machine"
   exit 1
fi
}


dnf list installed $2

VALIDATE $? "$2"