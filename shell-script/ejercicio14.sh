#!/bin/bash
if [ $# -lt 3 ]; then
  echo "Se deben ingresar 3 parametros"
  exit 1
fi

directorio="$1"
opcion="$2"
cadena="$3"

echo "Directorio: $directorio"
echo "Opcion: $opcion"
echo "Cadena: $cadena"

for archivo in "$directorio"/*; do
  nombre_archivo=$(basename "$archivo")
  
  echo "Nombre archivo: $nombre_archivo"
  
  if [ "$opcion" == "-a" ]; then
    nuevo_nombre="${nombre_archivo}${cadena}"
  elif [ $opcion == "-b" ]; then
    nuevo_nombre="${cadena}${nombre_archivo}"
  else
    echo "Opcion no valida"
  fi
  
  echo "Nuevo nombre: $nuevo_nombre"
  
  
  mv $archivo $directorio/$nuevo_nombre
  echo "Archivo renombrado: $archivo -> $directorio/$nuevo_nombre"
done
exit 0
