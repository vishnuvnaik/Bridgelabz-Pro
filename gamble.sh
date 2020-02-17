echo "enter the stake "
read stake
echo "enter  your goal"
read goal
echo "Number of times!!"
read n
win=0
loss=0
while (($stake>0))&&(($goal!=$stake))&&(($n>0))
do
  echo "enter the bet amount"
  read bet
  if (($bet>$stake))
  then
    echo "bet amount is greater than stack"
    continue
  fi
  r=0.$(($RANDOM % 10 ));
  if (($(awk -v x=$r -v y=0.5 'BEGIN {print(x>y)}')))
  then
    echo "you won the bet"
    stake=$((stake + bet))
    win=$((win + 1))
  else
    echo "you lose the bet"
    stake=$((stake - bet))
    loss=$((loss + 1))
  fi
  echo "stake is : $stake"
done
echo "number of wins is $win"
echo "number of loss is $loss"
winp=$(( win /( win + loss )))
lossp=$(( loss/( win + loss )))
echo "win percentage is $((winp*100))"
echo "loss percentage is $((lossp*100))"
