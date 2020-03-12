#!/bin/bash -x
read -p 'enter the temperature: ' t #reading the temperature and velocity as inputs
read -p 'enter the velocity : ' v
if (( $t > 50 )) #checking condition for temperature
then
  let "t=50"
fi
if (( $v > 120 )) #checking condition for velocity
then
  let "v=120"
elif (( $v < 3 ))
then
  let "v=3"
fi
w=$(awk -v a=$t -v b=$v 'BEGIN{ printf ("%.0f\n" , (35.74+0.6215*a+((0.4275*a-35.75)*b**0.16))) }') #computiing the windchill equation
echo "the windchill index for given wind temperature $t F and velocity $v mph is : $w F" #printing the results
