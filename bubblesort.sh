#!/bin/bash -x
echo "enter size "
read n
echo "enter the elements of array" 
for (( i=0; i< $n;i++)) #loop to enter the elements of array
do
  read nos[$i] #reading the elements of array
  echo " array in orginal order "
  for (( i=0; i<$n; i++ )) #loop to display the array
  do
    echo ${nos[$i]}
  done
for ((i = 0; i<n;i++)) #sorting of array 
do
  for (( j=1; j<n-i-1;j++))
  do
    if ((${nos[$i]} > ${nos[$((j+1))]})) #checking for the condition
    then
    temp = ${nos[$j]} #swapping 
    arr[$j] = ${nos[$((j+1))]}  
    arr[$((j+1))] = $temp
    fi
   done
done
echo "sorted"
for (( i =0; i< $n;i++)) #loop to display the sorted array
do
  echo" ${nos[$i]}" #display of the sorted array
done

