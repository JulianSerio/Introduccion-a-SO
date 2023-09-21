#!/bin/bash
cantidad=$(find /home -type f -name "*.doc" | wc -l)

varArchivo(){
  local archivo=$1
  if [[ " ${cantidad[*]} " =~ " $archivo " ]]; then
  	cat "$archivo"
  else
  	echo "Archivo no encontrado"
  	return 5
  fi
}

cantidadArchivos(){
	echo "Cantidad de archivos .doc: $cantidad"
}

borrarArchivo(){
	local archivo="$1"
	if [[ " ${cantidad[*]} " =~ " $archivo " ]]; then
		read -p "Deseas eliminar el archivo $archivo logicamente? (si/no)"
		if [ "$respuesta" == "no" ]; then
			rm "$archivo"
		fi
		
		cantidad=("${cantidad[@]/$archivo}")
	else
		echo "Archivo no encontrado"
		return 10
	fi
}

verArchivo "/home/prueba.doc"
cantidadArchivos
borrarArchivo "/home/prueba.doc"
