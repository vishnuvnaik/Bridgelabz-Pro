#!/bin/bash -x
echo Enter a number #input the value of n
read n
sum=0
for (( i=1;i<=n;i++ ))
do
  sum=$( awk -v a=$sum -v b=$i 'BEGIN { print ( a + 1/b ) } ') #harmonic series computation
done
echo "harmonic number is $sum" #display
