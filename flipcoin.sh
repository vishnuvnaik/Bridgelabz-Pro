#!/bin/bash -x
echo "welcome"
echo  "Enter = the no of time you want to flip coin : " 
read n
heads=0
tails=0
for((i=0;i<=n;i++)) #loop to generate random numbers and checking the conditons for flipcoin
do
  randomnum=$( shuf -i 0-10 -n 1 ) #random number generation
  if (( randomnum < 5 ))
  then
    let tails++
  else
    let heads++
  fi
done
echo "heads= $heads" #printing of final result
echo "tails= $tails"
hp=$(awk -v a=$heads -v b=$n ' BEGIN { print(a/b *100 ) } ')
tp=$(awk -v a=$tails -v b=$n ' BEGIN { print(a/b *100 ) } ')
echo $hp
echo $tp
