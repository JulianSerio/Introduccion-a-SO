#!/bin/bash

push (){
  arg=$1
  pila+=($1)
}

length(){
  longitud="${#pila[@]}"
}

pop (){
  unset pila[length-1]
}

print() {
  for elemento in "${pila[@]}"; do 
   echo "$elemento"
  done
}

#Creo pila
pila=();

#Agrego elementos
push 23
push 45
push 34
push 51
push 10
push 27
push 1
push 8
push 95
push 2

print
echo " "

pop
pop
pop

longitud="${#pila[@]}"
echo "Longitud: $longitud"
echo " "

print

exit 0
