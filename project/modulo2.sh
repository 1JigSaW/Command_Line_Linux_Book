#!/bin/bash

# modulo : demonstration of the modulo operator

for ((i = 0; i <= 20; i =  ++1)); do
	remainder=$(( i%5 ))
	if (( remainder == 0 )); then
		printf "<%d> " $i
	else
		printf "%d " $i
	fi
done
printf "\n"

