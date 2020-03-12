#!/bin/bash -x
echo "Enter any key to start "
read n
start=$( date +%s) #taking unix time using %s and starting the stopwatch
echo "start time is $start"
echo "enter any key stop stopwatch"
read e
stop=$( date +%s) #again taking unix time and stopping the stopwatch 
elapsed=$(($stop - $start))
echo "elapsed time is $elapsed"
