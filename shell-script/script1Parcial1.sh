#!/bin/bash
if [ $# -eq 1 ]; then
	dir=$1
	if [ -e $dir ]; then
		echo "El directorio existe"
		for archivo in $dir/*; do
			if [ -w $archivo ]; then
				wr=$((wr+1))
			fi
			if [ -r $archivo ]; then
				re=$((re+1))
			fi
		done
		echo "La cantidad de archivos con permisos ESCRITURA: $wr y LECTURA: $re"
	else
		echo "El directorio NO existe"
		exit 4
	fi
else
	echo "Error de parametros!"
fi
exit 0
