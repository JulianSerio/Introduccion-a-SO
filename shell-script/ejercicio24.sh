array1=(7 4 6 8 2)
array2=(3 8 5 9 4)

for ((i=0;i<5;i++)) do
  num1=array1[$i]
  num2=array2[$i]
  echo "La suma de los elementos de la posicion $i de los vectores es: $((num1 + num2))"
done
