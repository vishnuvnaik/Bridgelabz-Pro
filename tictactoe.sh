#!/bin/bash -x
setboard(){ #function to set board
for (( i=0; i<5; i++ )) #loops to design the board
do
  for (( j=0; j<5; j++ ))
  do
     if [[ $(( $i % 2 )) -eq 0 && $(( $j % 2 )) -eq 1 ]]
     then
         ar[$i$j]="|"
     elif [[ $(( $i % 2 )) -eq 0 && $(( $j % 2 )) -eq 0 ]]
     then
         ar[$i$j]="."
     fi
  done
done
}
displayBoard() { #to display the board
for (( i=0; i<5; i++ )) #loops to display the board as two D array
do
  for (( j=0; j<5; j++ ))
  do
     echo -ne ${ar[$i$j]} #print the board
  done
echo
done
}
userPlays() { #function for the users turn
echo "user's turn"
validPosition=0 #to find the position is valid or not
while [ $validPosition -eq 0 ] #loop to input the position and check
do
   read -p 'enter a valid position btw 0-9 ' position 
   markPosition "x" $position #to mark the position where the x is placed
done
((timePlayed++)) #to increment the times played
if [ $timePlayed -gt 4 ] #loop to check for the win of user(x)
then
    checkforWin "x"
else
    comPlays
fi
}
comPlays() { #function for the computers turn
echo "Computer's turn"
validPosition=0 #position to check where to place the "o"
while [ $validPosition -eq 0 ]
do
   position=$((RANDOM%9)) #random number generation to place the o in random place
   markPosition "o" $position #mark the position where the o is placed
done
((timePlayed++))
if [ $timePlayed -gt 4 ] #loop to check the computers(o) win
then
    checkforWin "o"
else
    userPlays
fi
}
markPosition() #function to mark the position of the '.'
{
   case $2 in #case to input the x/o in position
      1 ) xPos=0    yPos=0  ;;
      2 ) xPos=0    yPos=2  ;;
      3 ) xPos=0    yPos=4  ;;
      4 ) xPos=2    yPos=0  ;;
      5 ) xPos=2    yPos=2  ;;
      6 ) xPos=2    yPos=4  ;;
      7 ) xPos=4    yPos=0  ;;
      8 ) xPos=4    yPos=2  ;;
      9 ) xPos=4    yPos=4  ;;
  esac #case ends
if [ ${ar[$xPos$yPos]} == "." ] # .is replaced as x/o
then
    ar[$xPos$yPos]=$1
    displayBoard
    validPosition=1
else [ $1 == "x" ]
    echo "invalid position"
fi
}
checkforWin() { #function to check for the wins
if [ $timePlayed -le 9 ] #condition check wheather the times of play is over or not
then
    if [[ ${ar[00]} == $1 && ${ar[02]} == $1 && ${ar[04]} == $1 ]] #check for the win of x starts
    then
	win=1
    elif [[ ${ar[20]} == $1 && ${ar[22]} == $1 && ${ar[24]} == $1 ]]
    then
        win=1
    elif [[ ${ar[40]} == $1 && ${ar[42]} == $1 && ${ar[44]} == $1 ]]
    then
        win=1
    elif [[ ${ar[00]} == $1 && ${ar[20]} == $1 && ${ar[40]} == $1 ]]
    then
        win=1
    elif [[ ${ar[02]} == $1 && ${ar[22]} == $1 && ${ar[42]} == $1 ]]
    then
        win=1
    elif [[ ${ar[04]} == $1 && ${ar[24]} == $1 && ${ar[44]} == $1 ]]
    then
        win=1
    elif [[ ${ar[00]} == $1 && ${ar[22]} == $1 && ${ar[44]} == $1 ]]
    then
        win=1
    elif [[ ${ar[40]} == $1 && ${ar[22]} == $1 && ${ar[04]} == $1 ]]
    then
        win=1
    else
	win=0
    fi
fi
if [[ $win -eq 1 && $1 == "x" ]] #condition check for user's win(x)
then
    echo "User Win"
elif [[ $win -eq 1 && $1 == "o" ]] #condition check for computer's win(o)
then
    echo "Computer Win"
elif [ $timePlayed -eq 9 ] #condition to check tie match
then
    echo "Match  Tie"
elif [ $1 == "x" ] #play again till the game comes to an end
then
    comPlays #computer's turn
else
    userPlays #user's turn
fi
}
echo " Game starts "
timePlayed=0
setboard
displayBoard
userPlays
