#!/bin/bash -x
echo "enter the number" #input the number
read num
if(( num <31 )) #condition check
then
    for((i=0;i<num;i++)) #loop to print
    do
      echo "2^" $i "="$((2 ** i))
    done
else
   echo "invalid"
fi
