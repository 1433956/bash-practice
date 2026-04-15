#!/bin/bash

#check given is less than 100 

number1=$1

if [ $number1 -lt 100 ]
then 
    echo "$number1 is less than 100"
else
    echo "$number1 is not equal  than 100"
fi