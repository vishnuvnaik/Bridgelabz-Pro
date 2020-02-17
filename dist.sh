echo "enter the value of x coordinate : "
read x
echo "enter the value of y coordinate : "
read y
distn=$(awk -v a=$x -v b=$y ' BEGIN { print(sqrt(a*a + b*b)) } ')
echo "distance = $distn"
