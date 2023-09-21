echo "Ingrese numero 1: "
read var1 
echo "Ingrese numero 2: " 
read var2
res=$((var1 * var2))
echo "Multiplicacion: $res"
res=$((var1 + var2))
echo "Suma: $res"
res=$((var1 - var2))
echo "Resta: $res"
if [ "$var1" -gt "$var2" ]; then 
  echo "El numero mas grande es el $var1"
else
  echo "El numero mas grande es el $var2"
fi

