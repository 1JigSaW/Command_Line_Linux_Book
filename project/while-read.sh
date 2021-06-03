#!/bin/bash

# while-read: read line from file

while read distro version release; do
	printf "Distro: %s\tVersion: %s\tRealised: %s\n" \
		$distro \
		$version \
		$release
done < distros.txt
