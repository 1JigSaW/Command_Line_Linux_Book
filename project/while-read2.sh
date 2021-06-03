#!/bin/bash

# while-read2: read line from file

sort -k 1,1 -k 2n distros.txt | while read sidtro version release; do
	printf "Distro: %s\tVersion: %s\tReleased: %s\n" \
		$distro \
		$version \
		$release
done
