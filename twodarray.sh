#!/bin/bash -x #inputting and displaying of two D array
declare -A array
fillarray(){ #function to take the input and fill the array
for((i=0; i<3; i++)) #loops to take the input of the array
do
    for((j=0; j<3; j++))
    do
        read -p 'enter the value' value #reading the elements present in the array
        array[$i,$j]=$value
    done
done
}
displayArray(){ #function to display the array
for((i=0; i<3; i++)) #loops to display the array
do
    for((j=0; j<3; j++))
    do
        echo -e "${array[$i,$j]} \c"
    done
echo
done
}
fillarray
displayArray

