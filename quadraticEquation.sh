#!/bin/bash -x
echo "enter value for a: " #entering the value of a,b and c 
read a
echo "enter value for b: "
read b
echo "enter value for c: "
read c
root1=0
root2=0
delta=$(awk -v x=$a -v y=$b -v z=$c 'BEGIN { print (y*y-4*x*z ) } ') #equation for determinant
if (( $(awk -v var=$delta 'BEGIN { print ( delta > 0 ) } ') )) #condition checking
then
  root1=$( awk -v det=$delta -v x=$a -v y=$b 'BEGIN {print ((-y + (det**0.5))/(2*x)) }') #computation of roots 1 and 2
  root2=$( awk -v det=$delta -v x=$a -v y=$b 'BEGIN {print ((-y - (det**0.5))/(2*x)) }'  )
  echo root1 and root2 are $root1 , $root2 #printing of roots
elif (( $delta == 0 ))
then
  root1=$(awk -v x=$a -v y=$b 'BEGIN {print(-y/(2*x)) } ') 
  echo $root1
else
  actual=$(awk -v x=$a -v y=$b 'BEGIN { print (-y/(2*x) ) } '  ) #imaginary root computation and printing 
  imaginary=$(awk -v det=$delta -v x=$a 'BEGIN{print ((-det/(2*x))**0.5)}')
  echo "( $actual ,  $imaginary )"
fi
