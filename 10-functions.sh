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

if [ $1 -eq 0 ]
then 
   echo "installing $2 is sucessful"
else
   echo "installing $2 is failed"
   exit 1
fi
}

dnf list installed $2 

if [ $? -ne 0 ]
then
   echo "installing mysql in the machine" 

   dnf install $2 -y
   VALIDATE $? "$2"
else
   echo "mysql is already installed in the machine" 
   
fi
