#!/bin/bash

if [ $# -ne 1 ]; then
	echo "Ingrese el nombre de un directorio"
  exit 1
fi

directorio="$1"
cont=0

if [ ! -d "$directorio" ]; then
	echo "El directorio $directorio no existe"
	exit 4
fi

for archivo in "$directorio"/*; do 
	if [ -f "$archivo" ] && [ -r "$archivo" ] && [ -w "$archivo" ]; then
		((cont++))
	fi
done



echo "Cantidad de archivos en el directorio con permisos de W y R: $cont"
