#!/bin/bash
for archivo in *; do 
  if [ -f "$archivo" ]; then
    nuevo_nombre=$(echo "$archivo" | tr '[:upper:][:lower:]' '[:lower:][:upper:]'| sed 's/[aA]//g')
    echo "Nombre actual $archivo"
    echo "Nombre nuevo $nuevo_nombre"
    
    read ok
    if [ "$ok" == "s" ]; then 
      mv "$archivo" "$nuevo_nombre"
    fi
  fi 
done
