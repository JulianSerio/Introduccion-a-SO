#!/bin/bash
if [ "$#" = 3 ]; then
  case "$3" in
  "+")
    echo "Suma: `expr $1 + $2`" 
    ;;
  "-")
    echo "Resta: `expr $1 - $2`" 
    ;;
  "x")
    echo "Multiplicacion: `expr $1 \* $2`" 
    ;;
  "%")
    echo "Dvision: `expr $1 / $2`" 
    ;;
   *) 
    echo "Operacion invalida"
  esac
   
else
  echo "ERROR: Ingrese parametros!"
  
fi

 
