#!/bin/bash -x

# trouble: script to demonstrate common types of errors

echo "number=$number" # debugging
set -x # enable tracing
number=1
if [ $number = 1 ]; then
	echo "Number is equal to 1"
else
	echo "Number is not equal to 1"
fi
set +x # unenable tracing
