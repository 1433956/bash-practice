#!/bin/bash

movies=("Court" "HIT3" "PUSHPA2" "Thandel")

echo "first movie name is ::${movies[0]}"
echo "secound movie name is ::${movies[1]}"
echo "All movies :: ${movies[@]}"
 timestamp=$(date)
 echo "Script executed at $timestamp"