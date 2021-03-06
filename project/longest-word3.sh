#!/bin/bash

# longest-word3 : the longer string searching in the file

for i; do
	if [[ -r $i ]]; then
		max_word=
		max_len=
		for j in $(strings $1); do
			len=${#j}
			if (( len > max_len )); then
				max_len=$len
				max_word=$j
			fi
		done
		echo "$i: '$max_word' ($max_len characters)"
	fi
	shift
done
