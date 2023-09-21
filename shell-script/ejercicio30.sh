#!/bin/bash

destino="bin"
if [ ! -d "$destino" ]; then
	mkdir -p "$destino"
fi

for archivo in *; do
	if [ -x "$archivo" ] && [ -f "$archivo" ]; then
		mv "$archivo" "$destino"
		echo "Moviendo $archivo a $destino"
	fi
done
