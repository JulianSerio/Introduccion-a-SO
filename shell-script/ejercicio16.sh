#!/bin/bash

if [ $# -eq 1 ]; then
  extesion=$1
  echo "$extesion"
  echo "Nombre de usuario | Cantidad de archivos con .$extension" 

  for user in /home/*; do 
    echo "$extesion"
    nombre_usuario=$(basename "$user")
    cantidad_archivos=$(find "$user" -type f -name "*.$extension" | wc -l)
    echo "$extesion"
    echo "$nombre_usuario | $cantidad_archivos" >> reporte.txt
  done
  exit 0
else
  echo "Cantidad de parametros incorrectos"
  exit 1
fi


