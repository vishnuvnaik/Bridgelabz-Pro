echo "enter the number"
read num
if(( num <31 ))
then
    for((i=0;i<num;i++))
    do
      echo "2^" $i "="$((2 ** i))
    done
else
   echo "invalid"
fi
