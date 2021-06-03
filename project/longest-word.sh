#!/bin/bash

# longest-word : searching max length string in the file

while [[ -n $1 ]]; do
	if [[ -r $1 ]]; then
		max_word=
		max_len=0
		for i in $(string $1); do
			len=$(echo $1 | wc -c)
			if (( len > max_len )); then
				max_len=$len
				max_word=$1
			fi
		done
		echo "$1: '$max_word' ($max_len characters)"
	fi
	shift
done
