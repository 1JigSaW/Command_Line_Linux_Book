#!/bin/bash

# posit-param2: script to output all arguments

count=1

while [[ $# -gt 0 ]]; do
	echo "Argument $count = $1"
	count=$((count + 1))
	shift
done
