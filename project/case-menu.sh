#!/bin/bash

# case-menu: system information output program

clear
echo "
Please Select:
A. Display System Informatio
B. Display Disk Space
C. Display Home Space Utilization
D. Quit
"
read -p "Enter selection [A, B, C or Q] > "

case $REPLY in 
	q|Q)	echo "Program terminated."
		exit
		;;
	a|A)	echo "Hostname: $HOSTNAME"
		uptime
		;;
	b|B)	df -h
		;;
	c|C)	if [[ $(id -u) -eq 0 ]]; then
			echo "Home Space Utilization (All Users)"
			du -sh /home/*
		else
			echo "Home Space Utilization ($USER)"
			du -dh $HOME
		fi
		;;
	*)	echo "Invalid entry" >&2
		exit 1
		;;
esac
