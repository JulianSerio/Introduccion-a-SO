#!/bin/bash
cantidadArchivos(){
	echo "La cantidad de archivos .doc: ${#arreglo[@]}"
}

verArchivo(){
	nombre=$1
	echo "Nombre del archivo: $nombre"
	for archivo in ${arreglo[@]}; do
		base=$(basename $archivo)
		if [ "$base" == "$nombre" ]; then
			open $archivo
		else
			echo "El archivo no existe"
		fi
	done
}

print(){
	for archivo in ${arreglo[@]}; do 
		echo "$archivo"
	done
}

borrarArchivo(){
	nombre=$1
	echo "nombre a buscar: $nombre"
	for ((i=0; i<${#arreglo[@]}; i++)); do
		base=$(basename "${arreglo[$i]}")
		echo "$base"
		if [ "$base" == "$nombre" ]; then
			echo "El archivo existe!"
			pos=${arreglo[$i]}
			echo "$pos"
			unset arreglo[$i]
			echo "¿Desea eliminar logicamente?"
			read var
			if [ "$var" == "si" ]; then
				echo "El archivo fue eliminado con exito"
				exit 5
			else
				rm $pos
			fi
		else
			echo "Archivo no encontrado"
			exit 10
		fi
	done


}

arreglo=()
archivos=$(find /home/* -name "*.doc" 2>/dev/null)
for archivo in $archivos; do 
	arreglo+=($archivo)
done


borrarArchivo "$@"
exit 0
