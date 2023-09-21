#!/bin/bash

inicializar(){
	arreglo=()
}

agregar_elem(){
  arg=$1
  arreglo+=($1)
}

eliminar_elem(){
	arg=$1
	unset arreglo[$1]
}

longitud(){
	long="${#arreglo[@]}"
}

imprimir() {
  for elemento in "${pila[@]}"; do 
   echo "$elemento"
  done
}

inicializar_Con_Valores(){
  tamano=$1
  valor=$2
  for ((i = 0; i < tamano; i++)); do
  	arreglo[$i]=$valor
  done
}


