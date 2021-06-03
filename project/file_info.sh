#!/bin/bash

# file_info: simple program to getting information about file

PROGNAME=$(basename $0)
file_info() {
	if [[ -e $1 ]]; then
		echo -e "\nFile Type:"
		file $1
		echo-e "\nFile Statis:"
		stat $1
	else
		echo "$PROGNAME: usage: $PROGNAME file" >&2
		exit 1
	fi
}
