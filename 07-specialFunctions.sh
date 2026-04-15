#!/bin/bash
echo "holds list of all arguments passed to the script. :: $@ "
echo "holds list of all arguments passed to the script. :: $# "
echo "holds list of all arguments passed to the script. :: $* "
echo "current scrupt name:: $0 "
echo "PID current script:: $$"
echo "current directory :: $PWD"
echo "current user:: $USER"
sleep 100 &
echo " Process ID (PID) of the most recently executed background:: $!"



