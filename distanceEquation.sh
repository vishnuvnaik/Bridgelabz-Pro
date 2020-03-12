#!bin/bash -x
echo "enter the value of x coordinate : " #inputting the value of both the coordinates
read x
echo "enter the value of y coordinate : "
read y
distn=$(awk -v a=$x -v b=$y ' BEGIN { print(sqrt(a*a + b*b)) } ') #calculating the distance equation
echo "distance = $distn" #displaying of final value
