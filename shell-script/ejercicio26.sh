#!/bin/bash
if [ $# -eq 0 ]; then
  echo "Numero de parametros menor a 1"
  exit 1
fi

inexistentes=0
#Itero sobre posiciones impares
for ((i = 1; i <= $#; i += 2)); do 
  ruta="${!i}"
  if [ -e "$ruta" ]; then
  	#Verifico la ruta
  	if [ -f "$ruta" ]; then
  		echo "$ruta es un archivo"
  	elif [ -d "$ruta" ]; then
  		echo "$ruta es un directorio"  
    else
    	echo "Existe pero no es ni un archivo ni un directorio"
    fi
	else
		echo "$ruta no existe en el sistema"
		((inexistentes++))
	fi
done
if [ "$inexistentes" -eq 0 ]; then
	echo "No se encontraron archivos o directorios inexistentes"
else
	echo "Se encontraron $inexistentes archivos o direcorios inexistentes"
fi
exit 0
