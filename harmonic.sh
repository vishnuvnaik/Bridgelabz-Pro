echo Enter a number
read n
sum=0
for (( i=1;i<=n;i++ ))
do
  sum=$( awk -v a=$sum -v b=$i 'BEGIN { print ( a + 1/b ) } ')

done
echo "harmonic number is $sum"
