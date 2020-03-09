echo "enter size "
read n
echo "enter the elements of array"
for (( i=0; i< $n;i++))
do
read nos[$i]
echo " array in orginal order "
for (( i=0; i<$n; i++ ))
do
echo ${nos[$i]}
done
for ((i = 0; i<n;i++))
do
for (( j=1; j<n-i-1;j++))
do
if ((${nos[$i]} > ${nos[$((j+1))]}))
then
temp = ${nos[$j]}
arr[$j] = ${nos[$((j+1))]}
arr[$((j+1))] = $temp
fi
done
done
echo "sorted"
for (( i =0; i< $n;i++))
do
echo" ${nos[$i]}"
done

