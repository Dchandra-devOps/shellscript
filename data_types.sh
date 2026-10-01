#!/bin/bash/

NUM1=10
NUM2=50

SUM=$(($NUM1+$NUM2))

echo "Total: $SUM"

#Arry

MOVIES=("erumudi","mandada","paradise")

echo "All movies recent: ${MOVIES[@]}"

echo "Good Movie: ${MOVIES[1]}"

