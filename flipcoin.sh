echo "welcome"
echo  "Enter = the no of time you want to flip coin : "
read n
heads=0
tails=0
for((i=0;i<=n;i++))
do
  randomnum=$( shuf -i 0-10 -n 1 )
  if (( randomnum < 5 ))
  then
    let tails++
  else
    let heads++
  fi
done
echo "heads= $heads"
echo "tails= $tails"
hp=$(awk -v a=$heads -v b=$n ' BEGIN { print(a/b *100 ) } ')
tp=$(awk -v a=$tails -v b=$n ' BEGIN { print(a/b *100 ) } ')
echo $hp
echo $tp
