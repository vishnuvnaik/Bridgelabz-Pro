#!/bin/bash -x
echo "*** Converting between the different temperature scales ***" #inputting the choice ctof to ftoc or vice versa  
echo "1. Convert Celsius temperature into Fahrenheit"
echo "2. Convert Fahrenheit temperatures into Celsius"
echo -n "Select your choice (1-2) : "
read choice
  
if [ $choice -eq 1 ]   #condition for choice 1 c to f 
then
 echo -n "Enter temperature (C) : "
 read tc
 tf=$(echo "scale=2;((9/5) * $tc) + 32" |bc)
 echo "$tc C = $tf F"
elif [ $choice -eq 2 ] #condition for choice 2 f to c 
then
 echo -n "Enter temperature (F) : "
 read tf
 tc=$(echo "scale=2;(5/9)*($tf-32)"|bc)
 echo "$tf = $tc"
else              #invalid
 echo "Please select 1 or 2 only"
 exit 1
fi
