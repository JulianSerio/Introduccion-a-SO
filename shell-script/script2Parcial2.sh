#!/bin/bash

cont=0
while true; do 
	if pgrep -x "systemd" > /dev/null ; then
		((cont++))
		if [ $cont -eq 10 ]; then
			echo "El proceso apache esta corriendo"
			exit 50 
		fi
	fi
	sleep 5
done
