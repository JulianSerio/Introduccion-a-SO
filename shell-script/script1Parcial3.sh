#!/bin/bash

if [ -d /home/julyy/bin ]; then
	echo "El dir existe"
else
	mkdir bin
	echo "El dir NO existia lo creo"
fi


for archivo in /home/julyy/* ; 
do
	if [ -x $archivo ] && [ -f $archivo ]; then
		nombre=$(basename "$archivo")
		echo "Archivo: $nombre"	
		read var
		if [ $var == "s" ]; then
			mv "$archivo" /home/julyy/bin
		fi
	fi
done
exit 0

