echo "Enter any key to start "
read n
start=$( date +%s)
echo "start time is $start"
echo "enter any key stop stopwatch"
read e
stop=$( date +%s)
elapsed=$(($stop - $start))
echo "elapsed time is $elapsed"
