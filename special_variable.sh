#!/bin/bash 

#special varaibels


echo "Learning $1,$2,$3"

echo "All varaibels passed to script $@"
echo "first variables $1"

echo "Number of variables passed to script $#"

echo "Prient name of script or filename $0"

echo "Prient status code of previous line of code  $?"

echo "print current working directory $PWD"

echo "who is runnig this script $USER"

echo "home directory $HOME"

echo "PID of the current script $$"
sleep 5 &

echo "PID of the background command running just now $!"

wait $!


echo "line number $LINENO"

echo "script executed in seconds $SECONDS"

echo "random number $RANDOM"




