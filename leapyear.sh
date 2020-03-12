#!/bin/bash -x
echo "Type the year that you want to check (4 digits), followed by [ENTER]:" #input the year
read year
if (( ("$year" % 400) == "0" )) || (( ("$year" % 4 == "0") && ("$year" % 100 !="0") )); #check for the condition
then
  echo "$year is a leap year." #display
else
  echo "This is not a leap year."
fi
